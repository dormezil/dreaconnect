
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Dreaconnect

<img src="man/figures/logo.png" align="right" height="139" />

<!-- badges: start -->
<!-- badges: end -->

The goal of dreaconnect is to make connecting to database through R
easier. Some basic utility functions such as listing tables in a
database are also included.

## Installation

You can install the development version of dreaconnect from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("dormezil/dreaconnect")
```

## Example

This is a basic example which shows you how to solve a common problem:

Connect to EDW database. Be sure to assign connection to variable for
later use.

``` r
library(dreaconnect)
## Connect to edw tables
edw <- edw_connect()
```

Connect to DEVL database. Be sure to assign connection to variable for
later use.

``` r
library(dreaconnect)
## Connect to devl tables
#devl <- devl_connect()
```

List tables in database:

``` r
#list_tables()
#options include "edw" and "devl". Defaults to "edw"
```

Connect to table:

``` r
#location_dim_db <- table_connect(edw, "location_dim")
#vpk_wide_db <- table_connect(devl, "vpk_wide", "devl")
```
