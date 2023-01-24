# GitLab Handbook

## Introduction

This is the new GitLab handbook repository.  We have started a process of separating out Handbook content from the About GitLab site to make both sites easier to maintain.  In the coming months we hope to move the vast majority of Handbook Content to this new repository.

The new handbook site uses [Hugo](https://gohugo.io/) for static page generate from Markdown.  The sites base theme is [Docsy](https://www.docsy.dev/) and we have custom theme overrides which sit on top of this.  Docsy and Hugo extended both additionally require `npm`.

## Requirements

* Git
* Hugo Extended
* NPM/Node.JS

## Getting started

1. [Install Hugo Extended](#install-hugo-extended)
2. [Clone this repo](#clone-this-repo)
3. [Setup the repository](#setup-the-repository)
4. [Fire up Hugo Server](#fire-up-hugo-server)

### Install Hugo Extended

For development we recommend installing the **extended** version of [Hugo](https://gohugo.io/).  The extended version is required for the Docsy theme as we use SASS for producing the stylesheets for the site.

For instruction to install Hugo go to: 

> https://gohugo.io/getting-started/installing

### Clone this repo

The best way to edit the handbook is always going to be locally.  We recomment git to clone repository and then editing the handbook with a text editor such as [Visual Studio Code](https://code.visualstudio.com/)

To clone the repo:

```
git clone git@gitlab.com:gitlab-com/content-sites/handbook.git
``

### Setup the repository

To get things setup you will need to pull the Docsy submodule.  If you have an alias setup for a super pull or spull you can use that.  If not you can use the following commands to pull the Docsy submodule

```
cd handbook
git submodule sync --recursive && git submodule update --init --recursive
```

Now you need to install the npm modules used by Hugo to generate the site.  To do this go in to the docsy theme and use npm to install them:

```
cd themes/docsy
npm install
cd ../../
```

### Fire up Hugo server

Now you have a local copy of the handbook and everything else setup you can use Hugo to start a locally running instance of the handbook to see how your additions look.  To do this open a terminal, go to the handbook directory you cloned and run:

```
hugo server
```

This will start the hugo server on port 1313 and you'll be able to open a web browser and go to [http://localhost:1313](http://localhost:1313) to see your local version of the handbook.

## Support

For help and support with the new repo reach out to @jamiemaynard or [#handbook](https://gitlab.slack.com/archives/C81PT2ALD) on Slack.

## Contriobution guidelines

For contribution guidelines see the dedicated handbook page at https://handbook.gitlab.com/contribution-guide or contribution.md in the root of the repo.

