# Installing the software

Many users of R use it from within another free piece of software called **RStudio.**
RStudio is a powerful and productive user interface for R. It’s free and open source, and works great on Windows, Mac, and Linux.

Rstudio's version control functionality is provided by yet another software called **git**

Our first task, therefore, is to install R, RStudio and git.

**Install R**

Install R first. Downloads are available at https://cran.rstudio.com/
  * Direct link for Windows https://cran.r-project.org/bin/windows/base/
  * Direct link for MacOS X https://cran.r-project.org/bin/macosx/
  * Direct link for Linux https://cran.r-project.org/bin/linux/

**Install RStudio**

Next, install RStudio. If you already have RStudio, ensure you have the latest version (1.0.44).

* Downloads are available at https://www.rstudio.com/products/rstudio/download/

**Install git**

Git is one of the most popular version control systems in the world. It is free and open source.

* Windows & OS X: http://git-scm.com/downloads
* Debian/Ubuntu: `sudo apt-get install git-core`
* Fedora/RedHat: `sudo yum install git-core`

**Configure git**

After installing git, you need to tell it who you are. Open a terminal window (**cmd.exe on windows**) and type the following

```
git config --global user.email "you@youremail.com"
git config --global user.name "Your Name"
```

On succesful completion, you should see no output from these commands.

**Installing R packages**

We are going to be using a number of packages in the following example. To install these packages, run the following code in the R console.

`install.packages(c("RCurl", "readr", "tidyr", "dplyr", "broom", "ggplot2", "cowplot"))`

**Next:** [Setting up an R project](./r_project.md)