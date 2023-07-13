---
title: "RubyMine"
---

## Overview

Website: https://www.jetbrains.com/ruby/

Best for: editing Ruby or Rails applications, which can include Javascript/Typescript and most other
web technologies.

## Common Jetbrains Setup and Configuration

Jetbrains IDEs are standardized, so much of the setup and configuration information applies to all IDEs, and can be found under [Common Jetbrains Setup and Configuration](../../setup-and-config).

Specific config for this RubyMine can be found below at [RubyMine-specific Setup and Configuration](#rubymine-specific-setup-and-configuration)

## RubyMine-specific Setup and Configuration

Placeholder for future content...

## Using Rubymine debugger for GitLab running under GDK

**_TODO: Now that https://youtrack.jetbrains.com/issue/RUBY-27404 has been fixed, the instructions below
are outdated and should be updated to reflect the simpler socket-based process, but they should still work_**

### Debugging `rails-web`

#### Note on Rails Puma binding

By default, the Rails [puma configuration template which GitLab uses binds to a socket](https://gitlab.com/gitlab-org/gitlab-development-kit/blob/d948d5485e3f519688783dc92ad70d94f132e396/support/templates/puma.rb.erb#L44), instead of a TCP port.

[This MR](https://gitlab.com/gitlab-org/gitlab-development-kit/-/merge_requests/1693) added support for configuring the GDK to bind Rails puma to a TCP socket, and added support for Workhorse to use TCP ports instead of sockets.

See the [architecture documentation around components](https://docs.gitlab.com/ee/development/architecture.html#components) for more details on how GitLab Workhorse and Puma work together.

Why is all of this important?

Because unfortunately, because of [this RubyMine bug (https://youtrack.jetbrains.com/issue/RUBY-27404)](https://youtrack.jetbrains.com/issue/RUBY-27404), it is not possible to use the default RubyMine `Rails` Run Configuration with a puma configuration which uses a socket binding. (NOTE: If you want this fixed, please go to the issue and thumbs-up to vote for it!)

So, you have two choices to work around this:

1. Set up a RubyMine "Ruby" Run Configuration to directly run puma using the default socket binding. Even though this is a slightly more complex config in RubyMine, it is recommended, because it will still continue working even if you reinstall your GDK and lose the overridden config to bind puma to a TCP port.
1. Configure the GDK to bind puma to a TCP port, and set up a RubyMine "Rails" Run Configuration for that port. This may also be useful for other debugging scenarios, like being able to use Wireshark to debug TCP traffic.

Note that you **COULD** just not worry about any of this, and run a normal RubyMine "Rails" Run Configuration without changing the GDK config, and directly connect to the port it uses (by default 3000). However, this means that you won't be connecting and proxying through the GitLab Workhorse according to the [standard component architecture](https://docs.gitlab.com/ee/development/architecture.html#components), and some features may be slower, work differently, or not work at all. So, it's safer to go ahead and do one of these two suggested options to use a standard configuration running puma behind the Workhorse proxy.

The following two sections explain how to do those two options.

#### Setting up a RubyMine "Ruby" Run Configuration with puma using default socket binding (recommended)

1. Make sure you have done `gdk stop rails-web` before each debugging session (and `gdk start rails-web` when you are done debugging)
1. Set up a Ruby (NOT Rails) Run/Debug config like this in RubyMine:
    - Name: `Development: gitlab-puma (use if gdk.yml gitlab rails address IS NOT overridden to use TCP port)`
    - Ruby Script (Note: This is actually from the `gitlab-puma` gem): `/Users/YOUR_USER/.asdf/installs/ruby/RUBY_VERSION/bin/puma`
    - Script Arguments: `--config /Users/YOUR_USER/PATH_TO/gitlab-development-kit/gitlab/config/puma.rb --environment development`
    - Working Directory: `/Users/YOUR_USER/PATH_TO/gitlab-development-kit/gitlab/`
    - Environment Variables (Note: these are taken from the current GDK `Procfile`, they may become outdated): `RAILS_ENV=development;RAILS_RELATIVE_URL_ROOT=/;ACTION_CABLE_IN_APP=true;ACTION_CABLE_WORKER_POOL_SIZE=4`
1. Start the config in Run or Debug.

#### Setting up a RubyMine "Rails" Run Configuration with puma overridden to use TCP address binding

1. In your `gitlab-development-kit/gdk.yml`, add the following. You can use any port, and the hostname should be whatever you normally use - localhost, or gdk.test if you have that hostname set up.

    ```yaml
    gitlab:
      rails:
        address: gdk.test:3001
    ```

1. `gdk reconfigure` to apply the settings to the `bind` entry in `gitlab-development-kit/gitlab/config/puma.rb`
1. Make sure you have done `gdk stop rails-web` before each debugging session (and `gdk start rails-web` when you are done debugging)
1. Set up a Rails Run/Debug config like this in RubyMine:
    - Name (optional): `Development: gitlab (use if gdk.yml gitlab rails address IS overridden to use TCP port)`
    - IP Address: `0.0.0.0`
    - Port: `3001` (or whatever you put in `gdk.yml`)
    - Environment Variables (Note: these are taken from the current GDK `Procfile`, they may become outdated): `RAILS_ENV=development;RAILS_RELATIVE_URL_ROOT=/;ACTION_CABLE_IN_APP=true;ACTION_CABLE_WORKER_POOL_SIZE=4`
1. Start the config in Run or Debug.

### Debugging `rails-background-jobs`

To debug services run as background jobs, you will need to set up debugging for `rails-background-jobs`, in addition to the `rails-web` debugger. The setup is similar, although you're connecting to the sidekiq process instead of puma.

1. Make sure you have done `gdk stop rails-background-jobs` before each debugging session (and `gdk start rails-background-jobs` when you are done debugging)
1. Set up a Ruby (NOT Rails) Run/Debug config like this in RubyMine:
    - Name: `Development: gitlab-sidekiq`
    - Ruby Script: `/Users/YOUR_USER/.asdf/installs/ruby/RUBY_VERSION/bin/sidekiq`
    - Working Directory `/Users/YOUR_USER/PATH_TO/gitlab-development-kit/gitlab/`
    - Environment Variables (Note: these are taken from the current GDK `Procfile`, they may become outdated): `SIDEKIQ_VERBOSE=false;SIDEKIQ_QUEUES=default,mailers,email_receiver,hashed_storage:hashed_storage_migrator,hashed_storage:hashed_storage_project_migrate,hashed_storage:hashed_storage_project_rollback,hashed_storage:hashed_storage_rollbacker,project_import_schedule,service_desk_email_receiver;BUNDLE_GEMFILE=/Users/YOUR_USER/PATH_TO/gitlab-development-kit/gitlab/Gemfile;SIDEKIQ_WORKERS=1;ENABLE_BOOTSNAP=true;RAILS_ENV=development;RAILS_RELATIVE_URL_ROOT=/;GITALY_DISABLE_REQUEST_LIMITS=false`
