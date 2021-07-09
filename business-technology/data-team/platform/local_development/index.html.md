---
layout: handbook-page-toc
title: "Data Infrastructure"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

{::options parse_block_html="true" /}


Guides for how to setup your local environment to best interact with SnowFlake. 

### dbt 

**Getting your computer set up locally**
* Make sure that you have [created your SSH keys](https://docs.gitlab.com/ee/gitlab-basics/create-your-ssh-keys.html) prior to running this. You can check this by typing `ssh -T git@gitlab.com` into your terminal which should return "Welcome to GitLab, " + your_username. Make the SSH key with no password.
<details>

<summary>For Data Analysts</summary>

* THE NEXT STEPS SHOULD ONLY BE RUN ON YOUR GITLAB-ISSUED LAPTOP. If you run this on your personal computer, we take no responsibility for the side effects.

* [ ] Open your computer's built-in terminal app. Run the following:
```
curl https://gitlab.com/gitlab-data/analytics/raw/master/admin/onboarding_script.zsh > ~/onboarding_script.zsh
zsh ~/onboarding_script.zsh
rm ~/onboarding_script.zsh
```
   * This script is written for zsh, the default terminal for MacOS now, if you feel strongly that you prefer or would like to keep bash, please see this [commit & script](https://gitlab.com/gitlab-data/analytics/-/blob/6964ba11c46c0a3caf863c8fae0b89ba24bb3c48/admin/onboarding_script.sh)
      * However, this script is no longer actively maintained or supported, so you will need to support yourself if you do this. If you do use bash it is also recommended to compare the script with the latest zsh version to make sure you aren't missing any new apps or tools that have been added.
   * This may take a while, and it might ask you for your password (multiple times) before it's done. Here's what this does:
      * Installs iTerm, a mac-OS terminal replacement
      * Installs VSCode, an open source text editor. VSCode is recommended for multiple reasons including community support, the [GitLab workflow](https://marketplace.visualstudio.com/items?itemName=fatihacet.gitlab-workflow) extension, and the LiveShare features.
      * Installs oh-my-zsh for easy terminal theming, git autocomplete, and a few other plugins. If you are curious or would like to change the look and feel of your shell please [go here](https://github.com/ohmyzsh/ohmyzsh).
      * Installing dbt, the open source tool we use for data transformations.
      * Installing jump, an easy way to move through the file system. [Please find here more details on how to use jump](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/jump)
      * Installing anaconda, how we recommend folks get their python distribution.
      * Installs all-the-things needed to contribute to [the handbook](about.gitlab.com/handbook) locally and build it locally.
   * You will be able to `jump analytics` from anywhere to go to the analytics repo locally (you will have to open a new terminal window for `jump` to start working.) If it doesn't work, try running `cd ~/repos/analytics`. Once in "analytics" folder run command `mark analytics` then quit + reopen your terminal before trying again. Now path ~/repos/analytics has been named "analytics" and you can enter to it by using command `mark analytics`.
   * You will be able to `gl_open` from anywhere within the analytics project to open the repo in the UI. If doesn't work, visually inspect your `~/.zshrc` file to make sure it has [this line](https://gitlab.com/gitlab-data/analytics/blob/master/admin/make_life_easier.sh#L14).
   * Your default python version should now be python 3. Typing `which python` into a new terminal window should now return `/usr/local/anaconda3/bin/python`
   * dbt will be installed at its latest version. Typing `dbt --version` will output the current version.
   * To get to the handbook project, you'll be able to use `jump handbook`, and to build the handbook locally, you'll be able to use the alias `build_hb!`.
* [ ] Install docker & docker-compose. The easiest way to do this for Mac now is to use the desktop install from [Docker](https://www.docker.com/products/docker-desktop). If working on Linux you will need to follow these [install instructions](https://docs.docker.com/engine/install/ubuntu/) instead. When running on Mac, installing docker only for `dbt` is not needed, since `Venv` is the [recommended](https://about.gitlab.com/handbook/business-technology/data-team/platform/dbt-guide/#Venv-workflow) workflow for anyone running a Mac system.
* [ ] We strongly recommend configuring VSCode (via the VSCode UI) with the [VSCode setup](https://discourse.getdbt.com/t/how-we-set-up-our-computers-for-working-on-dbt-projects/243?) section of Claire's post and [adding the tip](https://discourse.getdbt.com/t/how-we-set-up-our-computers-for-working-on-dbt-projects/243/10?u=tmurphy) from tmurphy later in the thread. It will make your life much easier.
  * Your editor should be configured so that all tabs are converted to 4 spaces. This will minimize messy looking diffs and provide consistency across the team.
    * VSCode
      * `Editor: Detect Indentation` is deselected
      * `Editor: Insert Spaces` is selected
      * `Editor: Tab Size` is set to 4 spaces per tab
* [ ] Consider following [these instructions](https://stackoverflow.com/a/23963086) so you can have option + arrow keys to move around the terminal easier
* [ ] Raise an access request for Google Cloud Platform (GCP). Template for access request (AR) can be found here: https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/10306. Please assign it to your manager
* [ ] If you get a weird semaphore issue error when running dbt try [this script](https://gist.github.com/llbbl/c54f44d028d014514d5d837f64e60bac) which is sourced from this [Apple forum thread](https://forums.developer.apple.com/thread/119429)

</details>
<details>
<summary>For Data Scientists</summary>

* THE NEXT STEPS SHOULD ONLY BE RUN ON YOUR GITLAB-ISSUED LAPTOP. If you run this on your personal computer, we take no responsibility for the side effects.

</details>

<details>
<summary>For Data Engineers</summary>

Take a look at https://gitlab.com/gitlab-data/analytics/-/blob/master/admin/onboarding_script.zsh and feel free to use what is in there that makes sense. This script is activily maintained in the system so try to use this. 

Some important parts of the script that you will definitely want to do in some way:
* [ ] Install git
    * [ ] Setup a global gitignore that ignores IDE generated files
    * [ ] Clone the analytics project at git@gitlab.com:gitlab-data/analytics.git
    * [ ] Make sure to globally configure git with at least your name and email.
    * [ ] Ensure you have [git completion](https://stackoverflow.com/questions/24315201/warning-this-script-is-deprecated-please-see-git-completion-zsh/41767727#41767727) configured to make your life easier
* [ ] Install docker & docker-compose. The easiest way to do this for Mac now is to use the desktop install from [Docker](https://www.docker.com/products/docker-desktop). If working on Linux you will need to follow these [install instructions](https://docs.docker.com/engine/install/ubuntu/) instead. 
* [ ] Install Python3. [The Hitchhiker's Guide to Python](https://docs.python-guide.org/starting/install3/osx/) is a good resource
    * [ ] Install pip3
    * [ ] Make sure to install the setuptools library as dbt will not install without it
    * [ ] Here is [a list of all of the Python tools that may be used for formatting, linting, or testing](https://gitlab.com/gitlab-data/analytics/blob/master/.gitlab-ci.yml#L100).  Consider installing these locally with pip3.
* [ ] Install dbt, the open source tool we use for data transformations.
    * [ ] Create a dbt profile file in `~/.dbt/`
    * [ ] Set the DBT_PROFILE_PATH environment variable to point to the profile file
* [ ] Install your Python-compatible IDE of choice.  We recommend VSCode for its community support, [GitLab workflow](https://marketplace.visualstudio.com/items?itemName=fatihacet.gitlab-workflow) extension, and overall flexibility.
    * [ ] Ensure your IDE converts tabs to 4 spaces.  To do that in VSCode, make sure in settings:
      * `Editor: Detect Indentation` is deselected
      * `Editor: Insert Spaces` is selected
      * `Editor: Tab Size` is set to 4 spaces per tab
    * [ ] Ensure your IDE uses the Python3 installation
        * To do this in VSCode: press `Ctrl+Shift+P` and then type in and select `Python: Select Interpreter` and then select the Python 3 installation
    * [ ] Consider installing extensions/add-ons in your IDE to support the Python libraries used for linting/testing as mentioned in the Python section above.  For example, you can setup VSCode to use black as its formatter as described [here](https://code.visualstudio.com/docs/python/editing#_formatting).
    * [ ] Consider installing [tldr](https://tldr.sh/) for easy reference to common CLI commands


Additional tools to install that are not part of the onboarding script:
* [ ] Install Data Grip (from JetBrains) for interfacing with databases
    * [ ] Follow [this process](https://about.gitlab.com/handbook/tools-and-tips/#jetbrains) for requesting a license for Data Grip.  Until you have a license, you can easily use Data Grip on a trial basis for 30 days
    - Change your formatting preferences in Data Grip by going to Preferences > Editor > Code Style > HTML. You should have:
        * Use tab character: unchecked
        * Tab size: 4
        * Indent: 4
        * Continuation indent: 8
        * Keep indents on empty lines: unchecked
    - You can use `Command + Option + L` to format your file.
* [ ] Install the [gcloud sdk](https://cloud.google.com/sdk/docs/quickstart-macos) and authenticate once you're provisioned.
    * [ ] For debugging services such as Airflow locally, you will need a set of service account credentials. Your manager will provide you with a service account.
    * [ ] The environment variable `GOOGLE_APPLICATION_CREDENTIALS` should then point to the key provided by your manager.
* [ ] Install [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/#install-with-homebrew-on-macos)
* [ ] Install the [awscli](https://aws.amazon.com/cli/)
* [ ] Disable [autocorrect in zsh](https://coderwall.com/p/jaoypq/disabling-autocorrect-in-zsh) if it annoys you
* [ ] Consider downloading and installing [Little Snitch](https://www.obdev.at/products/littlesnitch/index.html) - You can submit for reimbursement for the full version

## Airflow (Data Engineers only)
    - [ ] Read the Airflow section on the [Data Infrastructure page](https://about.gitlab.com/handbook/business-ops/data-team/platform/infrastructure/#airflow)
    - [ ] Watch the [Airflow Setup Walkthrough](https://www.youtube.com/watch?v=3Ym40gRHtvk&feature=youtu.be) with Taylor and Magda


</details>

### Jupyter 

