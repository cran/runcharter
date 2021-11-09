## ---- echo = FALSE------------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.path = "man/figures/"
)

## ----not-enough-data, fig.height=5, fig.width=8-------------------------------
library(runcharter)
library(data.table)

testdf <- signals # rename the built in data set
setDT(testdf)
testdf <- testdf[grp == "WardX",head(.SD,7)]

 runcharter(testdf,
  med_rows = 0,
  runlength = 0,
  direction = "both",
  datecol = date,
 grpvar = grp,
  yval = y,
  facet_cols = 1,
  chart_breaks = ("1 month"))



## ----baseline-data, fig.height=5, fig.width=8---------------------------------
library(runcharter)
library(data.table)

testdf <- signals # rename the built in data set
setDT(testdf)
testdf <- testdf[grp == "WardX",head(.SD,13)]

 runcharter(testdf,
  med_rows = 13,
  runlength = 0,
  direction = "both",
  datecol = date,
 grpvar = grp,
  yval = y,
  facet_cols = 1,
  chart_breaks = ("1 month"))

## ----random-variation, fig.height=5, fig.width=8------------------------------
library(runcharter)
library(data.table)

testdf <- signals # rename the built in data set
setDT(testdf)
testdf <- testdf[grp == "WardX",head(.SD,30)]

 runcharter(testdf,
  med_rows = 13,
  runlength = 9,
  direction = "below",
  datecol = date,
 grpvar = grp,
  yval = y,
  facet_cols = 1,
  chart_breaks = ("3 months"))


## ----road-to-improvement, fig.height=5, fig.width=8---------------------------
library(runcharter)
library(data.table)

testdf <- signals # rename the built in data set
setDT(testdf)
testdf <- testdf[grp == "WardX",head(.SD,40)]

 runcharter(testdf,
  med_rows = 13,
  runlength = 9,
  direction = "below",
  datecol = date,
 grpvar = grp,
  yval = y,
  facet_cols = 1,
  chart_breaks = ("3 months"))

## ----run-noted, fig.height=5, fig.width=8-------------------------------------
testdf <- signals # rename the built in data set
data.table::setDT(testdf)
testdf <- testdf[grp == "WardX",head(.SD,44)]

 runcharter(testdf,
  med_rows = 13,
  runlength = 9,
  direction = "below",
  datecol = date,
 grpvar = grp,
  yval = y,
  facet_cols = 1,
  chart_breaks = ("3 months"))

## ----improvement-noted, fig.height=5, fig.width=8-----------------------------
testdf <- signals # rename the built in data set
data.table::setDT(testdf)

 runcharter(testdf[grp == "WardX",],
  med_rows = 13,
  runlength = 9,
  direction = "below",
  datecol = date,
 grpvar = grp,
  yval = y,
  facet_cols = 1,
  chart_breaks = ("6 months"))


