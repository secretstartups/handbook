---
layout: handbook-page-toc
title: "Creating a LaunchDarkly test"
description: "LaunchDarkly is used on our Buyer Experience site to run experiments through the use of feature flags and custom events. These experiments can provide valuable data on what changes to content or UI elements may cause a direct increase or decrease of conversions."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

LaunchDarkly is used on our Buyer Experience site to run experiments through the use of feature flags and custom events. These experiments can provide valuable data on what changes to content or UI elements may cause a direct increase or decrease of conversions.

### Background

When we say we want to run an AB test, this means running an experiment between two competing designs. One is called control or the existing design; Another is called experiment or the change in design. We want to measure the success of both of these variations against real users, and keep the winning variation. We also want to make sure this change didn't happen by chance, and that the difference is significant enough. For example, we want the "Get Free trial" button on the home page's hero to increase by 5%.

To implement this experiment, we will need to define at least one metric and exactly one feature flag.

A feature flag is used in an AB test to control what variation the user is served. So far, we have only done 50/50 splits.

A metric is an event that will fire based on the action that a user can take. This can be a button click, filling out a form, hovering over something, or viewing a certain part of the page. Setting up these custom event metrics are critical when performing tests on elements that navigate to a new page. LaunchDarkly polls all page events on a set interval to send the request back to the platform. When navigated away from the page, the changes that happened between the last interval and new page render get wiped away. Custom events circumvent this by manually telling LaunchDarkly that the element was interacted with. In addition, these metrics are critical to gather in order to calculate an accurate p-value. A p-value reaching below a 0.05 signals that we are able to end the test.

