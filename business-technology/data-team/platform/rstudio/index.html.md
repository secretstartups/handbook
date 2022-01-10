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
