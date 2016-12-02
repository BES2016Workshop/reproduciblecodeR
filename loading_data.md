# Loading Data

R packages exist to load in pretty much any form of data you can think of. Some key examples include:

- [readr](https://cran.r-project.org/web/packages/readr/README.html) tends to work faster and have more functionality for flat files (.csv, .txt) than base R (useful for big files)
- [readxl](https://blog.rstudio.org/2015/04/15/readxl-0-1-0/) for Excel spreadsheets
- [RODBC](https://cran.r-project.org/web/packages/RODBC/RODBC.pdf) for many types of database including Access
- [RPostgreSQL](https://www.r-bloggers.com/getting-started-with-postgresql-in-r/) for PostgreSQL databases
- [googlesheets](https://cran.r-project.org/web/packages/googlesheets/googlesheets.pdf) to interface with Google sheets
- [raster](https://cran.r-project.org/web/packages/raster/raster.pdf) and [rgdal](https://cran.r-project.org/web/packages/rgdal/rgdal.pdf) for spatial data
- [RCurl](https://cran.r-project.org/web/packages/RCurl/RCurl.pdf) contains functions to fetch data from webpages (along with lots more functionality for interfacing with webpages)

To load these packages into your R session use `library()` e.g. `library(RCurl)`

> ### Challenge
>
> In a new code chunk in your R Notebook, download [iris.csv](https://raw.githubusercontent.com/BES2016Workshop/reproduciblecodeR/master/iris.csv) using `getURL()` from the RCurl package, read into R using `read.csv()` and assign to the object name `iris`.
>
> **HINT** Use `df <- read.csv(text = getURL("/url/of/file"))` to read straight into R from webpage (replace `/url/of/file` with location of file). 

**Next:** [Tidying Data](./tidying_data.md)