### Getting started
You will need to set up a test using the [LaunchDarkly](https://launchdarkly.com/product/?utm_source=google&utm_medium=cpc&utm_term=launchdarkly&utm_campaign=NA_Search_Brand&utm_adgroup={adgroup}&matchtype=p&device=c&position=&_bt=554432117689&_bn=g&gclid=Cj0KCQiA0oagBhDHARIsAI-Bbgcs-uJwxbAX-8j3oZ8uI661F0YAP6srL3MZNUb81wscmkCgLJkndq0aAqTDEALw_wcB) platform. This requires a LaunchDarkly account with **write** access. Please reach out via the `#digital-experience` Slack channel to find an admin to grant access if you need.

### LaunchDarkly Setup

#### Feature flag
First we'll create our feature flag on the [Feature Flag page](https://app.launchdarkly.com/buyers-experience/production/features) by clicking the `Create Flag` button

Give your flag a short name that sums up what is being tested. This value will automatically become the `key`, which will be used later in our code to connect our code to the test.

By default, the variations will be setup to show as a `Boolean` (true/false), change this to `Number`. This won't be able to be changed later!

Enter `0` for the first value with a name of `Control` or whatever your control value should be. Enter a description as well. Adding details will allow other developers or admins to understand your test layout more clearly.

Save your flag and go to the `Targeting` panel of your new feature flag.

Under `Default rule`, click the dropdown and select `a percentage rollout`. Enter a split for your test (50/50 for an A/B test, 33.34/33.33/33.33 for an A/B/C test, or whatever specified in the issue for your test.)

Just below this, there is a `If targeting is off, serve...` selection. This might be `experiment` by default but we would most likely want this to show the `control` value.

Review and save.

#### Custom Event
In the `Experiments` panel, click `Create Experiment`.

***If your experiment already exists:*** 

Select the feature flag name you would like to assign the experiment metric to.
Select the existing metric under the `Connect metric` dropdown.
The `Select baseline` value should be the `control` option

Click `Create experiment`

***If you need to create a new experiment metric:***

Click the link under `Connect metric` that says "Create new metrics in the Metrics tab."

Add a short-yet-detailed unique value as the name for your metric. It is best to use `kebab case` or hyphens between words (ex: `trial-button-click`) This value will be used later in our code implementation of the test. Add additional details in the metric description as well.

Event kind should be `Custom` with the `Conversion` radio button selected. Save your metric.

Go back to the root `Experiments` panel. Click `Create experiment`.

Now you can enter the name of your feature flag, your new metric, and leave the baseline as `control`. Click `Create experiment`.

Under the `Feature flags` panel, find your feature flag and click it.

Go to the `Experiments` tab (the one under your feature flag in the main body of the page, not the one on the left navigation panel!)

Click `Start recording`. You're going to get an error that says: `Cannot record experiment metrics without first adding an experiment allocation to the associated flag’s targeting rules`

Go to the `Targeting` tab and scroll down to the area that you filled in percentage splits in earlier in this process. On the right side will be an icon that looks like a graph trend.

Click `Run an experiment on this rule` and fill in the same percentage rollout values you had before. Review and save. Now you should be able to go back to your feature flag's `Experiments` tab and click the `Start recording` button without any issues.

You're all set up with LaunchDarkly! If you haven't already, you can turn your feature flag on.

Before we move on to the code implementation of our test's setup, you'll need the kebab case value of your feature flag name and your custom event metric's name.


### Buyer experience

We have a LaunchDarkly Vue component that handles API calls with the LaunchDarkly platform. The component utilizes slots and template names that take care of most of the heavy lifting, however, there are some specific props and values that it will need.

#### Component setup

First, add the component to your page.

```javascript
// ~/pages/enterprise.vue
import LaunchDarkly from '~/components/launch-darkly.vue'
```

```javascript
  components: {
    YourOtherComponent,
    LaunchDarkly
  },
```

To use the component, add the `#control` and `#experiment` templates. There is an `#experiment-two` slot available as well in the event that you need to run a multi-variant test.

The component takes in a `feature-flag` prop that MUST match the name of your feature flag name in the platform.

In addition, add a Vue `ref` value as this will be needed to add our custom event.

```vue
<LaunchDarkly featureFlag="featureFlagName" ref="uniqueReferenceValue">
    <template #control>
        // control content
    </template>
    <template #experiment>
        // experiment content
    </template>
    <template #experiment-two>
        // in the event that you have a multi-variant test, you would add the second variant here
    </template>
</LaunchDarkly>
```

#### Create custom event function
To fire a custom event which tracks our experiment metrics, create a Vue method that will be called `on-click`.

The method should call upon the ref you created in our last step and will need the name of the experiment you created in LaunchDarkly. The ref value will allow you to use the `fireCustomEvent` method from the LaunchDarkly component and you can pass that method the name of your experiment.

```vue
methods: {
   clickedSaasButton() {
      this.$refs.uniqueReferenceValue.fireCustomEvent(
        'free-saas-signup-clicked',
      );
    },
}

// ....

<button @click="clickedSaasButton">
    Sign up
</button>

```

### Testing


#### Testing Locally
`?override-control`, `?override-experiment`, `?override-experiment2` are query parameters that you can add to your page's url to trigger the expected content as if LaunchDarkly were running. These params **override** LaunchDarkly and will prevent the feature flag and API calls from firing.

#### Testing in Stage
In a Review App environment, you can type `dataLayer` into your browser's console to view our site's dataLayer object. You should see an object for LaunchDarkly if everything is working correctly.

> **Note:** Be sure you have the appropriate Google Analytic data attributes in your test before going to production.

#### Testing in Production
Follow the same testing items as above. Do the overrides show the expected content? Does the dataLayer object contain a launchDarkly entry?

Verify through a few refreshes in a browser's incognito mode that you can view the control and variants, as well as verifying the correct experiment ID is being pushed to the launchDarkly object within the dataLayer

In addition, you can go into LaunchDarkly's [Live Events](https://app.launchdarkly.com/buyers-experience/production/live) page to see feature-flag and experiment hits in real time. Ensure that things are starting to pop up as you test your pages in production.
