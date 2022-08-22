---
layout: handbook-page-toc
title: "Navigation Repository"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Navigation Repository

The [navigation repository](https://gitlab.com/gitlab-com/marketing/digital-experience/navigation) (also known as `be-navigation`) is a separate package that is updated and maintained independently from the rest of the marketing website. This is so that we can make changes in one place, and have any consuming repositories pull from that single source of truth. The navigation is currently maintained by the [Digital Experience team](/handbook/marketing/digital-experience/). 

Navigation is following [Semantic Versioning](https://semver.org/). The current released version can be found on this [npm page](https://www.npmjs.com/package/be-navigation) under `Versions`. 

## Making Changes

To request changes to the Navigation repository, please fill out an issue [here](https://gitlab.com/gitlab-com/marketing/digital-experience/navigation/-/issues/new) to be triaged by the Digital Experience team. 

If you would like to self-serve changes to the navigation, feel free to clone the project locally following the instructions in the [readme](https://gitlab.com/gitlab-com/marketing/digital-experience/navigation/-/blob/main/README.md). Once you make changes, please tag a member of the [Digital Experience team](https://about.gitlab.com/handbook/marketing/digital-experience/#groups-metrics--team-members) to review your MR. We are consistently running tests on navigation links, and doing research and design spikes on navigation changes, so all changes will need to be approved by a member of our team.

## Releases

Currently, our team releases new navigation changes in bundles on **Wednesdays**. This can be adjusted as necessary, and we typically opt to release large, breaking changes in their own version. 

We avoid deploying minor or major releases of the navigation on release post days.

### Releasing involves 3 main steps:

1. Prepping issues for the release
1. Publishing a new version to npm
1. Updating any repositories that consume the navigation to point to the new version

### Detailed instructions

1. Create a new issue titled `Navigation release: Version x.x.xx` and include links to the MRs and Issues included in this release. This navigation issue should be added to the quarterly navigation release epic (ex. [FY23Q3 epic](https://gitlab.com/groups/gitlab-com/marketing/digital-experience/-/epics/155))
1. Create a new branch from `main`, with all changes
1. Increment the version number in `package.json`
1. Build /dist folder - ```npm run build-library```
1. Publish to npm - ```npm publish``` (Note: You may need to login with your npm credentials using ```npm login```)
1. Merge changes to `origin/main`
1. Once the package has been published it's now ready to be [updated in the consuming repositories](#using-navigation-in-other-repositories). Include links to those MRs in your Navigation Release Issue 
1. Close the Navigation Release Issue

## Using Navigation in Other Repositories

To update the navigation in the repositorys that consume it, for example www-gitlab-com, or buyer-experience:
- Go to `package.json`, find the `be-navigation` line item, and increment to the latest version
- run `npm install` to update the package
- commit your changes, do extensive testing in the review app, and merge. 

_Note: You will have to visit pages built by that repository in order to see your navigation changes. For example, the website [homepage](https://about.gitlab.com) is built in `Buyer Experience`, so you can visit the homepage in your review app to see your navigation changes. However the [handbook](/handbook/) is built by `www-gitlab-com`, so you'll need to go to a handbook page in order to test your navigation changes in the `www` review app._


