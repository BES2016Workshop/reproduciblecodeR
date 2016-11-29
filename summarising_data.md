Manipulating and summarising data
=================================

Once we have tidy data, we need to be able to apply data transformation
functions to subset, order, summarise and create new variables. tidyr
has as it's compliment the
[dplyr](https://cran.rstudio.com/web/packages/dplyr/vignettes/introduction.html)
package.

dplyr includes the following data transformation functions:

-   `select()` subset the columns of the data by selecting variables
-   `filter()` subset the rows of the data by a condition
-   `group_by()` groups data by one or more variables
-   `summarise()` summarise data by functions of choice (e.g. `mean()`,
    `max()`, `sd()`)
-   `arrange()` order data by a variable
-   `join()` joining two dataframes
-   `mutate()` create new variables
-   `summarise_each()` and `mutate_each` allow for applying functions to
    one or more columns

tidyr and dplyr also include the `%>%` pipe function. This takes the
output of the previous command and 'pipes' it as the input into the next
command. This is neater than using a nested approach to commands, and
removes the need to create intermediate output files.

A brief example using the built-in `mtcars` data:

    ## Warning: package 'dplyr' was built under R version 3.3.2

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

    data(mtcars)
    mtcars_summary <- group_by(mtcars, cyl) %>%
      summarise(mean_mpg = mean(mpg), sd_mpg = sd(mpg))
    mtcars_summary

    ## # A tibble: 3 × 3
    ##     cyl mean_mpg   sd_mpg
    ##   <dbl>    <dbl>    <dbl>
    ## 1     4 26.66364 4.509828
    ## 2     6 19.74286 1.453567
    ## 3     8 15.10000 2.560048

Here we have the mean and standard deviation of MPG for each number of
cylinders.

> ### Worked example
>
> In a new code chunk in your R Notebook, calculate the mean and
> standard deviation for each of the measured variables, grouped by
> species.
>
> **HINT** Use `summarise_each` rather than multiple calls to summarise.

**Next:** [Tidying model output](./tidying_output.md)
