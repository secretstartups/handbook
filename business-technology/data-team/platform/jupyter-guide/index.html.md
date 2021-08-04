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

See related [repository](https://gitlab.com/gitlab-data/data-science)

### Features ###
- Common python DS/ML libraries
- Natively connected to Snowflake using your dbt credentials. No login required!
- Git functionality: push and pull to Gitlab repos natively within JupyterLab ([requires ssh credentials](https://docs.gitlab.com/ee/ssh/index.html))
- Run any python file or notebook on your computer or in a Gitlab repo; the files do not have to be in the docker container
- Need a feature you don't see like R or a specific python package? Let us know and we can add it!

#### Initial docker-compose Jupyter Lab Setup for working with SnowFlake

Intended for use with the analyst image hosted here: https://gitlab.com/gitlab-data/data-image/-/tree/master/analyst_image

#### Getting Started 

##### Jupyter-docker (To be deprecated)

Intended for use with the analyst image hosted here: https://registry.gitlab.com/gitlab-data/data-image/analyst-image

If you are setting this repo up for the first time please use one of the other setup instructions, docker uses an authentication method which will be removed.

1. Make sure you have setup a `{User}/.dbt/profiles.yml` file which **does** include your password, can use the example provide [here](https://gitlab.com/gitlab-data/analytics/-/blob/master/admin/sample_profiles.yml) as a starting point. 
2. Install Docker
3. Clone the repo to your local machine `git clone git@gitlab.com:gitlab-data/data-science.git`
4. Run `cd data-science`
5. Ensure docker is installed
6. Run `make jupyter` from the root of the directory. This will set up a jupyter-lab instance within docker 
7. To connect to jupyter go to your web browser and copy paste the url and token found in terminal once the docker image creates. It should look something like `http://127.0.0.1:8888/lab?token=5c7f7da79f4a0968501f087f3c79ee4dd8bd7a63e0f088a8`. The token will change each time you spin up the docker container.
8. Run through the notebook in the repo at /data-science/notebooks/templates/auth_example.ipynb to confirm that you have configured everything successfully. If you get an error then likely Snowflake is not properly configured on your machine. Please refer to the Snowflake and dbt sections of the [Data Onboarding Issue](https://gitlab.com/gitlab-data/analytics/-/blob/master/.gitlab/issue_templates/Data%20Onboarding.md). It is likely that your .dbt/profiles.yml is not setup correctly.


##### Jupyter-local-no-conda (Lightweight install)

This install only includes the libraries defined by the Pipfile, and should be used if you want to setup your own environment

1. Make sure you have setup a `{User}/.dbt/profiles.yml` file which **does not** include your password, can use the example provide [here](https://gitlab.com/gitlab-data/analytics/-/blob/master/admin/sample_profiles.yml) as a starting point (but make sure to remove or exclude the password field)
2. Clone the repo to your local machine `git clone git@gitlab.com:gitlab-data/data-science.git`
3. Run `cd data-science`
4. Run `make setup-jupyter-local-no-conda` 
5. Run `make jupyter-local` 
6. Make sure that Google Chrome is your default browser (go to "System Preferences", click "General" and choose Google Chrome from dropdown menu in section "Default web browser"). To connect to jupyter go to your web browser and copy paste the url and token found in terminal once the docker image creates. It should look something like `http://127.0.0.1:8888/lab?token=5c7f7da79f4a0968501f087f3c79ee4dd8bd7a63e0f088a8`. The token will change each time you spin up the docker container. 
7. Run through the notebook in the repo at /data-science/notebooks/templates/auth_example.ipynb to confirm that you have configured everything successfully. If you get an error then likely Snowflake is not properly configured on your machine. Please refer to the Snowflake and dbt sections of the [Data Onboarding Issue](https://gitlab.com/gitlab-data/analytics/-/blob/master/.gitlab/issue_templates/Data%20Onboarding.md). It is likely that your .dbt/profiles.yml is not setup correctly.

##### Jupyter-local-conda (Full install)

This install includes all libraries defined by the Pipfile, along with a complete install for Conda & supporting libraries. 

1. Make sure you have setup a `{User}/.dbt/profiles.yml` file which **does not** include your password, can use the example provide [here](https://gitlab.com/gitlab-data/analytics/-/blob/master/admin/sample_profiles.yml) as a starting point (but make sure to remove or exclude the password field)
2. Clone the repo to your local machine `git clone git@gitlab.com:gitlab-data/data-science.git`
3. Run `cd data-science`
4. Run `make setup-jupyter-local`
5. Run `make jupyter-local`
6. Make sure that Google Chrome is your default browser (go to "System Preferences", click "General" and choose Google Chrome from dropdown menu in section "Default web browser"). To connect to jupyter go to your web browser and copy paste the url and token found in terminal once the docker image creates. It should look something like `http://127.0.0.1:8888/lab?token=5c7f7da79f4a0968501f087f3c79ee4dd8bd7a63e0f088a8`. The token will change each time you spin up the docker container.
7. Run through the notebook in the repo at /data-science/notebooks/templates/auth_example.ipynb to confirm that you have configured everything successfully. If you get an error then likely Snowflake is not properly configured on your machine. Please refer to the Snowflake and dbt sections of the [Data Onboarding Issue](https://gitlab.com/gitlab-data/analytics/-/blob/master/.gitlab/issue_templates/Data%20Onboarding.md). It is likely that your .dbt/profiles.yml is not setup correctly.

##### Mounting another directory for analysis using the libraries included here

This only applies to local development methods, none of this config is valid for the docker setup. 

* Use the jupyter notebook config file:
1. Make sure you have setup one of options for development in this repo 
2. Run `jupyter-lab --generate-config` 
3. This writes a file to /Users/{user}/.jupyter/jupyter_lab_config.py
4. Browse to the file location and open it in an Editor
5. Search for the following line in the file: #c.ServerApp.root_dir = ''
6. Replace by c.ServerApp.root_dir = '/the/path/to/other/folder/'. If unsure, set the value to your repo directory (i.e. c.ServerApp.root_dir = '/Users/yourusername/repos')
7. Make sure you use forward slashes in your path and use /home/user/ instead of ~/ for your home directory, backslashes could be used if placed in double quotes even if folder name contains spaces as such : `\yourUserName\Any Folder\More Folders\`
8. Remove the # at the beginning of the line to allow the line to execute
9. Rerun `make jupyter-local` from the data-science directory and your root directory should now be changed to what you specified above. 

#### Interesting libraries included

* ELI5: 
    https://eli5.readthedocs.io/en/latest/overview.html#installation
* QuickDA: 
    https://pypi.org/project/quickda/
  
##### Visualisation tools: 

* Plotly
  https://plotly.com/python/
* Seaborn 
  https://seaborn.pydata.org/

##### ML libraries

* SKlearn
  https://scikit-learn.org/stable/index.html
* Tensorflow
  https://www.tensorflow.org/
  https://www.tensorflow.org/api_docs/python/tf
* Torch
https://pytorch.org/

###### Easy concurrency 

* Modin (must be self-installed)
https://modin.readthedocs.io/en/latest/#

##### GPU speedup

* PlainML 
https://github.com/plaidml/plaidml
