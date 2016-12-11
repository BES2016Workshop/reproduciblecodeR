Tidying Data
============

[“Tidy datasets are all alike but every messy datset is messy in its own
way” (Hadley Wickham,
2014)](http://vita.had.co.nz/papers/tidy-data.html)

Key features of tidy data are:

-   Observations in rows
-   Variables in columns
-   Each type of observational unit is a table

![](./assets/tidy_data.png)

Messy data can take many forms. For example:

-   Column headers are values, not variable names
-   Multiple variables stored in one column
-   Variables stored in both rows and columns
-   Multiple observational unit types in the same table
-   Single observational unit in multiple tables

Let's explore the data we loaded in the last exercise:

    # get the structure of the dataframe
    str(iris)

    ## 'data.frame':    200 obs. of  4 variables:
    ##  $ measurement: Factor w/ 200 levels "sample1_Petal.Length",..: 1 2 3 4 5 6 7 8 9 10 ...
    ##  $ setosa     : num  1.4 0.2 5.1 3.5 1.5 0.1 4.9 3.1 1.5 0.2 ...
    ##  $ versicolor : num  4.7 1.4 7 3.2 3.9 1.4 5.2 2.7 3.5 1 ...
    ##  $ virginica  : num  6 2.5 6.3 3.3 6.1 2.5 7.2 3.6 5.1 2 ...

    # head gives us the first 6 rows to explore 
    head(iris)

    ##             measurement setosa versicolor virginica
    ## 1  sample1_Petal.Length    1.4        4.7       6.0
    ## 2   sample1_Petal.Width    0.2        1.4       2.5
    ## 3  sample1_Sepal.Length    5.1        7.0       6.3
    ## 4   sample1_Sepal.Width    3.5        3.2       3.3
    ## 5 sample10_Petal.Length    1.5        3.9       6.1
    ## 6  sample10_Petal.Width    0.1        1.4       2.5

Here we have three characteristics of messy data:

-   Species names (which are values) as column headers
-   Multiple variables stored in one column: sample number and
    measurement type as a compound variable
-   Variables (the measurement types) are stored in rows instead of
    columns

The [tidyr](https://blog.rstudio.org/2014/07/22/introducing-tidyr/)
package provides functions to fix many of the issues in messy datasets.

-   `gather()` takes multiple columns and gathers them into
    key-value pairs. We can use this to get the species names into rows.

-   `separate()` takes one column and separates into multiple columns.
    We can use this to split the sample number from the
    measurement type.

-   `spread()` takes two columns (a key-value pair) and spreads them
    into multiple columns. We can use this to get the measurement types
    to form columns.

Two other useful packages for tidying data are
[lubridate](https://cran.r-project.org/web/packages/lubridate/lubridate.pdf)
for working with dates and
[taxize](https://ropensci.org/tutorials/taxize_tutorial.html) for
cleaning taxonomic information.

> ### Challenge
>
> In a new code chunk in your R Notebook, load the tidyr package using
> `library(tidyr)` and use the suggested functions to get the data into
> tidy data format.
>
> **HINT** Use `?` to get help on how to use a function (e.g.
> `?separate`)

**Next:** [Manipulating and summarising data](./summarising_data.md)
