# Installing the software

Many users of R use it from within another free piece of software called **RStudio.**
RStudio is a powerful and productive user interface for R. It’s free and open source, and works great on Windows, Mac, and Linux.

Rstudio's version control functionality is provided by yet another software called **git**

Our first task, therefore, is to install R, RStudio and git.

### Install R

Install R first. Downloads are available at https://cran.rstudio.com/
  * Direct link for Windows https://cran.r-project.org/bin/windows/base/
  * Direct link for MacOS X https://cran.r-project.org/bin/macosx/
  * Direct link for Linux https://cran.r-project.org/bin/linux/

### Install RStudio

Next, install RStudio. **If you already have RStudio, make sure you have the latest version (1.0.44).** The R Notebook used in later lessons will not work in earlier versions.

* Downloads are available at https://www.rstudio.com/products/rstudio/download/

### Installing R packages

We are going to be using a number of packages in the following example. To install these packages, run the following code in the R console.

`install.packages(c("RCurl", "readr", "tidyr", "dplyr", "broom", "ggplot2", "cowplot"))`

### Install git

Git is one of the most popular version control systems in the world. It is free and open source.

* Windows & OS X: http://git-scm.com/downloads
* Debian/Ubuntu: `sudo apt-get install git-core`
* Fedora/RedHat: `sudo yum install git-core`

To check that the installation worked, open a terminal or command prompt:

**Windows**

* Go to the Start menu
* In the Search or Run line type **cmd** and press enter.

**Mac**

* Go to **Applications** -> **Utilities** -> **Terminal**

Type `git version`. You should see a short message containing some version information.

### Configure git

After installing git, you need to tell it who you are. Open a terminal window or command prompt (see above) and type the following:

```
git config --global user.email "you@youremail.com"
git config --global user.name "Your Name"
```

On succesful completion, you should see no output from these commands.

You can also configure git to use your preferred editor for commit messages, e.g. on a Mac:

```
git config --global core.editor nano
```

or on Windows:

```
git config --global core.editor notepad
```

It's a good idea to follow this step since the default editor selected by git is quite difficult to use!

### Sign up for an account on GitHub

GitHub is a popular online hosting service for git repositories. It provides a useful interface for collaboration and code sharing.

Create a free account on GitHub:

[https://github.com/join](https://github.com/join)

***If you have an academic email account you should use it here.***
GitHub users can create an unlimited number of free, public repositories but only a limited number of private repositories. However, academic users can request access to an unlimited number of free private repositories.

**Optional**

If you are an academic user, sign up for free private repositories here:

[https://education.github.com/discount_requests/new](https://education.github.com/discount_requests/new)

***This requires your account to be associated with an academic email address.***

It may take a while to receive the verification email for this step. Don't worry, we won't need this for the tutorial.