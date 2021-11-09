## ---- echo = FALSE------------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.path = "man/figures/"
)

## ----pipe, fig.height=5, fig.width=8------------------------------------------
library(runcharter)

testdf <- signals # rename the built in data set

class(testdf) # note class of tibble, tbl_df and dataframe

testdf %>% runcharter(
           direction = "both",
           datecol = date,
           grpvar = grp, 
           yval = y,
           facet_cols = 2)

# results class data.table

## ----run-below, fig.height=5, fig.width=8-------------------------------------
library(runcharter)
runcharter(signals ,med_rows = 13,
runlength = 9,
direction = "below",
datecol = date,
grpvar = grp,
yval = y,
chart_title = "Analysis of runs below median",
chart_subtitle = "Example plot",
chart_caption = "analysed with runcharter",
chart_breaks = "6 months")

## ----runs-above, fig.height=5, fig.width=8------------------------------------
library(runcharter)
runcharter(signals,
           direction = "above",
           datecol = date,
           grpvar = grp, 
           yval = y,
           facet_cols = 2)


## ----both-directions, fig.height=5, fig.width=8-------------------------------
library(runcharter)
signals %>% runcharter(
           direction = "both",
           datecol = date,
           grpvar = grp, 
           yval = y,
           facet_cols = 2)

## ----multiple-runs, fig.height=5, fig.width=8---------------------------------
signals %>% 
  runcharter(med_rows = 7,
             runlength = 5, 
             datecol = date,
              grpvar = grp, 
              yval = y,
             direction = "both")

## ----factor-handling, fig.height=5, fig.width=8-------------------------------
library(NHSRdatasets)
library(runcharter)

LOSdata <- data.table::copy(LOS_model)
utils::str(LOSdata) # note that Organisation is an ordered factor, not character

LOSdata %>% runcharter(med_rows = 9,
                   runlength = 9,
                   direction = "both",
                   datecol = ID,
                   grpvar = Organisation,
                   yval = LOS)




## ----analysis_off, fig.width=8------------------------------------------------
library(runcharter)
signals %>% 
  runcharter(med_rows = 13,
             runlength = 0, 
             datecol = date,
              grpvar = grp, 
              yval = y,
             direction = "both")


## ----med_row-0, fig.width=8---------------------------------------------------
library(runcharter)
signals %>% 
  runcharter(med_rows = 0,
             runlength = 9, 
             datecol = date,
              grpvar = grp, 
              yval = y,
             direction = "both")


