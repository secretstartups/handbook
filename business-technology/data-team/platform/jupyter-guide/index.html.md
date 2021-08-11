---
layout: handbook-page-toc
title: "Jupyter Guide"
description: "Guidance on interacting with SnowFlake internally using JupyterLab"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .toc-list-icons .hidden-md .hidden-lg}

---
### Features 
- Common python DS/ML libraries (pandas, scikit-learn, sci-py, etc.)
- Natively connected to Snowflake using your dbt credentials. No login required!
- Git functionality: push and pull to Gitlab repos natively within JupyterLab ([requires ssh credentials](https://docs.gitlab.com/ee/ssh/index.html))
- Run any python file or notebook on your computer or in a Gitlab repo; the files do not have to be in the docker container
- Need a feature you use but don't see? Let us know and we can add it!

### Getting Started 
You have multiple options when setting up jupyter via the data-science repo. Choose from one of the following:

#### Jupyter-docker (To be deprecated)

- **Intended for use with the analyst image hosted here: https://registry.gitlab.com/gitlab-data/data-image/analyst-image**

If you are setting this repo up for the first time please use one of the other setup instructions, docker uses an authentication method which will be removed.

1. Make sure you have setup a `{User}/.dbt/profiles.yml` file which **does** include your password, can use the example provide [here](https://gitlab.com/gitlab-data/analytics/-/blob/master/admin/sample_profiles.yml) as a starting point. 
2. Install Docker
3. Clone the repo to your local machine `git clone git@gitlab.com:gitlab-data/data-science.git`
4. Run `cd data-science`
5. Ensure docker is installed
6. Run `make jupyter` from the root of the directory. This will set up a jupyter-lab instance within docker 
7. To connect to jupyter go to your web browser and copy paste the url and token found in terminal once the docker image creates. It should look something like `http://127.0.0.1:8888/lab?token=5c7f7da79f4a0968501f087f3c79ee4dd8bd7a63e0f088a8`. The token will change each time you spin up the docker container.
8. Run through the notebook in the repo at /data-science/notebooks/templates/auth_example.ipynb to confirm that you have configured everything successfully. If you get an error then likely Snowflake is not properly configured on your machine. Please refer to the Snowflake and dbt sections of the [Data Onboarding Issue](https://gitlab.com/gitlab-data/analytics/-/blob/master/.gitlab/issue_templates/Data%20Onboarding.md). It is likely that your .dbt/profiles.yml is not setup correctly.

#### Jupyter-local-conda (Full install) - Recommended

- **This install includes all libraries defined by the Pipfile, along with a complete install for Conda & supporting libraries.**

1. This method requires that you have anaconda installed on your machine and that it is the default python instance. If unsure, type `which python` into terminal and it should show `/Users/{usser}/anaconda3/bin/python`. If not, install anaconda
1. Make sure you have setup a `{User}/.dbt/profiles.yml` file which **does not** include your password, can use the example provide [here](https://gitlab.com/gitlab-data/analytics/-/blob/master/admin/sample_profiles.yml) as a starting point (but make sure to remove or exclude the password field)
1. Clone the repo to your local machine `git clone git@gitlab.com:gitlab-data/data-science.git`
1. Run `cd data-science`
1. Run `make setup-jupyter-local`
1. Run `make jupyter-local`
1. Make sure that Google Chrome is your default browser (go to "System Preferences", click "General" and choose Google Chrome from dropdown menu in section "Default web browser"). To connect to jupyter go to your web browser and copy paste the url and token found in terminal once the docker image creates. It should look something like `http://127.0.0.1:8888/lab?token=5c7f7da79f4a0968501f087f3c79ee4dd8bd7a63e0f088a8`. The token will change each time you spin up the docker container.
1. Run through the notebook in the repo at /data-science/templates/auth_example.ipynb to confirm that you have configured everything successfully. If you get an error then likely Snowflake is not properly configured on your machine. Please refer to the Snowflake and dbt sections of the [Data Onboarding Issue](https://gitlab.com/gitlab-data/analytics/-/blob/master/.gitlab/issue_templates/Data%20Onboarding.md). It is likely that your .dbt/profiles.yml is not setup correctly.


#### Jupyter-local-no-conda (Lightweight install)

- **This install only includes the libraries defined by the Pipfile, and should be used if you want to setup your own environment**

1. Make sure you have setup a `{User}/.dbt/profiles.yml` file which **does not** include your password, can use the example provide [here](https://gitlab.com/gitlab-data/analytics/-/blob/master/admin/sample_profiles.yml) as a starting point (but make sure to remove or exclude the password field)
2. Clone the repo to your local machine `git clone git@gitlab.com:gitlab-data/data-science.git`
3. Run `cd data-science`
4. Run `make setup-jupyter-local-no-conda` 
5. Run `make jupyter-local` 
6. Make sure that Google Chrome is your default browser (go to "System Preferences", click "General" and choose Google Chrome from dropdown menu in section "Default web browser"). To connect to jupyter go to your web browser and copy paste the url and token found in terminal once the docker image creates. It should look something like `http://127.0.0.1:8888/lab?token=5c7f7da79f4a0968501f087f3c79ee4dd8bd7a63e0f088a8`. The token will change each time you spin up the docker container. 
7. Run through the notebook in the repo at /data-science/notebooks/templates/auth_example.ipynb to confirm that you have configured everything successfully. If you get an error then likely Snowflake is not properly configured on your machine. Please refer to the Snowflake and dbt sections of the [Data Onboarding Issue](https://gitlab.com/gitlab-data/analytics/-/blob/master/.gitlab/issue_templates/Data%20Onboarding.md). It is likely that your .dbt/profiles.yml is not setup correctly.

### Configuration
#### Mounting a local directory
By default, the local install will use the data-science folder as the root directory for jupyter. This is not terribly useful when all your code, data, and notebooks are in other locations on your computer. To change, this you will need to create and modify a jupyter notebook config file:
1. Run `jupyter-lab --generate-config` 
1. This writes a file to /Users/{user}/.jupyter/jupyter_lab_config.py
1. Browse to the file location and open it in an Editor
1. Search for the following line in the file: #c.ServerApp.root_dir = ''
1. Replace by c.ServerApp.root_dir = '/the/path/to/other/folder/'. If unsure, set the value to your repo directory (i.e. c.ServerApp.root_dir = '/Users/{user}/repos')
1. Make sure you use forward slashes in your path and use /home/user/ instead of ~/ for your home directory, backslashes could be used if placed in double quotes even if folder name contains spaces as such : `\yourUserName\Any Folder\More Folders\`
1. Remove the # at the beginning of the line to allow the line to execute
1. Rerun `make jupyter-local` from the data-science directory and your root directory should now be changed to what you specified above. 

### Increasing Docker Memory Allocation

### Setting Up Jupyter Extensions
- The data-science contains comes with many useful Jupyter Lab extensions pre-installed, including git, variable inspector, collapsible headings, execute time, and system monitor. 
- To get the most out of these (and to avoid haing to configure them every time), create the following file: `/Users/{user}/.jupyter/lab/user-settings/@jupyterlab/notebook-extension/tracker.jupyterlab-settings`
- Within that file, paste the following and save: 
```
{
    "codeCellConfig": {
        "codeFolding": true,
        "lineNumbers": true,
    },
    
    "recordTiming": true,
    
}
```



### Interesting libraries included

#### Data/Model Analysis
* ELI5: 
    https://eli5.readthedocs.io/en/latest/overview.html#installation
* QuickDA: 
    https://pypi.org/project/quickda/
  
#### Visualisation tools: 

* Plotly
  https://plotly.com/python/
* Seaborn 
  https://seaborn.pydata.org/

#### ML libraries
* Slearn
  https://scikit-learn.org/stable/index.html
* Tensorflow
  https://www.tensorflow.org/
  https://www.tensorflow.org/api_docs/python/tf
* Torch
https://pytorch.org/
* Py-earth https://contrib.scikit-learn.org/py-earth/content.html
* Autots https://pypi.org/project/AutoTS/
* lazypredidct (must be self-installed) https://pypi.org/project/lazypredict/

##### Easy concurrency 
* Modin (must be self-installed)
https://modin.readthedocs.io/en/latest/#
* Dask https://dask.org/

#### GPU speedup
* PlainML 
https://github.com/plaidml/plaidml
