---
title       : Poisson Calculator
subtitle    : 
author      : gpine
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : mathjax       # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Overview

The Poisson Calculator has:
* a useful functionality
* a clean, simple interface

--- .class #id 

## Why use the calculator?

* The poisson distribution alerts one to the probability of obtaining a particular count during an observation, given an expected value. 
* So if one expects to sell 20 cars in a day based on the historical average, we can estimate the likelihood of selling, say, 21 cars on a given day.
* We can also estimate the cumulative likelihood of selling _up to_ 21 cars in a day.

---

## Poisson Formula

Say, as in the previous slide, we have the following:

* A random variable $X$ representing the amount of cars sold in a day.
* $\lambda = E\left( x \right)$ is the expected value of $X$.
* $k$ is the value of $X$ we want to test.

We use the poisson formula $f(k; \lambda)= \Pr(X=k)= \frac{\lambda^k e^{-\lambda}}{k!}$ to determine the poisson probability.
We then calculate the cumulative probability by summing the probabilities from 0 to $k$.

---

## Sample calculation

In our example we have the following:

* $\lambda = 20$
* $k = 21$

We thus use the Poisson formula and do the calculations to get our answers. First is the probability for $k = 21$; second is the cumulative probability up to 21.


```
## [1] 0.08460506
```

```
## [1] 0.6436976
```

