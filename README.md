# GitLab Handbook

## Introduction

This is the new GitLab handbook repository.  We have started a process of
separating out Handbook content from the About GitLab site to make both sites
easier to maintain. In the coming months we hope to move the vast majority of
Handbook Content to this
new repository.

The new handbook site uses [Hugo](https://gohugo.io/) for static page generate
from Markdown.  The sites base theme is [Docsy](https://www.docsy.dev/) and we
have custom theme overrides which sit on top of this.  Docsy and Hugo extended
both additionally require `npm`.

## Requirements

- Git
- Docker

**or**

- Git
- Hugo Extended
- NPM/Node.JS

## Getting started

1. [Running Hugo](#running-hugo)
    1. [Using Docker](#using-docker)
    1. [Install Locally](#install-locally)
1. [Clone this repo](#clone-this-repo)
1. [Setup the repository](#setup-the-repository)
1. [Fire up Hugo Server](#fire-up-hugo-server)
1. [Generate the site locally](#generate-the-site-locally)
1. [Running Markdown Lint](#running-markdown-lint)

### Running Hugo

To run Hugo you can either run it using Docker (recommended) or install the
**extended** version of hugo locally.  We recommend using the Docker images due
the simple nature of using Docker.  Additionally we use the same Docker images
in our pipelines.

#### Using Docker

For development we recommend using the prebuilt docker images which can be run
via Docker (or Podman).

#### Install Locally

For development you need to install the **extended** version of [Hugo](https://gohugo.io/).
The extended version is required for the Docsy theme as we use SASS for
producing the stylesheets for the site.  This will also require the
installation of Node/NPM.

For instruction to install Hugo go to:

> https://gohugo.io/getting-started/installing

### Clone this repo

The best way to edit the handbook is always going to be locally.  We recommend
git to clone repository and then editing the handbook with a text editor such
as [Visual Studio Code](https://code.visualstudio.com/), [Typora](https://typora.io/),
[Nova](https://nova.app/) or [Sublime](https://www.sublimetext.com/) to name a few.

To clone the repo:

```sh
git clone git@gitlab.com:gitlab-com/content-sites/handbook.git
```

### Setup the repository

To get things setup you will need to pull the Docsy submodule.  If you have an
alias setup for a super pull or spull you can use that.  If not you can use the
following commands to pull the Docsy submodule

```sh
cd handbook
git submodule sync --recursive && git submodule update --init --recursive
```

#### Running Hugo locally

If you are running hugo through a local install you willl now you need to
install the npm modules used by Hugo to generate the site.  To do this go in to
the docsy theme and use npm to install them:

```sh
cd themes/docsy
npm install
cd ../../
```

### Fire up Hugo server

Now you have a local copy of the handbook and everything else setup you can use
Hugo to start a locally running instance of the handbook to see how your additions
look.  To do this open a terminal, go to the handbook directory you cloned and
run:

To fire up and the Hugo Development server you can use
the following Command:

```sh
docker run --rm -it -v $(pwd):/src -p 1313:1313 klakegg/hugo:0.111.3-ext-ubuntu-onbuild server
```

or if you've installed Hugo locally:

```sh
hugo server
```

This will start the hugo server on port 1313 and you'll be able to open a web browser
and go to [http://localhost:1313](http://localhost:1313) to see your local version
of the handbook.

### Generate the site locally

It possible to generate the full site locally using Hugo.  You may sometimes
need to do this if you are trying to debug the site for any reason. To build
the site using Docker you use this command:

```sh
docker run --rm -it -v $(pwd):/src -p 1313:1313 klakegg/hugo:0.111.3-ext-ubuntu-onbuild
```

or if you have Hugo installed locally:

```sh
hugo
```

You will find the output of the hugo command in `/public`

### Running Markdown Lint

We use Markdownlint in our pipelines with a slightly customised set of rules.
Before pushing any changes its recommended to run Markdownlint and fix any
suggested changes to avoid pipeline failures.

To run Markdownlint using Docker use the following command:

```sh
docker run -v $(pwd):/workdir davidanson/markdownlint-cli2:next -f content/\*\*/\*.md
```

## Support

For help and support with the new repo reach out to @jamiemaynard or [#handbook](https://gitlab.slack.com/archives/C81PT2ALD)
on Slack.

## Contribution guidelines

For contribution guidelines see the [dedicated handbook page](https://handbook.gitlab.com/docs/).
