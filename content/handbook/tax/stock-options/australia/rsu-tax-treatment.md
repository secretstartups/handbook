---
layout: handbook-page-toc
title: "RSU Tax Treatment (Australia)"
---



## On this page

{:.no_toc .hidden-md .hidden-lg}

- TOC

{:toc .hidden-md .hidden-lg}

## DISCLAIMER

The information provided in this handbook has been designed for informational purposes only, and _**is not**_ intended to provide taxation, legal or financial advice. You should consult an accountant or tax advisor.

## Introduction

Restricted Stock Units (RSUs) are granted to team members as part of equity compensation. The Australian Tax Office (ATO) considers RSUs as **ESS interests**, which are provided by GitLab under an [**Employee share scheme (ESS)**](https://www.ato.gov.au/General/Employee-share-schemes/).

There has been some discussion over time from Australian team members in the [#loc_australia](https://gitlab.slack.com/archives/CHHFS9DR7) Slack channel about tax obligations for [Restricted Stock Units (RSUs)](https://about.gitlab.com/handbook/stock-options/#restricted-stock-units-rsus). This page aims to collect relevant material to help you determine what you _**may**_ owe at tax time. As noted in the [disclaimer](#disclaimer) above, you should consult a professional, using the information here as a starting point.
You will see ["sell to cover"](https://about.gitlab.com/handbook/stock-options/#sell-to-cover---rsus) in your RSU release confirmation, however, no shares will be sold for team members working in Australia. You should consider your tax obligations as shares are vested.

## Tax Obligations

When your RSUs vest, you become eligible to some tax obligations. There is a [useful example](https://community.ato.gov.au/s/question/a0J9s0000001HR9/p00043329) on the ATO community forum which discusses this for RSUs, but in brief, there are two main things to consider:

- [Assessable Income](#assessable-income) (applies when shares vest)
- [Capital Gains Tax](#capital-gains-tax-cgt) (applies when shares are sold)

### Assessable Income

When your RSUs vest, the value of the shares _at that point in time_ become assessable as a part of your income for that financial year. Depending on what you decide to do with the shares decides further changes:

|Event|Action|
|--|--|
|Sell within 30 days|[Refer to the 30-Day Rule](#the-30-day-rule)|
|Sell after 30 days, but within 12 months|Value of shares are assessable income. Report a capital gain or loss|
|Sell after 12 months|Value of shares are assessable income. Report a discounted (50%) capital gain or loss|

Using an example, we can discuss a few of the above events, using the worth of 10 RSUs at $30.00 USD a share (purely as an easy-to-calculate example), for a total of $300 USD. In all cases, the cost of the RSUs need to be converted into Australian dollars based on the currency rate _on the date the ESS interests were granted_.

**If sold within 30 days**, the sold shares become assessable income at their sell price, which may have fluctuated slightly since vesting. Assuming the shares are now worth $310 USD, at tax time you would report this as income in AUD using the currency conversion from this date. You don't need to report capital gains (or loss) for this sale.

**If sold after 30 days, but within 12 months**, the shares are considered assessable income on the day they vested ($300), which you will need to consider as income on your tax return for that financial year. When you sell the RSU within 12 months, you report a full capital gain or loss based on the share price when sold. If 10 shares are now worth $330 USD, you would report a capital gain of $30.

**If sold after 30 days, but after 12 months**, the shares are considered assessable income on the day they vested ($300), which you will need to consider as income on your tax return for that financial year. When you sell the RSU after 12 months, you report a [discounted capital gain or loss](https://www.ato.gov.au/individuals/capital-gains-tax/cgt-discount/) based on the share price when sold. If 10 shares are now worth $330 USD, you would report a capital gain of $15.

### Capital gains tax (CGT)

A capital gain (or loss) can occur by selling or disposing of assets. In this context, RSUs are considered an asset when sold and subject to CGT for that financial year. For more detail, review [the ATO's website](https://www.ato.gov.au/Individuals/Capital-gains-tax/).

### The 30-Day Rule

The ATO has specific mention within the ESS about the [30-day rule](https://www.ato.gov.au/general/employee-share-schemes/employers/types-of-ess/concessional-ess/tax-deferred-schemes/#BK_30dayruleitcanchangethedeferredtaxing), which means, if you acquire and then dispose (sell) your acquired shares within 30 days of receiving them, the _deferred taxing point_ becomes the date of the disposal (sell date). This means you have a singular tax event of the sale value of the shares, which is considered a part of your income for that financial year. This may be useful for some situations where you do not want to trigger Capital Gains.

## Record Keeping

The ATO expects you to [keep a list of records](https://www.ato.gov.au/General/Employee-share-schemes/Employees/Record-keeping/) relating to your ESS interests. Most of this information is available through the year on the Etrade platform.  It is expected that for the 22/23 financial year, detailed statements will be provided that also contain this information.

Throughout the year, you can review your stock plan confirmations in Etrade, which shows information including the Market Value, Taxable Gain and number of shares issued, presented U.S. currency. This can be found in Etrade by navigating to **Stock Plan > Quick Links > Confirmations**. Select the _Restricted Stock_ documents and download the PDF(s) to view this information.

### ESS Statement and Annual Report

Under [ATO requirements](https://www.ato.gov.au/General/Employee-share-schemes/In-detail/Employer-reporting-requirements/ESS---Reporting-requirements-for-employers/), GitLab is required to send GitLab team members an ESS Statement by the 14th July after the end of that financial year. This will be beneficial to you and your tax agent (if you're engaging one) to complete your tax return and understand your obligations.

After this, GitLab must deliver an ESS Annual Report to the ATO by the 14th August, which contains information on the ESS interests provided to the employee.

## Setting up Etrade

This section discusses how you can setup and sell your stock on Etrade, and what some options are available to receive the proceeds in AUD currency. The information provided does not cover all available options, so you should perform your own research into what is best for your situation.

### Setting up a wire in Etrade

You can create a 'wire recipient' in Etrade by selecting **Transfer** > **Wire Transfer** in the top navigation bar. In _Wire from_, select your brokerage account. In the _Wire to_ dropdown, you will be prompted to add or edit wire recipients. The information you fill out will depend on whether you are performing an International or Domestic wire.

Etrade charges a $25 USD wire transfer fee, which is reimbursable if performing an International wire to a bank account outside of the United States. Domestic wires (in the context of sending domestically to a U.S. based account) are not reimbursable. Refer to the [expense policy](https://about.gitlab.com/handbook/finance/expenses/#expense-policy-outline) for more information.

### Direct bank transfer (International Wire)

#### To AUD bank account

You can create an _International wire_ which allows you to transfer the proceeds of your sale directly to an Australian bank account without an intermediary service. The information required for this includes:

- Your bank's SWIFT code. Look this up on your bank's website or contact them directly for this information.
- Your bank's name (usually auto-filled from the SWIFT code)
- Your bank account number
- Your bank account name (this will use your details in Etrade)
- A wire 'nickname'. This is referenced in Etrade when selecting a wire recipient.

As the proceeds of the sale must be transferred from USD to AUD, Etrade charges a foreign exchange fee of _up to_ 3% on the transaction. Refer to their [Foreign Exchange Disclosure](https://us.etrade.com/e/t/estation/help?id=310120000) for more information.

#### To USD bank account

Alternatively, if you have a bank account in USD, you could do an international transfer to it (following the above steps) and that way avoid the Etrade "up to 3%" foreign exchange fee. For example: HSBC offer multi currency accounts, and Citibank _used to_ offer a "Citi Global Currency Account" (no longer available since the Citi consumer banking business was sold to NAB). Do your research as your bank will charge their own fees to convert USD to AUD.

### Wire via Wise (Domestic Wire)

[Wise](https://wise.com/) is a third-party company that provides foreign exchange services. This is used by some team members purely in a personal capacity and does not reflect any endorsement by GitLab. Wise allows for you to create a U.S. bank account and receive funds from the transaction in USD. Within Wise, you can choose the destination of the proceeds, such as an Australian bank account. Wise uses a mid-market rate for currency conversion, and you can use their [interactive conversion calculator](https://wise.com/au/pricing/hold-fees?sourceAmount=1000&sourceCcy=USD&targetCcy=AUD) to get a rough idea on the fees they charge.

As Wise is a financial service, you need to go through a verification process including providing a form of government-issued I.D, and might be required to deposit some money.

Wise has some informative videos on both the [account creation process](https://www.youtube.com/watch?v=oVG-p27bHkE) and [how to receive money](https://youtu.be/4Omk_0PLzCk?t=128).

Once your Wise account is created and you have setup a US dollar account, you will be able to access details in the app/website that is required in Etrade. The information required includes:

- The receiving bank routing number (shown as `ACH and Wire routing number` in Wise)
- Receiving bank name (usually auto-filled from the routing number).
  - This may display as `Community Federal Savings Bank` or `Evolve Bank and Trust`. See the [help article](https://wise.com/help/articles/2827506/how-do-i-use-my-usd-account-details) for more information.
- Receiving bank account number (shown as `Account number` in Wise)
- A wire 'nickname'. This is referenced in Etrade when selecting a wire recipient.
