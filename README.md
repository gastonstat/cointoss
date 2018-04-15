
<!-- README.md is generated from README.Rmd. Please edit that file -->

## Overview

`"cointoss"` is a minimal [R](http://www.r-project.org/) package that
provides functions to simulate tossing a coin.

  - `coin()` creates a coin object (of class `"coin"`)
  - `toss()` tosses a coin object, producing a `"toss"` object.
  - `plot()` method for a `"toss"` object to plot frequencies of heads.
  - `summary()` method for a `"toss"` object.

## Motivation

This package has been developed to illustrate some of the concepts
behind the creation of an R package.

## Installation

Install the development version from GitHub via the package
`"devtools"`:

``` r
# development version from GitHub:
#install.packages("devtools") 

# install "cointoss" (without vignettes)
devtools::install_github("gastonstat/cointoss")

# install "cointoss" (with vignettes)
devtools::install_github("gastonstat/cointoss", build_vignettes = TRUE)
```

## Usage

``` r
library(cointoss)

# default coin
coin1 <- coin()
coin1
#> object "coin"
#> 
#> "heads", p = 0.5 
#> "tails", p = 0.5

# 1 toss of coin1
toss(coin1)
#> object "toss"
#> 
#> coin: "heads", "tails" 
#> total tosses: 1 
#> num of heads: 1 
#> num of tails: 0

# 10 tosses of coin1
toss10 <- toss(coin1, times = 10)
toss10
#> object "toss"
#> 
#> coin: "heads", "tails" 
#> total tosses: 10 
#> num of heads: 1 
#> num of tails: 9

# summary
summary(toss10)
#> summary "toss"
#> 
#>    side count prop
#> 1 heads     1  0.1
#> 2 tails     9  0.9


# 100 tosses
toss100 <- toss(coin1, times = 100)

# summary
summary(toss100)
#> summary "toss"
#> 
#>    side count prop
#> 1 heads    52 0.52
#> 2 tails    48 0.48
```
