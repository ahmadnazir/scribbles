Introduction to Financial Accounting
====================================

.. post:: 30/12/2020
   :tags: courses

**Accounting**:

- recording transactions
- summary statements
- users who require such info

So companies keep 3 sets of books.

- Financial accounting (external stakeholders) *this course*
- Tax accounting
- Managerial accounting (internal decision making)

**Financial Reporting Requirements**:

Securities and Excange Commission (SEC) requires:

- 10-K : Annual Report (full set of financial statements and substantial disclosure)
- 10-Q : less disclosure)
- 8-K : material events, anything that moves the stock price)

SEC requirements are needless to say required for public companies (but private companies that need to borrow money are also required to provide such reporting)


US GAAP (US Generally Accepted Accounting Principles) vs IFRS (International Financial Reporting Standards): These are the two sets of principles. The SEC came out with a roadmap to move to IFRS in 2008 but financial crisis happened...


**Required financial statements**:

- Income statement: Results of operations over a period of time using accrual accounting
- Statement of Cash Flows
- Statement of Stockholder's Equity
- Balance Sheet: Financial position (listing of resources and obligataions) on a specific date


**Question**: *Did the company make money in this month?* 

There are two ways:

1. **Cash Flows** using *Statement of Cash Flows*

To better answer that question, we can divide the transactions in the following cash flows:

- Operating
- Investing
- Financing

2. **Accounting Income** using *Income Statement*

Another way to answer the same question is using Accounting Income i.e.

.. code::

   Profit = Expected revenue - Expenses

   where:

   Expected Revenue: we provided the services and this is the expected revenue
   Expenses: amortizing the cost of things used, assets?

Accrual accounting is tied to business activities and not cash flows.

.. code::

   Revenues ≠ Cash inflows
   Expenses ≠ Cash outflows
   ∴ Net income ≠ Net cash flow

**Balance Sheet**: Contains assets and liabilities and the sum need to balance out:

- **Assets**: Resources owned by the business that are expected to provide future economic benefits
- **Liabilities**: Claims on those assets by non-owners that represent an obligation to make future payment of cash, goods, or services. Benefits needs to be received already.


Revenue is realized when: it is earned (goods provided) or realized (received cash / sent out an invoice)

Balance Sheet Equation
----------------------

.. code::

   Assets          = Liabilities + Stockholders' equity
   Cash + Non Cash = Liabilities + Contributed Capital + Retained Earnings

   Retained earning = Prior Retained Earnings + Net Income - Dividends

Complete balance sheet equation:

.. code::

   Assets          = Liabilities + Contributed Capital + Prior Retained Earnings + Net Income - Dividends
   Cash + Non Cash = Liabilities + Contributed Capital + Prior Retained Earnings + (Revenues - Expenses) - Dividends

Another simplified version used in practice where we don't think of retained earning and dividends:


.. code::

   Cash + Non Cash = Liabilities + Owners' Equity

Also,

.. code::

   Ending Retained Earnings = Beginning Retained Earnings + Net Income – Dividends
   Net Income = Revenues – Expenses

   Net Income = 190 – 140

   Ending Retained Earnings = 30 + 50 – 10


Types of Assets
---------------

1. **Accounts Receivable**: Type of asset. There has to be a transaction in the past and there is a promise that the customer will pay back.
2. **Inventory**: Raw materials that we can use.
3. **Prepaid Rent**
4. **Land**
5. **Notes Receivable**: Similar to accounts receivable but this is used when the money is paid by another entity than the customer e.g. when loaning money to an employee.

**Others**:


Types of Liabilities
--------------------

1. **Accounts Payable**: Anytime we owe money to anyone.
2. **Income Tax Payable**
3. **Salaries payable**: Pay the employees for their services
4. **Notes payable**: Loan. Interest is not a liability - yet.
5. **Dividend payable**: paying out the dividends to the share holders. (This is an exception as the share holders are not external)


Accounting Cycle
----------------

|ImageLink|_

.. |ImageLink| image:: ./intro-to-financial-accounting/accounting-cycle.png
.. _ImageLink: https://www.coursera.org/learn/wharton-accounting/lecture/pQQPW/1-4-1-relic-spotter-case-part-1

Statement of Cash Flows
-----------------------

.. code::

   Net cash from operating activities +
   Net cash from investing activities +
   Net cash from financing activities
   -----------------------------------
   Net change in cash balance


**Rule of thumb**: Any asset that we hold for more than a year is an **Investing activity** and less than a year is **Operating activity**.
Cash paid for interest needs to be disclosed somewhere in the financial statement.

|CashFlow|_

