# \[KR\] \[Introspective\] Deliver new testing environment

Engineering needs testing environments that more accurately represent our production environment. 

Traditionally, testing environments were a utility for all departments to validate and verify changes. This notion is a relic from days when compute was inelastic and configuration management was expensive. Then, testing environments were long-lived and susceptible to data and systems drift that decayed their value. In the new era of cloud computing and immutable infrastructure, testing code and its performance should be programmatic, yield reproducible results, and occur in transient environments.

## Goal

Produce a tool that programmatically creates and destroys testing environments of variable size with production quality data.

### The Value (and Cost) of Testing Environments

**  The longer a testing environment exists the lower its value.  **

The value of a testing environment can be expressed as a function of time and money.

// Todo - show decreasing value and cost of infrastructure as a function of time and money

Testing environments can be used for numerous purposes and should be sized appropriately. For example, an environment setup for performance testing should emulate the size of the production environment.  Inversely, a local development environment should be adequate for rendering new web views after running a database migration. These examples are at the extremes–there are many use cases in-between.

I chose the word emulate, because we should regularly scale beyond the size of the current production environment for testing. Reliability engineering is responsible for demand forecasting and capacity planning and must prevent the saturation of resources. For example, if the number and size of artifacts in our Docker repositories grow at X and Y percent, will our infrastructure be able to handle an increase of N requests per second?

The size of the testing environment should be scalable using variable inputs. There’s no such thing as a “one size fits all” test environment. The number of testing environments should not be static. Environments should be created and destroyed on demand with a simple tool.

### Consistent Data Integrity

Data quality should not be variable across testing environments. Testing environments must oppose an engineers’ inability to predict every corner case. And this requires that both the diversity and volume of data in production be exportable and available to testers.  Thankfully, a near full-set of scenarios occurs within the hosted GitLab.com production database.

The volume of data in production and the _proportional_ relationships that exist across that data need to be reproduced in the testing environments. Proportionality is important! Databases are a factor of size in our value calculation and create costs. Data should be downsized–no differently than virtual machines–to match the needs of specific testing use cases without a degradation of quality.

## Outcome

By providing testers with quality data we generate a higher probability that changes introduced in testing environments will present issues–as they would in production. When developers find more mistakes during testing, the amount of risk they are introducing is more certain and they can manage changes with more confidence.

_The result should be greater platform stability with higher developer velocity._

## Challenges

There is one unique component of our infrastructure that potentially limits our ability to fully realize our goal: git.

++ I’m not sure, yet, how to introduce the topic of size, cost, and reproducibility as it relates to the file systems hosting git data.
