---
layout: handbook-page-toc
title: "RStudio Guide"
description: "RStudio Guide"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .toc-list-icons .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

---

## What is R?

Similar to [Python](https://www.python.org/), [R](https://cran.r-project.org/)  is an open-source statistical software that is used to clean and analyze data. It is popular within the data science community and has many packages that make statistical modeling easier for statisticians and data scientists. [Here](https://www.dataquest.io/blog/three-mighty-good-reasons-to-learn-r-for-data-science/) is an idea of why it might be worth considering learning R.

To download R, go to the [CRAN webiste](https://cran.r-project.org/) and download the version of R for your system. 

## What is RStudio?

[RStudio](https://www.rstudio.com/) is an integrated development environment (IDE) for R that is availble in both open source and commercial editions. RStudio is also the group responsible for many R resources and package development. Take a look at the resources page on the RStudio website for more information, but below are just a couple of useful resources from RStudio.

- [Books](https://www.rstudio.com/resources/books/)
- [Tidyverse Blog](https://www.tidyverse.org/blog/)
- [RStudio Blog](https://www.rstudio.com/blog/)
- [RMarkdown Documents](https://rmarkdown.rstudio.com/)

To download RStudio, go to the [RStudio webiste](https://www.rstudio.com/products/rstudio/download/) and download the version of RStudio for your system.

**NOTE** _R and RStudio may be used interchangeably throughout this page._

## Download and Configure Snowflake Driver (MacOS)

RStudio can connect to various database for production development of models or ad hoc analysis. If you want to connect to Snowflake below are some steps to accomplish this.

1. First you will need install unixODBC using [homebrew](https://brew.sh/). If you have not already installed homebrew on your machine, the website will give you the commands to do so. Once homebrew is installed, unixODBC can be installed using the command:  `brew install unixodbc` 
    - Alternativeley, iODBC can be used, but this documentation uses unixODBC as the chosen driver manager.

1. This will create two configuration files, **odbcinst.ini** and **odbc.ini**.
    - **odbcinst.ini** holds the ODBC drivers information.
    - **odbc.ini** holds information required to connect to databases, such as host, username, etc. This is where you set up your DSN for your system.
    - to see the location of these configuration files, run the command `odbcinst -j`. 

1. Download the latest driver for Snowflake [here](https://sfc-repo.snowflakecomputing.com/odbc/mac64/index.html). You can then follow [these instructions](https://docs.snowflake.com/en/user-guide/odbc-mac.html) to complete the configuration of the driver on your machine. 
    - As many parameters as desired can be entered in the configuration files, such as role, database, warehouse, username, etc. However, these can also be specified in RStudio. Is you choose to set up the configuration files with these details, it may be necessary to set up a DSN for every database/schema used in Snowflake.
    - Below are examples of how to configure the **odbc.ini** and **odbcinst.ini** files in the user file location.

**odbcinst.ini** (location of file based on output from the `odbcinst -j` command above)
```
[Snowflake]
Driver      = /opt/snowflake/snowflakeodbc/lib/universal/libSnowflake.dylib
```

**odbc.ini** (location of file based on output from the `odbcinst -j` command above)
```
[ODBC Data Sources]
SnowflakeDSII = Snowflake

[SnowflakeDSII]
Server = gitlab.snowflakecomputing.com
Port = 
UID = 
Schema = 
Warehouse = 
Driver = /opt/snowflake/snowflakeodbc/lib/universal/libSnowflake.dylib
Description = Snowflake DSII
Locale = en-US
Tracing = 0
Authenticator = gitlab.okta.com
```

[This video](https://www.youtube.com/watch?v=d0AkKsQsIZ0&list=PLy4OcwImJzBIX77cmNYiXIJ3tBhpNSUKI&index=5) shows the basic steps to connect a tool (it covers Excel) to Snowflake via ODBC.

## Connecting to Snowflake in RStudio

The next step is to connect RStudio to Snowflake using the driver configurations you've just set up. This can be accomplished by using the `DBI`,`tidyverse`, and `odbc` packages in R. For a general overview on how to connect to databases in RStudio, please refer to [this website](https://db.rstudio.com/) for detailed information. 


This is an example of the code that can be used to connect to Snowflake in R.

```
con <- DBI::dbConnect(odbc::odbc(),
  driver = "Snowflake",
  uid = rstudioapi::askForPassword("Database UserID"),
  role = [your user role],
  warehouse = [warehouse you wish to connect to],
  pwd = rstudioapi::askForPassword("Database password"),
  Authenticator = "externalbrowser",
  database = [database you wish to connect to],
  schema = [schema you wish to connect to],
  server = "gitlab.snowflakecomputing.com"
)
```
Some details regarding the above code:

1. [**DBI**](https://dbi.r-dbi.org/) is a package that helps connect R to various databases. Above, we are using the `dbConnect()` function to pass our database parameters. 
1. `odbc::odbc()` tells the function you are going to use an ODBC driver for this connection.
1. The `rstudioapi::askForPassword("")` function prompts the user to enter their UID and/or their PWD so it is not stored in their script.
1. `driver = "Snowflake"` is specific to the odbcinst.ini file set up above. This specifies which driver will be used to connection.
1. `server = "gitlab.snowflakecomputing.com` is specific to the snowflake instance being accessed.

### OKTA Authenticator

Since OKTA or other authenticators are often used to connect to Snowflake, we have reference **`Authenticator`** several times in the directions above. The first is in the **odbc.ini** file, specifying the authenticator used here at GitLab (OKTA). It is then referenced in the parameters used with `DBI::dbConnect()` in the line `Authenticator = "externalbrowser"`. 

The "externalbrowser" lets `dbConnect()` know it should reference the url specified in the configuration file to login to Snowflake. The password that is entered during the `rstudioapi::askForPassword()` prompt should be the users OKTA password. 

Once you've completed the steps above and try running the code, you should be taken to a webpage to complete login. The console in R should display the following text before it takes you to the webpage.

`Initiating login request with your identity provider. A browser window should have opened for you to complete the login. If you can't see it, check existing browser windows, or your OS settings. Press CTRL+C to abort and try again...`

**NOTE:** You will have to stay on the webpage until it indicates your identity was confirmed and you were connected to Snowflake. 

## dbplyr

Last, the [**dbplyr**](https://dbplyr.tidyverse.org/) package can be used to interact with databases using the tidyverse language. If you're familiar with [tidyverse](https://dbplyr.tidyverse.org/) already, you may find this package especially helpful.

## How to Use Git with RStudio

### Objectives
1. Set up and install Git
2. Set up Git in RStudio
3. Clone an existing project from GitLab

### Part 1: Installation and Setup
- Download and install [R](https://cloud.r-project.org/) (if not already installed).
- Download and install [RStudio Desktop](https://www.rstudio.com/products/rstudio/#Desktop) (if not already installed).
- Install [Homebrew](https://brew.sh/) (if not already installed).
- Install Git
    - Once Homebrew is installed, open your terminal (Command+Space Bar on Mac to open search bar, and search "Terminal") 
    - Run the command `brew install git` in your terminal
    - Alternatively, Git can be downloaded [HERE](https://git-scm.com/downloads). Make note of the path you install it to if you use this method.
- You will also need to have your GitLab account set up and access to the project you want to clone

### Part 2: Setting Up Git in RStudio
- Open RStudio and go to **Tools** > **Global Options** > **Git/SVN**
- Check the box labeled **Enable version control interface for RStudio project**
- Set the path to the Git executable that you just installed.
    - If you don't know where Git is installed, access your Terminal and enter command `which git` and hit the **return** key
    - The path should be something similar to `/usr/bin/git`. (Note: if navigating through Finder, hidden files can be viewed by pressing `Command` + `Shift` + `.`)
- Create an SSH key by following the instructions under the [Generate an SSH Key Pair](https://docs.gitlab.com/ee/user/ssh.html) section. 
    - ED25519 is recommended
    - Once complete, add the private key path to the **SSH RSA Key** field
- Configure Git by setting your **GitLab user name** and **GitLab email** in RStudio
    - To open the Git prompt go to **Tools** > **Shell** and enter the following:
        - `git config --global user.name 'yourGitHubUsername'`
        - `git config --global user.email ‘name@provider.com'`
- Restart RStudio

### Part 3: Create an RStudio Project with Git
- To create a new project based on a remote Git repository:
    - Select **File** > **New Project** > **Version Control**
    - Choose **Git**, then provide the repository URL:
        - Access the GitLab project you want to clone
        - Select the **Clone** drop-down button at the top right
        - Copy the URL for **Clone with HTTPS**
        - Paste this link into the **Repository URL** section in RStudio
        - Select **Create New Project**
- The GitLab Project should now be visible in R Studio
- [Source](https://www.geo.uzh.ch/microsite/reproducible_research/post/rr-rstudio-git/) for Walkthrough Instructions


## How to Connect RStudio and Google Sheets

Google Sheets and R have the ability to interact via the `googlesheets4` and `googledrive` packages in R. 

1. Installation
2. Reading Existing Google Sheets
3. Writing to Google Sheets


### Part 1: Installation 

- Run the following code in R to install the necessary packages in RStudio
- `pkg <- c("googlesheets4", "googledrive")` <br> 
`invisible(lapply(pkg, function(x) if (x %in% rownames(installed.packages())==F) install.packages(x)))` <br>
`invisible(lapply(pkg, library, character.only = TRUE))` <br>
`rm(pkg)` <br>

### Part 2: Reading Existing Google Sheets

- The `read_sheet()` function will allow you to read an existing spreadsheet
    - Run the `read_sheet()` command in R pointing to the Spreadsheet URL you want to view 
    - URL example: `googlesheets4::read_sheet("https://docs.google.com/spreadsheets/...")` <br>
- When you first try to access a spreadsheet you will be prompted to enter your account information
    - Enter `Yes` in RStudio when asked "Is it Ok to cache OAuth access credentials in the folder between R Sessions"
    - You will then be prompted to log into your Google Account in the browser
    - Check the box to allow the Tidyverse API Packages to access Google Sheets spreadsheets
    - A new window will open saying authentication is complete. Close the browser window.
    - rerun the `read_sheet()` command again to confirm you can see output in R
    
### Part 3: Writing to Google Sheets

Below are a list of functions that can be used to write data into a Google Sheet with examples.

- **gs4_create()** can create a new spreadsheet and optionally populate initial data
    - example: `(ss <- gs4_create("fluffy-bunny", sheets = list(flowers = head(iris))))`
- **sheet_write()** (over)writes a whole data frame into a tab within a Google Sheet.
    - example: `head(mtcars) %>%` <br> 
  `sheet_write(ss, sheet = "autos")`
- **range_write()** writes/overwrites a data frame into the same range of cells in a Google Sheet. Target sheet must already exist.
    - example: `df <- dataframe` <br>
    `ss <- "https://docs.google.com/spreadsheets/..."` <br>
    `googlesheets4::range_write(ss = ss,` <br>
    `data = df,` <br>
    `sheet = "tabname")` <br>
- **range_clear()** can be used to clear data from an existing spreadsheet tab
    - example: `df <- dataframe` <br>
    `ss <- "https://docs.google.com/spreadsheets/..."` <br>
    `googlesheets4::range_clear(ss = ss,` <br>
    `sheet = "tabname"` <br>
    `range = "tabname!A2:ZZ1000000")`
- **sheet_append()** can be used to add rows to an existing tab. NOTE: this function will exclude column headers as a row in the target sheet.
    - example: `df <- dataframe` <br>
    `ss <- "https://docs.google.com/spreadsheets/..."` <br>
    `googlesheets4:sheet_append(` <br>
    `ss = ss,` <br>
    `data = df,` <br>
    `sheet = "tabname")` <br>
    
