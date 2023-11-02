---

title: "Predicted XMAU Algorithm"
---

### Prediction Algorithm Description

Per [our Performance Indicators page](/handbook/product/performance-indicators/#three-versions-of-xmau), we currently have 3 versions of xMAU. Predicted xMAU is meant to provide Product Leadership a sense for what usage will look like in 3 years at current growth rates.

The first proposed solution would be to calculate Predicted xMAU on a month M by applying the following formula :

```
Predicted xMAU(Month M) = Estimated xMAU(last month) + (current MoM Growth Amount x month_difference(between last month and month M))
```

MoM growth Amount is calculated as the Average Monthly Absolute Growth Amount over the last quarter.

So assuming, we see the following numbers for the Estimated Plan SMAU for the last 4 months.

| Month | Estimated SMAU |
|-------|----------------|
| M-3   | 94             |
| M-2   | 95             |
| M-1   | 97.5           |
| M     | 100            |

We have a Average MoM growth amount (M - (M-3) / 3) of 2 and a current value of 100. We would like to calculate the Predicted SMAU in 12 Months.

```
Predicted Plan SMAU(Last Month + 12 Months) = Estimated Plan SMAU(Last Month) + (2 x 12) = 100 + 24 = 124
```

With the formula described above, we will get a Predicted Value for Plan SMAU in 12 Months of **124**.


### Adjustment to the growth rate for SaaS, Self-Managed CE, and Self-Managed EE

Growth trends between SaaS, CE and EE might vary widely. To account for this, the algorithm factors in the amount of usage for a given group across CE, EE, and SaaS, and adjusts the growth rate based on the average growth rate for each of those delivery types, respectively.

So let's calculate the Predicted SMAU for Plan in 12 Months. We have the following assumptions:

| Delivery  and Edition| SMAU | MoM Growth |
|-------|------|------------|
| CE    | 50   | 2%         |
| EE    | 20   | 4%         |
| SaaS  | 30   | 3%         |
| Total | 100  |            |

So we will calculate a different Predicted SMAU for CE, EE and SaaS, applying the same formula explained above:

```

Predicted SMAU, CE = 50 x (1+ (0.02 x 12)) = 50 x 1.24 = 62
Predicted SMAU, EE = 20 x (1+ (0.04 x 12)) = 20 x 1.48 = 30
Predicted SMAU, CE = 30 x (1+ (0.03 x 12)) = 30 x 1.63 = 41

Predicted SMAU = Predicted SMAU, CE + Predicted SMAU, EE + Predicted SMAU, SaaS = 62 + 30 + 41 = 133

```

So that will lead to a Predicted SMAU of 133 in 12 months.

A WIP Dashboard using this logic [is available here.](https://app.periscopedata.com/app/gitlab/798616/WIP-Linear-Predicted-Dashboard).

#### Next Steps

We are investigating different ways of approaching this problem. We have created [a dashboard summarizing](https://app.periscopedata.com/app/gitlab/799310/Predicted-XMAU:-Prophet-vs-Linear-Growth) the different options we have.

Additional options explored:

- Using a constant MoM Growth Rate: so applying every Month the same growth rate. That means that Predicted(Month + 1) = Predicted(Month) x MoM-Growth-Rate
- Using an external forecasting Python library called [Prophet](https://facebook.github.io/prophet/) to forecast growth based on previous month data.
