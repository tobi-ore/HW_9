---
title: "HW_9 CO2"
author: "Amy Hessl"
date: "`r format(Sys.time(), '%d %B, %Y')`"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

You will need to install and load these packages to get this .Rmd to render figures:
```{r, libraries}
library(markdown)
library(knitr)
library(kableExtra)
```

For this assignment, please use the file _data/co2_emissions_tonnes_per_person_gapminder.csv_
You will collaborate with a partner to complete the homework. As with the previous assignment, each student should complete the assignment first, then you should merge your answers on one student's cloned HW_9 repository.  Finally, the host student should make a pull request to submit your answers. 
Turn in a _.Rmd_ file that is well-formatted and documented.

*Some Hints on Tables in Rmd:*
For fancy styling of tables for html output from .Rmd, try the kable() function in knitr package:
```
kable(my_tab)
```

Or even fancier, use the kablextra package:
```
my_tab %>%
  kable() %>%
  kable_styling()
```


***
### Questions:

1. Are the data in a flat file format? 

2. What is the structure of the data?  Are there any variables you might need to convert prior to manipulating the data?

3. What countries had per capita emissions larger than the 95th percentile in 2014? Make a table of their names and per capita emissions. Hint: Use quantile() to find the 95% cutoff.

Your table should look something like this:
```{r, echo=FALSE}
cntrys <- rep("country", 5)
dat <- rep("NA", 5)
ex_tab <- data.frame("Country"=dat, "PerCapEmissions 2014"=dat)
ex_tab %>%
  kable() %>%
  kable_styling()
```

4. Make a table comparing the per capita emissions of the US and the world's highest per capita emitter (from above)  in 1925, 1950, and 2014.  

Your finished product might look something like this:
```{r, echo=FALSE}
dat <- rep("NA", 3)
ex_tab <- data.frame("TopCountry"=dat, "United States"=dat)
row.names(ex_tab) <- c("1925", "1950", "2014")
ex_tab %>%
  kable() %>%
  kable_styling()

```

