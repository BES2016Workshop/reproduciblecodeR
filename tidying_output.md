Tidying model output
====================

In this section, we will run a basic linear model and programatically
tidy the output from the model.

Again using the `mtcars` data, see an example of the output from a
linear model:

    data(mtcars)
    lmfit <- lm(mpg ~ wt, data = mtcars)
    summary(lmfit)

    ## 
    ## Call:
    ## lm(formula = mpg ~ wt, data = mtcars)
    ## 
    ## Residuals:
    ##     Min      1Q  Median      3Q     Max 
    ## -4.5432 -2.3647 -0.1252  1.4096  6.8727 
    ## 
    ## Coefficients:
    ##             Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)  37.2851     1.8776  19.858  < 2e-16 ***
    ## wt           -5.3445     0.5591  -9.559 1.29e-10 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 3.046 on 30 degrees of freedom
    ## Multiple R-squared:  0.7528, Adjusted R-squared:  0.7446 
    ## F-statistic: 91.38 on 1 and 30 DF,  p-value: 1.294e-10

While this summary is useful for assessing the output of a single model,
it can become quite difficult once the number of models starts to
increase. This is where the
[broom](https://cran.r-project.org/web/packages/broom/vignettes/broom.html)
package comes in handy. This package provides functions to convert model
coefficient estimates, predicted values and residuals, and summary
statistics to data frames.

    library(broom)
    # we can view a table of the coefficient estimates and p values
    tidy(lmfit)

    ##          term  estimate std.error statistic      p.value
    ## 1 (Intercept) 37.285126  1.877627 19.857575 8.241799e-19
    ## 2          wt -5.344472  0.559101 -9.559044 1.293959e-10

    # we can view a table of the fit statistics
    glance(lmfit)

    ##   r.squared adj.r.squared    sigma statistic      p.value df    logLik
    ## 1 0.7528328     0.7445939 3.045882  91.37533 1.293959e-10  2 -80.01471
    ##        AIC      BIC deviance df.residual
    ## 1 166.0294 170.4266 278.3219          30

The functions from the broom package work on most classes of model
output.

> ### Challenge
>
> In a new code chunk in your R Notebook load the broom package with
> `library(broom)` and using the `lm()` and `tidy()` functions, fit a
> linear model relating petal length to petal width and output the table
> of coefficients.

**Next:** [Plotting](./plotting.md)