.. |CashFlow| image:: ./intro-to-financial-accounting/cash-flow-activities.png
.. _CashFlow: https://www.coursera.org/learn/wharton-accounting/lecture/g7ufp/3-1-1-operating-investing-and-financing-cash-flows

.. note::

   Under US GAAP, interest and dividends are categorized under Operating Activities. However, under IFRS, they maybe classified as operating, investing, or financing activities.


Two ways to calculate cash flows, **direct** and **indirect**. Companies use the
indirect method to calculate operating activity as it provides some kind
of a benchmark to how much activity is expected starting with net income and then making adjustments.

**EBITDA**: A measure of cash flow. **Earnings Before Interest, Taxes, Depreciation and Amortization**.
It is susceptible to the **channel stuffing** problem where the company can send invoices to increase the accounts receivable and increase the EBITDA. However, since no cash is collected, this measure of cash flow can be deceptive. Adjusting for account receivables on EBITDA can give a better picture.

.. note::

   Research shows that **Earnings** is a better predictor for future cash flow than **current cash flow from operations**, but using both gives the best predictions.


**Free Cash Flow**: Generally means,

.. code::

   FCF = Operating cash flow - Cash for long-term investiments


There are valuation models that show that if you forecast company's cash flow, discount them back to current value, then you get how much the company should be worth / what the stock price should be.

Problem is that there is not standard measure for operating cash flow.

https://www.coursera.org/learn/wharton-accounting/lecture/whgzc/3-3-1-more-scf-topics-and-ebitda time: 13:30


Ratio Analysis
--------------

There is no standardization. They provide a good diagnostic tool allowing us to ask better questions.

**ROE: Return on Equity**:

.. code::

   ROE = Net Income / Average Shareholders' Equity

Two drivers for ROE:

**1. Operating performance**: How effectively do managers use company resources (assets) to generate profits. This is determined by **Return on Assets**:

.. code::

   ROA  = Net Income / Average Assets

or, mesuring operating performance independent of company's financing decisions:

.. code::

   ROA  = De-Levered Net Income / Average Assets


   De-Levered Net Income = Net Income + (1-t) * Interest Expense
   where:
     t = tax rate

Keep in mind that if the following is used a correction factor will also need to be used to calculate the ROE in the end.


**2. Financial Leverage**: How much do the managers use debt to increase available assets for a given level of shareholder investment.

.. code::

   Financial leverage = Average Assets / Average Shareholders Equity

This is different from Debt to Equity ratio.

|roe|_

.. |roe| image:: ./intro-to-financial-accounting/roe-framework.png
.. _roe: https://www.coursera.org/learn/wharton-accounting/lecture/0mA3B/4-1-overview-of-ratio-analysis

Two drivers for ROA:

**1. Profitability**: Profit earned on each dollar of sales, **Return on Sales**:

.. code::

   ROS = Net Income / Sales

**2. Efficiency**: Sales generated based on the available resources, **Asset Turnover**:

.. code::

   ATO = Sales / Average Assets

|dupont|_

.. |dupont| image:: ./intro-to-financial-accounting/dupont.png
.. _dupont: https://www.coursera.org/learn/wharton-accounting/lecture/0mA3B/4-1-overview-of-ratio-analysis


**Asset Turnover Analysis**:

Better than looking at ratios, we look at number of days when something happens:

- Days Receivables: 365 * (Avg. AR / Sales)
- Days Inventory: 365 * (Avg. Inventory / COGS)
- Days Payable: 365 * (Avg. AP / Purchases)
- Net Trade Cycle: Days Receivable + Days Inventory - Days Payable

|lr|_

.. |lr| image:: ./intro-to-financial-accounting/liquidity-ratios.png
.. _lr: https://www.coursera.org/learn/wharton-accounting/lecture/ggAxl/4-4-plainview-technology-case-part-3

**Short Term Liquidity Ratios**:

Current Ratio: Current Assets /Current Liablities
Quick Ratio: (Cash + AR) / Current Liablities
CFO to Current Liabilities: Cash from Ops / Avg. Current Liablities

**Interest Coverage Ratios**:

- Interest Coverage: Ops Income before Depreciation / Interest Expense
- Cash Interest Coverage:  (Cash from Ops + Cash Interest Paid + Cash Taxes) / Cash Interest Paid

**Long Term Debt Ratios**:

- Debt to Equity: Total Liabilities / Shareholders' Equity or Total Liabilities / Total Assets
- Long-Term-Debt to Equity: Total Long-Term Debt / Total Stockholders' Equity
- Long-Term-Debt to Tangible Assets: Total Long Term Debt / (Total Assets - Intangible Assets). This is the borrowing power based on collatoralizable assets.
