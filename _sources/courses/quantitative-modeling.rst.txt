Introduction to Quantitative Modeling
=====================================

.. post:: 30/12/2020
   :tags: courses

:Offered By: Wharton, University of Pennsylvania
:Website: https://www.coursera.org/learn/wharton-quantitative-modeling
:Hours required: 7

The modeling activity is an iterative process.

Different types of models:

- Linear
- Power
- Exponential
- Logarithmic


Models are never exactly right - but they can be useful.

Models approximate the reality so they help with forecasting, predictions, optimizations, etc.

Linear Models and Optimization
------------------------------

Linear models are building blocks of all models - the simplest function.

**Optimization**: Which set of inputs give you the maximum or minimum of the output?

In this course, it is done using a classical technique i.e. using calculus.

Minima/maxima using calculus can be found by calculating a derivative of function f(x) and equating it to 0 to find x, or briefly: what is the value of x when f'(x) = 0.
Example: If we have profit and price, then profit is maximized when the rate of change of profit with respect to price is 0.

Another technique that uses linear functions and works with constraints is **Linear Programming (LP)**:

- Used to solve optimization problems
- Incorporates constraints


**Present and Future Value**
Time value of Money!
We need to create a time base line to compare value i.e. either convert to future value or convert to present value.


"An **annuity** is a schedule of fixed payments, over a specified and finite time period."

"And so, to value an annuity, you need to do a present value calculation. You basically create the present value of each of the installments and sum up those present values, and that gives you the present value of an annuity."

Discounting is also used for comparing customers. Customers will generate different revenue at different times so if we need an apples to apples comparison, we need to discount the revenue / calculate the present value for the money and compare the customers.

**Continuous Time Growth Function**: if there are no intervals and growth is compounded, then we reach the limit *e* used as a constant in the growth function.

**Nominal Value**: Original, unadjusted value.

**Price Elasticity**: ".. is the degree to which the effective desire for something changes as its price changes" https://en.wikipedia.org/wiki/Price_elasticity_of_demand

Intro to Probabilistic Models
-----------------------------

Require **random variables** and **probability distributions**.


Examples:

- Regression Models
- Probability Trees
- Monte Carlo simulation
- Markov Models (dynamic model, looking at a process through various states)

**Regression**: "Regression is a statistical method used in finance, investing, and other disciplines that attempts to determine the strength and character of the relationship between one dependent variable (usually denoted by Y) and a series of other variables (known as independent variables)." `Investopedia`_

.. _Investopedia: https://www.investopedia.com/terms/r/regression.asp#:~:text=Regression%20is%20a%20statistical%20method,(known%20as%20independent%20variables).

"The word ‘regression’ was used to Sir Francis Galton to describe the relationship between heights of parents and their children. Tall parents tend to have tall children, but shorter than themselves while short parents tend to have short children, but taller than themselves. He called this ‘regression towards mediocrity’. This is known as the ‘regression effect’ and generally applies to a regression when both explanatory and response variables are repeated measurements on the same object (in this case families). The strange thing is that we can exchange the words ‘parents’ and ‘children’ so, for example, tall children tend to have shorter parents and tall parents tend to have shorter children." https://qr.ae/pN2io0

**Probability Tree**: Example, notice program to deter from sharing illegal content.

**Markov Chain Models**: Give a probability to every state change. Markov proper is lack of memory i.e. decisions are only based on the current state and not the previous states.


Probability Distributions
-------------------------

**Bernoulli Distribution**
The most elemental of all distributions. The Bernoulli random variable X can one of two values.
It is a building block of other distributions
Example: customer buys or doesn't buy the product.

**Binomial Distribution**
Binomial random variable is the sum of n independent trials.

**Normal Distribution**
Characterized by mean and standard deviation.

**Empirical Rule**: If you believe that the underlying process or data can be
 well-approximated with a normal distribution, then it helps to calculate
 probabilities. One sd, is 60%, Two sd is 95% and 3 sd is 99.7%.

**Z-score**: How many sd something is away from the mean? Z = (value - mean) / sd 


Introduction to Regression Model
--------------------------------
Simple linear model: y = mx + b, but using a different notation for **Expected value of Y given X**:

.. code::

   E(Y|X) = b0 + b1 X

This helps with multiple regression (many predictors) with multiple Xs so we need b2, b3, etc.

**Correlation**: -1 < r < 1. 0 Means no 'linear' correlation.
How to calculate it?

**Residuals** (distance from the line to the actual data point) are an important part of the regression model. They can provide us with insight as to how we should update our model, what other predictors we need to incorporate to better fit the data.

**Summarizing a linear regression**: Two number summaries are:

- **R²**: Proportion of variability and Y explained by X. Higher value is better. Measured in %. It is not an absolute summary (no units) but should be used for comparisons.
- **RMSE (Root Mean Squared Error)**: Measures the standard deviation of the residuals. It has the units of Y. Lower values are preferable i.e. less deviation.

*How to approximate 95% prediction interval for a new observation*:
- If the observation is within the range of the data (so as long as we are interpolating) that was used for the linear regression, and
- relying on the empirical rule
- then getting a 95% prediction interval will be 2 * sd i.e.

.. code::

   Predecition = ±2*RMSE

**Regression equation for the log-log model**: Expected log of Sales:

.. code::

   E(log(Sales) | Price) = b₀ + b₁log(Price)

**Linear vs Logistic Regression**: Linear regression is used when the output is continuous. For discrete output or more specifically a dichotomous output, we use logistic regression. E.g. yes/no outcome i.e. bernoulli random variable.


Logistic regrssion fits the data like a 'S' shaped curve giving us the outcomes between 0 to 1 probabilities.
