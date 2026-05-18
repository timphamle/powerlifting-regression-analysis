# Powerlifting Performance Regression Analysis

**Authors: Tim Le and Sophie Xu**

## Summary

This project used data from the World University Powerlifting Cup hosted
by the International Powerlifting Federation (IPF) from the past 8 years
(2017-2019, 2021-2025).

Using this data we aimed to answer: 

**What is the most parsimonious combination of predictors such as bodyweight, sex, age, and home-country advantage that best predict a lifter's best lift in the squat, bench press, and deadlift (SBD) out of their three attempts?**

Using an iterative refinement process to find the three most parsimonious models among the outcomes (Best3SquatKg, Best3BenchKg, Best3DeadliftKg) on three univariate generalized least squares models account for variance among the sex of lifters, we concluded the following:

- For **Best3SquatKg** and **Best3DeadliftKg**, the most parsimonious set of 
predictors include the **additive predictors of bodyweight, sex, age, and a 
binary indicator of whether or not the meet occurred in their home country.**

- For **Best3BenchKg**, its most parsimonious set of predictors include **all the
previous additive predictors and a sex interaction on bodyweight.** 

These results demonstrate that it is important for strength coaches and athletes to monitor strength relative to bodyweight and recognize that expected performance gains with increased bodyweight differ between men and women, particularly for bench press.

## Reproducible instructions

The data was taken from the [OpenPowerlifting Data Service](https://openpowerlifting.gitlab.io/opl-csv/introduction.html), specifically, we filtered for competitions with the name World University Powerlifting Cup from the past 8 years.

To run the analysis locally, install the required R packages with `install_deps.R`.

All libraries used included: readr, tidyverse, dplyr, knitr, broom, patchwork, corrplot, rstatix, kableExtra, and nlme.
