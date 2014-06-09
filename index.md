---
title       : Another Introductory R Session
subtitle    : Getting You "R Aware" And Beyond
author      : Christopher Meaney
job         : Biostatistician, University of Toronto
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax] # {mathjax, quiz, bootstrap}
ext_widgets: {rCharts: [libraries/nvd3]}
mode        : selfcontained # {standalone, draft}



--- .nobackground 

## Overview of Workshop

1. A Quick Intro to Everything R 
2. Data Structures 
3. Control Structures
4. User Defined Functions
5. Working with Strings
6. Data Manipulation 
7. Advanced Data Manipulation (plyr and reshape)
8. Random Number Generation
9. Input/Output in R (Connections)
10. R Graphics (Traditional graphics, grid graphics, lattice and ggplot2)
11. Descriptive Statistics
12. Inference: Estimation and Hypothesis Testing
13. Regression Models in R


--- .nobackground 

## Overview of Workshop

The workshop has been divided into 13 modules. 

Flow of workshop:
* Step 1: Didactic lecture introducing concepts in each module
* Step 2: Lab session where participants work on problems related to each module
* Repeat 13 times and we're done!!

The workshop takes place over two days, and my goal for presenting the materials is as follows:
* Complete modules 1-8 on day 1: A more computer science oriented day.
  * Examples in this section of the workshop tend to be small and [reproducible](http://stackoverflow.com/questions/5963269/how-to-make-a-great-r-reproducible-example). 
* Compelte modules 9-13 on day 2: A more statistics oriented day.
  * Examples in this section tend to be larger and use real datasets.

Feel free to ask questions at any time!!

--- .segue .dark

## What is R?




--- .nobackground 

## So What is R?

[The R Project for Statistical Computing](http://www.r-project.org/about.html) state the following: "R is a language and environment for statistical computing and graphics. It is a GNU project which is similar to the S language and environment which was developed at Bell Laboratories. The S language is often the vehicle of choice for research in statistical methodology, and R provides an Open Source route to participation in that activity. R, like S, is designed around a true computer language, and it allows users to add additional functionality by defining new functions. Many users think of R as a statistics system. We prefer to think of it of an environment within which statistical techniques are implemented."

[Wikipedia](http://en.wikipedia.org/wiki/R_(programming_language\)) defines R as: "...a free software programming language and software environment for statistical computing and graphics."

The folks at [Inside-R](http://www.inside-r.org/what-is-r) give the following definition: "...R is a complete, interactive, object-oriented language: designed by statisticians, for statisticians. The language provides objects, operators and functions that make the process of exploring, modeling, and visualizing data a natural one. Complete data analyses can often be represented in just a few lines of code." 





--- #myslide

## Revolution Analytics Take on R

<script>
$('#myslide').on('slideenter', function(){
  $(this).find('article')
    .append('<iframe width="640" height="360" src="http://www.youtube.com/embed/TR2bHSJ_eck?feature=player_detailpage" frameborder="0" allowfullscreen></iframe>')
});
$('#myslide').on('slideleave', function(){
  $(this).find('iframe').remove();
});
</script>



--- .segue .dark

## Why Bother Learning R?



--- .nobackground

## What Some Bloggers are Saying About R

Francis Smith gives 5 good reasons to learn R:

1. R is free
2. R is popular
3. R is powerful
4. R is flexible
5. R is well supported

Check out his full blog post [here](http://www.econometricsbysimulation.com/2014/03/why-use-r-five-reasons.html)

David Smith speaks to some of the economic incentives associated with learning R [here](http://blog.revolutionanalytics.com/2014/02/r-salary-surveys.html). Basically, R is a highly valued skill in today's labour market! (And those are the types of skills educators/universities should be teaching students!)



--- .nobackground

## Some More Reasons to Learn R

This comes from the [inside-R](http://www.inside-r.org/why-use-r) folks again:

1. R is free
2. R is a language
3. Graphics and data visualization
4. A flexible toolkit for data visualization
5. Access to powerful and cutting edge analytics
6. A robust and vibrant community
7. Unlimited possibilities



--- .nobackground

## And Even More Reasons to Learn R

This time we get [Revolution Analytics](http://www.revolutionanalytics.com/what-r) take again:

1. Every data analytics technique at your fingertips
2. Create beautiful and unique data visualizations
3. Get better results faster
4. Draw on the talents of top data scientists worldwide



--- .nobackground

## Learning R Might Not be a "Walk in the Park"

Tal Yorkini shares his struggles in the following quote: "\...Anyway, this anecdote is basically a microcosm of my entire experience with R. I suspect many other people will relate. Basically what it boils down to is that R gives you a certain amount of rope to work with. If you don’t know what you’re doing at all, you will most likely end up accidentally hanging yourself with that rope. If, on the other hand, you’re a veritable R guru, you will most likely use that rope to tie some really fancy knots, scale tall buildings, fashion yourself a space tuxedo, and, eventually, colonize brave new statistical worlds. For everyone in between novice and guru (e.g., me), using R on a regular basis is a continual exercise in alternately thinking “this is fucking awesome” and banging your head against the wall in frustration at the sheer stupidity (either your own, or that of the people who designed this awful language). But the good news is that the longer you use R, the more of the former and the fewer of the latter experiences you have. And at the end of the day, it’s totally worth it: the language is powerful enough to make you forget all of the weird syntax, strange naming conventions, choking on large datasets, and issues with data type conversions."

Again, the whole article can be accessed at his blog [here](http://www.talyarkoni.org/blog/2012/06/08/r-the-master-troll-of-statistical-languages/).




--- .segue .dark

## Getting Started with R




--- .nobackground

## We All Have to Start Our R Journey Somewhere...

Your first task will be to locate and download the version of R which is compatible with your computers operating system and hardware specifications.

* Windows users can download R [here](http://cran.r-project.org/bin/windows/)
* Mac users can download R [here](http://cran.r-project.org/bin/macosx/)
* Linux users can download R [here](http://cran.r-project.org/bin/linux/)

Relevant information about the installation process can be found at the [R Project](http://www.r-project.org) website.

[CRAN](http://cran.utstat.utoronto.ca) (the Comprehensive R Archive Network) will have a lot of similarly valuable information. n.b. You should usually/always choose to download R files from your (geographically) closest CRAN mirror. For us, that's the utstat CRAN mirror hosted by the folks from the Department of Statistics at the University of Toronto.  





--- .nobackground

## Learning Materials on the R Project Website

R core team members have spent time creating a series of comprehensive and well written manuals relevant to all those attempting to learn the R language. Check em out at the links given below:

1. [An Introduction to R](http://cran.r-project.org/doc/manuals/r-release/R-intro.pdf) 
2. [R Installation and Administration](http://cran.r-project.org/doc/manuals/r-release/R-admin.pdf)
3. [Writing R Extensions](http://cran.r-project.org/doc/manuals/r-release/R-exts.pdf) 
4. [The R Language Definition](http://cran.r-project.org/doc/manuals/r-release/R-lang.pdf)
5. [R Internals](http://cran.r-project.org/doc/manuals/r-release/R-ints.pdf)
6. [R Reference Index](http://cran.r-project.org/doc/manuals/r-release/fullrefman.pdf) n.b. This is a 9Mb download (be patient).





--- .nobackground

## Other Great Sources of R Information

The Internet is a great resource of R information. Some of my favourite R related sites include:

* [The R Project for Statistical Computing](http://www.r-project.org)
* [CRAN task views](http://cran.r-project.org/web/views/)
* [http://www.rseek.org](http://www.rseek.org)
* [http://www.inside-r.org/](http://www.inside-r.org/)
* [http://crantastic.org](http://crantastic.org)
* [http://www.statmethods.net](http://www.statmethods.net)
* [http://www.r-bloggers.com](http://www.r-bloggers.com)
* [http://stats.stackexchange.com](http://stats.stackexchange.com)
* [http://stackoverflow.com](http://stackoverflow.com)

The list is above is by no means "complete". If you're totally lost on what to do in R a quick [google](www.google.ca) search is usually a good first place to start. 



--- .nobackground

## Some of the Books I Used to Learn R 

* [Introductory Statistics with R. Peter Dalgaard](http://www.amazon.com/Introductory-Statistics-R-Computing/dp/0387790535/ref=sr_1_1?ie=UTF8&qid=1400472149&sr=8-1&keywords=dalgaard)
* [Modern Applied Statistics with S. Bill Venables & Brian Ripley](http://www.amazon.com/Modern-Applied-Statistics-Computing/dp/0387954570/ref=sr_1_1?ie=UTF8&qid=1400472198&sr=8-1&keywords=modern+applied+statistics+with+s)
* [R Graphics. Paul Murrell](http://www.amazon.com/Graphics-Second-Edition-Chapman-Series/dp/1439831769)
* [R Graphics Cookbook. Winston Chang](http://www.amazon.com/R-Graphics-Cookbook-Winston-Chang/dp/1449316956/ref=sr_1_1?ie=UTF8&qid=1400472251&sr=8-1&keywords=r+graphics+cookbook)
* [ggplot2: Elegant Graphics for Data Analysis. Hadley Wickham](http://www.amazon.com/ggplot2-Elegant-Graphics-Data-Analysis/dp/0387981403/ref=sr_1_1?ie=UTF8&qid=1400472285&sr=8-1&keywords=ggplot2)
* [lattice: Mutlivariate Data Visualization with R. Deepayan Sarkar](http://www.amazon.com/Lattice-Multivariate-Data-Visualization-Use/dp/0387759689/ref=sr_1_1?ie=UTF8&qid=1400472331&sr=8-1&keywords=lattice+data)
* [A First Course in Statistical Programming with R. John Braun & Duncan Murdoch](http://www.amazon.com/First-Course-Statistical-Programming/dp/0521694248/ref=sr_1_1?ie=UTF8&qid=1400472386&sr=8-1&keywords=braun+and+murdoch)
* [Introduction to Scientific Computing and Simulation in R. Owen Jones et al](http://www.amazon.com/Introduction-Scientific-Programming-Simulation-Chapman/dp/1420068725/ref=sr_1_3?ie=UTF8&qid=1400472439&sr=8-3&keywords=scientific+computing+in+r)
* [The Art of R Programming. Norman Matloff](http://www.amazon.com/The-Art-Programming-Statistical-Software/dp/1593273843/ref=sr_1_sc_1?ie=UTF8&qid=1400472502&sr=8-1-spell&keywords=R+matlof)
* [Data Manipulation with R. Phil Spector](http://www.amazon.com/Data-Manipulation-R-Use/dp/0387747303/ref=sr_1_1?ie=UTF8&qid=1400472537&sr=8-1&keywords=R+spector)
* [Software for Data Analysis: Programming with R. John Chambers](http://www.amazon.com/Software-Data-Analysis-Programming-Statistics/dp/0387759352/ref=sr_1_1?ie=UTF8&qid=1400472580&sr=8-1&keywords=R+john+chambers)
* [Advanced R Programming. Hadley Wickham](http://adv-r.had.co.nz)




--- .segue .dark

## Our First R Session




--- .nobackground

## How to Interact with R

There are two ways to conduct statistical analysis in R:
* Interactive mode
* Batch mode

In this talk, we will focus on interactive mode. 

Google "batch processing in R" for more information on running R from the command line. 

And check out the `source()` function for similar (but subtly different) functionality allowing users to submit statements to R via a file. 



--- .nobackground

## How are R works in a Nutshell

R works by using a "read-evaluate-print" loop. 
* You type some statements at the command prompt (or statements are read from a file).
* The parser breaks down syntactically correct statements into machine readable code. 
* The R evaluator executes parsed R expressions and returned values are printed to the console (or some other device) or stored internally as some kind of object. 



--- .nobackground

## Interactive Mode or Scripts

Typically, analysts do NOT type their R statements directly into the console. Rather they write scripts in some sort of a text file which contain the statements which are then passed to the console (evaluator).

There are many popular editors and IDE's (interactive development evironments) which can be used to write these scripts. Some of them include:
* [ESS](http://ess.r-project.org/)
* [VIM](http://www.vim.org/scripts/script.php?script_id=2628)
* [Tinn-R](http://nbcgib.uesc.br/lec/software/editores/tinn-r/en)
* [R Studio](http://www.rstudio.com)


I do not talk about these tools. They are outside the scope of the lecture. Just know they exist and can ehance your workflow. So check em out...

Also, I use syntax highlighting to emphasize R code in this lecture. Simply copy/paste highlighted syntax into your console to reproduce results. 


--- .nobackground

## What Your R Console Looks Like (for Mac OS X)

<div style='text-align: center;'>
    <img height='400' src='/Users/chris/Documents/Rlecture/LectureImages/RConsoleMac.png' />
</div>

Spend some time checking out the drop down menu options. And read the contents printed to the console upon start up.  



--- .nobackground

## Hints About R Functionality Appear at Start-Up

Upon start up the R console lists: R version, copyright information and platform information. These information can be VERY useful when debugging problems in your code. Or when trying to replicate others code. Type `sessionInfo()` in the console for more information. 

Additional information on R licensing is output. Further details can be obtained using the `license()` function. 

Other useful functions include:
* `contributors()`
* `citation()`
* `news()` n.b. This might overload your console window.



--- .nobackground

## Essential Functions for Controlling Your Workspace

The following functions give information about objects in your R session:
* `ls()` and `objects()` functions list objects in a given environment
* `exists()` tests for the existence of certain objects in a given environment
* `serch()` and `searchpaths()` lists attached packages and directory locations
* `rm()` can be used to remove objects from an environment

The following functions get/set working directories for your R session:
* `getwd()` and `setwd()`

One can source a `script.R` file using `source()`

And one can end an R session using `q()`



--- .nobackground

## R Packages

Many operators/functions come shipped with a base R installation. Just type `ls("package:base")` into your console to verify this fact. However, it is often the case that one wants to apply a function to data which is not provided by base R. In this case, one can extend R functionality through user contributed packages.

All packages are listed and must be downloaded from [CRAN](http://cran.utstat.utoronto.ca/)

The following are useful functions for packages management:
* `install.packages()` can be used to download packages
* `library()` or `require()` can be used to load your downloaded package into your current R session
*  `installed.packages()` can be used to list all installed packages in a certain version of R

We will give a more thorough introduction to various R packages later in this talk. 



--- .nobackground

## Getting Help in R

R comes equipped with many useful functions that can be used to obtain help when things aren't going well or when you just need more information. Some useful functions include: 

* `?`
* `help()`
* `help.start()`
* `help.search()`
* `RSiteSearch()`
* `apropos()`
* `demo()`
* `example()`
* `vignette()`

You can also [google](www.google.ca) the `sos` package, which provides a useful set of tools for obtaining help in R. More information on `sos` can be found [here](http://cran.r-project.org/web/packages/sos/vignettes/sos.pdf)




--- .nobackground

## Before Getting Started...Some General R Principles

Everything in R is an object!

In R we often attempt to create objects, applying functions/operators to these objects, and obtaining returned outputs  (perhaps in the form of new objects).

In fact, functions and basic operators are themselves objects in R.

For example: type `?"*"` into the console to read more about the base R arithmetic operators. Further, type `?pi` into the console to learn more about the numeric constant pi. Or type, `?sqrt` to learn more about the square root function.

With these simple facts/tools in mind we will begin our R journey as many people have before us: "Using R as a Big Calculator".








--- .outmargin .codemargin .nobackground

## R Can be Used as a Big Calculator


```r
## Addition
1 + 1
```

```
## [1] 2
```

```r
## Exponentiation followed by multiplication (BEDMAS)
4*5^2
```

```
## [1] 100
```

```r
## Area of a circle of radius r=2
pi*2^2
```

```
## [1] 12.57
```


--- .outmargin .codemargin .nobackground

## R Can be Used as a Big Calculator


```r
## Natural logarithm of 1 multiplied by exponential (function) evaluated at 0
log(1)*exp(0)
```

```
## [1] 0
```

```r
## Factorial of 5
factorial(5)
```

```
## [1] 120
```

--- .outmargin .codemargin .nobackground

## R Can be Used as a Big Calculator (with Objects)


```r
## Addition
a <- 1
b <- 1
a + b
```

```
## [1] 2
```

<br/>
This basic OO example acts to demonstrate a few things:
* `a` is the name of a variable/symbol. It acts as a "container" for the number 1. 
* `b` is the name of a variable/symbol. It acts as a "container" for the number 1.
* `<-` is a the assignment operator.
* After designating `a` and `b` as variables/symbols, the `+` operator/function accepts the two arguments. The R interpretter recognizes the command as a valid R function, evaluates the function call accordingly and returns/prints the function value to the R console. 
* Type the following into the console `"+"(a,b)`. It does the same thing and acts to explicitly demonstrate `+` is a function which can take on arguments `a` and `b`.


--- .outmargin .codemargin .nobackground

## R as a Big Calculator with Objects 


```r
## Area of a circle of radius in the set r=(1,2,3)
radius <- c(1,2,3)
area <- pi*radius^2
cat(area, sep="\n")
```

3.142<br/>12.57<br/>28.27

<br/>
A slightly more complicated OO example:
* Here we start by assigning (`<-`) the values 1, 2, and 3 to a numeric vector (also a "container" for data) of variable name `radius`.
* `c(...)` is a very important function in R which acts to combine numeric, integer, character, logical, complex or raw values into a `vector`. It is an essential building block for other data structures in R.
* Given the vector named `radius` we square (`^2`) all elements and multiply them by `pi` (an internal R Constant). The result is a new object called `area` which we print to the console.



--- .codemargin .outmargin .nobackground

## Some Other Useful R Math Functions 

| Math Functions              |                                     R Command |
|-----------------------------|----------------------------------------------:|
| Arithmetic Math Operators   | `+, -, *, /, ^, %%, %/%`                      |  
| Misc. Math Functions        | `abs(), sqrt(), sign()`                               |
| More Misc. Math Functions   | `ceiling(), floor(), round(), signif(), trunc()` |
| More Misc. Math Functions   | `sum(), diff(), prod(), cumsum(), cumprod()`  |  
| Logarithmic and Exponential Functions | `log(), log2(), log10, exp()`        |  
| Trigonometric Functions     | `sin(), cos(), tan(), asin(), acos(), atan()` |

<br/>
To learn more about base R syntax precedence, math operators, functions and constants type the following help commands into the console:
* ?Syntax
* ?Math
* ?Ops
* ?Special
* ?Constants



--- .outmargn .codemargin .nobackground 

## R Functions for Descriptive Statistics


```r
a <- c(1,2,3,4,5)
mean(a)
```

```
## [1] 3
```

```r
median(a)
```

```
## [1] 3
```

```r
var(a)
```

```
## [1] 2.5
```

```r
sd(a)
```

```
## [1] 1.581
```


--- .outmargn .codemargin .nobackground 

## R Functions for Descriptive Statistics


```r
a <- c(1,2,3,4,5)
summary(a)
```

```
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##       1       2       3       3       4       5
```

```r
range(a)
```

```
## [1] 1 5
```

```r
min(a)
```

```
## [1] 1
```

```r
max(a)
```

```
## [1] 5
```

--- .nobackground

## Tabulation is easy in R


```r
a <- c(1,2,3,4,5)
table(a)
```

```
## a
## 1 2 3 4 5 
## 1 1 1 1 1
```

```r
prop.table(table(a))
```

```
## a
##   1   2   3   4   5 
## 0.2 0.2 0.2 0.2 0.2
```


--- .nobackground

## Some Basic R Plots


```r
a <- c(1,2,3,4,5)
pie(table(a))
```

<img src="assets/fig/intro_pie.png" title="plot of chunk intro_pie" alt="plot of chunk intro_pie" style="display: block; margin: auto;" />


--- .codemargin .outmargin .nobackground

## Some Basic R Plots


```r
a <- c(1,2,3,4,5)
b <- c(1,2,3,4,5)
cor(a,b)
```

```
## [1] 1
```

```r
plot(a,b,type="b")
```

<img src="assets/fig/intro_scatter.png" title="plot of chunk intro_scatter" alt="plot of chunk intro_scatter" style="display: block; margin: auto;" />

--- .outmargn .codemargin .nobackground 

## R Functions for Descriptive Statistics

This example was similar to the previous. Here we create a vector of 5 numbers using `c(1,2,3,4,5)` and we assign it to the variable/symbolic name `a` and `b` using the assignment operator (`<-`)

The ease at which statistical summaries can be generated on data objects is one of R's greatest strengths. In this simple example we saw how R can be used to produce:
* Univariate statistical estimates
* Bivariate statistical estimates
* Tabulate discrete variables, and estimate the PMF
* Plot univariate and bivariate data



--- .nobackground

## Other useful R functions/operators

Hadley Wickham (R guru) lists many other useful R operators/functions in the [vocabulary](http://adv-r.had.co.nz/Vocabulary.html) section of his online text.

Tom Short also created an awesome [R Reference Card](http://cran.r-project.org/doc/contrib/Short-refcard.pdf) that enumerates many useful R operators/functions...  

So far we've briefly touched on a very few number of these operators/functions. Over the course of this two day lecture I will slowly introduce you to some of the base R functions and other contributed functions that I think are most important in R programming.

When preparing this presentation (June 2014) there were 5563 contributed packages on CRAN each with it's own functions. Learning all of the functions would be close to impossible. For that reason we stress core functionality and programming basics, in hopes that a sound introduction will allow you to explore these packages and expand R functionality for your specific data analytic demands. 



--- .nobackground

## Summary of our First R Session

Everything in R is an object
* The goal is to use R functions/operators (which are themselves first class objects) to return values to the console (or other devices) or create new objects

The command prompt symbol `>` indicates that the R console is ready to read, parse and evaluate new expressions. If the command prompt symbol is absent (or appears as `+`) R has not finsihed processing previously submitted commands.

The most important functions we introduced so far are likely:
* `?` to obtain help
* `<-` to assign variable/symbolic names to objects [(Variable naming conventions)](http://journal.r-project.org/archive/2012-2/RJournal_2012-2_Baaaath.pdf)
* `c(...)` to combine elements into a vector
* `q()`  can be used to quit R

A final hint...R is CASE SENSITIVE (so watch out for that).



--- .segue .dark

## Laboratory Session (5-10 minutes)



--- .nobackground

Lab Objectives:
* Spend some time fooling around with R.
* Use `c(...)` and the assingment operator (`<-`) to create some objects.
* Apply some of the basic math/statistics functions to these objects.
* Explore and familiarize yourself with some functions on [Tom](http://cran.r-project.org/doc/contrib/Short-refcard.pdf) /[Hadley's](http://adv-r.had.co.nz/Vocabulary.html) list. 
  * Use R help (`?some.function`) to learn more about these functions. 
  * Explore the examples of how the functions work. For exmaple, try something like `example(mean)`. 



--- .segue .dark

## Data Structures in R



--- .nobackground

## Data Structures in R

In most programming languages, variables provide a means of accessing data stored in memory. In R we cannot directly control memory allocation. Rather R comes equipped with a set of data structures which we refer to as objects and which act as containers for our data. 

The most basic data structure in R is a vector.

R does not have scalars like other languages. 

There are 6 basic ("atomic") vector types: logical, integer, numeric, complex, character and raw. 


--- .nobackground

## Data Structures in R

We can  determine the properties of (vector type) objects using the functions: `typeof()`, `mode()` and `storage.mode()`

| `typeof()`     | `mode()`  | `storage.mode()`          |
|----------------|-----------|--------------------------:|
| logical        | logical   | logical                   |
| integer        | numeric   | integer                   |
| double         | numeric   | double                    |
| complex        | complex   | complex                   |
| character      | character | character                 |
| raw            | raw       | raw                       |

<br/>

In this talk we will only really encounter logical, integer, numeric and character vactors. So in the next slides we will explore the properties of these types of vectors in greater detail.



--- .codemargin .outmargin .nobackground

## Numeric vectors in R


```r
a <- c(1.2, 2.3)
a
```

```
## [1] 1.2 2.3
```

```r
typeof(a)
```

```
## [1] "double"
```

```r
mode(a)
```

```
## [1] "numeric"
```

```r
storage.mode(a)
```

```
## [1] "double"
```
<br/>

We can test the "type/mode" of a vector using the functions: `is.numeric()` or `is.double()`.




--- .codemargin .outmargin .nobackground

## Integer vectors in R


```r
a <- c(1L, 2L, 1:3)
a
```

```
## [1] 1 2 1 2 3
```

```r
typeof(a)
```

```
## [1] "integer"
```

```r
mode(a)
```

```
## [1] "numeric"
```

```r
storage.mode(a)
```

```
## [1] "integer"
```
We can test the "type/mode" of a vector using `is.integer()`. `1L` makes it clear to the evaluator that 1 is to be interpretted as an integer. `:` creates sequences of values.



--- .codemargin .outmargin .nobackground

## Logical vectors in R


```r
a <- c(TRUE, FALSE, TRUE, TRUE, F, rep(T, 2))
a
```

```
## [1]  TRUE FALSE  TRUE  TRUE FALSE  TRUE  TRUE
```

```r
typeof(a)
```

```
## [1] "logical"
```

```r
mode(a)
```

```
## [1] "logical"
```

```r
storage.mode(a)
```

```
## [1] "logical"
```
Here `T`, `F`, `TRUE` and `FALSE` are reserved words in the R language representing logical values TRUE and FALSE. 



--- .codemargin .outmargin .nobackground

## Characters vectors in R


```r
a <- c(letters[1:3], LETTERS[24:26], "chris")
a
```

```
## [1] "a"     "b"     "c"     "X"     "Y"     "Z"     "chris"
```

```r
typeof(a)
```

```
## [1] "character"
```

```r
mode(a)
```

```
## [1] "character"
```

```r
storage.mode(a)
```

```
## [1] "character"
```
The operators/functions `letters` and `LETTERS` are built in R constants. Try `?Constants`, `?letters` and `?LETTERS` to learn more. 


--- .codemargin .outmargin .nobackground

## A few ways to create the same numeric vector

In R there usually exist multiple ways to skin a cat. Take the following example:

<br/>


```r
numvec1 <- c(1,2,3)
numvec1
```

```
## [1] 1 2 3
```

```r
numvec2 <- seq(from=1, to=3, by=1)
numvec2
```

```
## [1] 1 2 3
```

```r
numvec3 <- 1:3
numvec3
```

```
## [1] 1 2 3
```
Here we use three different R functions to accomplish the same endpoint, namely: `c(...)`, `seq()` and `:`.



--- .nobackground

## Vector conversion in R

A potentially strange aspect of R is that it is possible to create an object of a certain "type/mode" and then simply convert it to some other mode. 

In some cases variable conversion can be useful when conducting data manipulation. In other cases, it fails miserably (and likely rightfully so)...

The new functions to check out include:
* `as.numeric()`
* `as.integer()`
* `as.logical()`
* `as.character()`


--- .codemargin .outmargin .nobackground

## Vector conversion in R


```r
vec1 <- c(T,F,T,F)
as.numeric(vec1)
```

```
## [1] 1 0 1 0
```

```r
vec2 <- c(letters[1:3])
as.numeric(vec2)
```

```
## Warning: NAs introduced by coercion
```

```
## [1] NA NA NA
```




--- .codemargin .outmargin .nobackground

## Vector conversion in R


```r
vec3 <- c(-2.5,-1.2,0,1L,2.1)
as.logical(vec3)
```

```
## [1]  TRUE  TRUE FALSE  TRUE  TRUE
```

```r
as.character(vec3)
```

```
## [1] "-2.5" "-1.2" "0"    "1"    "2.1"
```

```r
as.integer(vec3)
```

```
## [1] -2 -1  0  1  2
```


--- .codemargin .outmargin .nobackground

## Vector conversion in R

In R we cannot create vectors of mixed type. If we attempt to do so R will perform vector conversion on it's own.

<br/>


```r
typeof(c(1.2,1L))
```

```
## [1] "double"
```

```r
c(0,T,1,F)
```

```
## [1] 0 1 1 0
```

```r
c(1,"chris",2,"dog")
```

```
## [1] "1"     "chris" "2"     "dog"
```


--- .codemargin .outmargin .nobackground

## We stray off on a tangent now...

A few examples ago we encountered a special constant which is very important in R, namely: `NA`. We use `NA` to represent data which are missing or not available.

<br/>


```r
a <- c(1,2,3,4,5,NA)
is.na(a)
```

```
## [1] FALSE FALSE FALSE FALSE FALSE  TRUE
```

```r
mean(a)
```

```
## [1] NA
```

```r
mean(a, na.rm=TRUE)
```

```
## [1] 3
```

<br/>
We must take care to handle `NA` values appropriately. Also, note we can specify the type of NA, namely: `NA_real_`, `NA_integer_`, `NA_character_` or `NA_complex_`.


--- .codemargin .outmargin .nobackground

## Another tangent...More special R values

Some other special R values include: 
* `NaN` Not a number
* `Inf` Positive infinity
* `-Inf` Negative infinity


```r
0/0
```

```
## [1] NaN
```

```r
1/0
```

```
## [1] Inf
```

```r
-1/0
```

```
## [1] -Inf
```
The `typeof()` returned for all special values above is `double`. The `mode()` is `numeric`.


--- .codemargin .outmargin .nobackground

## A final tangent...

The `NULL` object is used to specify empty objects. Or possibily to remove parts of complex objects. It strips an object of all associated data elements and attributes.

<br/>

We can test the `NULL` property using `is.null()` and we can set the `NULL` property using `as.null()`.

<br/>


```r
a <- c(1,2,3)
is.null(a)
```

```
## [1] FALSE
```

```r
as.null(a)
```

```
## NULL
```

```r
is.null(a)
```

```
## [1] FALSE
```



--- .codemargin .outmargin .nobackground

## Getting back on track...vector indexing

We can extract ANY elements of an R vector using vector indexing operators/functions.

<br/>


```r
a <- c(1:5,NA)
length(a)
```

```
## [1] 6
```

```r
a[1]
```

```
## [1] 1
```

```r
a[is.na(a)==FALSE]
```

```
## [1] 1 2 3 4 5
```

```r
a[c(1,2,6)]
```

```
## [1]  1  2 NA
```



--- .codemargin .outmargin .nobackground

## Named vector elements

It is possible to name elements of a vector. These named elements can then be used in vector indexing (or element extraction).

<br/>


```r
a <- c(first=1, second=2, third=3)
a
```

```
##  first second  third 
##      1      2      3
```

```r
a[c("first","third")]
```

```
## first third 
##     1     3
```



--- .codemargin .outmargin .nobackground

## Vector Recycling

We can apply functions to vectors. If the vectors are the same length these commands will usually be performed element by element. 

<br/>


```r
a <- 1:3
b <- 4:6
a
```

```
## [1] 1 2 3
```

```r
b
```

```
## [1] 4 5 6
```

```r
a+b
```

```
## [1] 5 7 9
```



--- .codemargin .outmargin .nobackground

## Vector Recycling

If the vectors are not the same length then R will "recycle" the elements of the shorter vector and apply them to the longer vector. R will also throw up a warning at this point that the vectors are not the same length and that recycling has occurred. For example:


```r
a <- 1:3
b <- 4:5
a
```

```
## [1] 1 2 3
```

```r
b
```

```
## [1] 4 5
```

```r
a+b
```

```
## Warning: longer object length is not a multiple of shorter object length
```

```
## [1] 5 7 7
```






--- .nobackground

## Other R Data Structures

Vectors act as a basic building block for other R data structures. These more complicated data structures can basically be thought of as extension to vectors accounting for different "types/modes" or heterogeneous lengths:

This useful table is borrowed from [Hadley's](http://adv-r.had.co.nz/Data-structures.html) advanced R text book:

| Dimension      | Homogeneous type/mode  | Heterogeneous type/mode          |
|----------------|------------------------|---------------------------------:|
| 1-dimension    | Vector                 | List                             |
| 2-dimension    | Matrix                 | Dataframe                        |
| N-dimensions   | Array                  |                                  |

<br/>
We will use the following functions to explore the properties of these more complex data types:
* `str()`
* `attributes()`
  * `class()`, `dim()`, `names()`, etc...



--- .nobackground

## Matrices in R

A matrix is a 2-D (flat) data structure which consists of columns (all of the same type/mode - usually numeric) where each column is of a consistent length. We can make a matrix with the `matrix()` function.


```r
a <- matrix(1:9, ncol=3, nrow=3, byrow=TRUE)
a
```
<br/>
Check out some of the optional arguments that can be passed to the `matrix()` function using `?matrix`



--- .codemargin .rowmargin .nobackground

## Matrices in R


```r
a <- matrix(1:9, ncol=3, nrow=3, byrow=TRUE)
str(a)
```

```
##  int [1:3, 1:3] 1 4 7 2 5 8 3 6 9
```

```r
class(a)
```

```
## [1] "matrix"
```

```r
dim(a)
```

```
## [1] 3 3
```



--- .codemargin .rowmargin .nobackground

## Matrices in R


```r
a <- matrix(1:9, ncol=3, nrow=3, byrow=TRUE)
names(a)
```

```
## NULL
```

```r
rownames(a)
```

```
## NULL
```

```r
colnames(a)
```

```
## NULL
```



--- .codemargin .rowmargin .nobackground

## Matrices in R


```r
a <- matrix(1:9, ncol=3, nrow=3, byrow=TRUE)
colnames(a) <- paste0("COL",1:3) 
rownames(a) <- paste0("ROW",1:3)
typeof(a)
```

```
## [1] "integer"
```

```r
str(a)
```

```
##  int [1:3, 1:3] 1 4 7 2 5 8 3 6 9
##  - attr(*, "dimnames")=List of 2
##   ..$ : chr [1:3] "ROW1" "ROW2" "ROW3"
##   ..$ : chr [1:3] "COL1" "COL2" "COL3"
```




--- .codemargin .rowmargin .nobackground

## Matrices in R


```r
a <- matrix(1:9, ncol=3, nrow=3, byrow=TRUE)
colnames(a) <- paste0("COL",1:3) 
rownames(a) <- paste0("ROW",1:3)
attributes(a)
```

```
## $dim
## [1] 3 3
## 
## $dimnames
## $dimnames[[1]]
## [1] "ROW1" "ROW2" "ROW3"
## 
## $dimnames[[2]]
## [1] "COL1" "COL2" "COL3"
```



--- .nobackground

## Matrices in R

You can make matrices of other types as well. Here is a matrix of strings/characters. 


```r
a <- matrix(LETTERS[seq(1,26,3)], ncol=3, nrow=3)
colnames(a) <- paste0("COL",1:3)
rownames(a) <- paste0("ROW",1:3)
a
```

```
##      COL1 COL2 COL3
## ROW1 "A"  "J"  "S" 
## ROW2 "D"  "M"  "V" 
## ROW3 "G"  "P"  "Y"
```

```r
typeof(a)
```

```
## [1] "character"
```







--- .nobackground 

## Matrices in R

And here is a matrix of logical values... 


```r
a <- matrix(sample(c(T,F),size=9,replace=TRUE), ncol=3, nrow=3)
colnames(a) <- paste0("COL",1:3)
rownames(a) <- paste0("ROW",1:3)
a
```

```
##       COL1  COL2  COL3
## ROW1  TRUE FALSE FALSE
## ROW2  TRUE  TRUE FALSE
## ROW3 FALSE FALSE FALSE
```

```r
typeof(a)
```

```
## [1] "logical"
```






--- .codemargin .outmargin .nobackground 

## Matrices in R

Another way to make matrices is via the `rbind()` and `cbind()` functions. We basically create vectors and the bind them together either in a row/column wise manner. 


```r
a1 <- c(1,1,1)
a2 <- c(2,2,2)
a3 <- c(3,3,3)
mat <- cbind(a1,a2,a3)
colnames(mat) <- paste0("COL",1:3)
rownames(mat) <- paste0("ROW",1:3)
mat
```

```
##      COL1 COL2 COL3
## ROW1    1    2    3
## ROW2    1    2    3
## ROW3    1    2    3
```
<br/>
Give the `rbind()` approach a try on your own. 



--- .codemargin .outmargin .nobackground 

## Matrices in R

We can extract elements of matrices via indexing, similar to how we did with vectors. 
<br/>

```r
set.seed(12345)
a <- matrix(rnorm(9), ncol=3, nrow=3)
colnames(a) <- paste0("COL",1:3)
rownames(a) <- paste0("ROW",1:3)
a
```

```
##         COL1    COL2    COL3
## ROW1  0.5855 -0.4535  0.6301
## ROW2  0.7095  0.6059 -0.2762
## ROW3 -0.1093 -1.8180 -0.2842
```

```r
a[2:3,1:2]
```

```
##         COL1    COL2
## ROW2  0.7095  0.6059
## ROW3 -0.1093 -1.8180
```




--- .nobackground 

## Matrices in R

Another really cool feature about R is how easy it is to implement basic/complex matrix algebra computations. Below are some useful matrix algebra functions:
* `nrow()` and `ncol()` count number of rows/columns
* `t()` yields matrix transpose
* `diag()` extracts diagonal elements matrix
* `upper.tri()` and `lower.tri()` extract upper/lower triangular elements matrix 
* `%*%` matrix multiplication
* `outer()` and `%o%` perform outer product calculations
* `crossprod()` and `tcrossprod` for various cross product matrices
* `eigen()`, `svd()` and `qr()` for various matrix decompositions
* `solve` to solve linear system equations (invert a matrix)



--- .nobackground

## Lists in R

Another useful data structure in R is a list. It can also be viewed like a vector, in the sense that it contains elements (which can be indexed by position/name); however, each element can contain different "types/modes" of data (i.e. the type of data in a list does NOT have to be homogeneous). 

We can create lists using `list()`

The "type/mode" of a list object is list. 

Other important functions for list include:
* `is.list()`
* `as.list()`
* `unlist()`

All our old favourite functions still apply: `str()`, `attributes()`, `class()`, `names()`, etc...


--- .codemargin .outmargin .nobackground

## Lists in R


```r
a <- list("R",rnorm(5),sample(c(T,F),4,replace=TRUE))
a
```

```
## [[1]]
## [1] "R"
## 
## [[2]]
## [1] -0.9193 -0.1162  1.8173  0.3706  0.5202
## 
## [[3]]
## [1]  TRUE  TRUE FALSE  TRUE
```

```r
typeof(a)
```

```
## [1] "list"
```

<br/>
Apply some other functions to the list object `a` to explore the data structure. 




--- .codemargin .outmargin .nobackground

## Lists in R

There are 3 approaches to indexing lists in R: named indexing (`$`), positional indexing with `[]`, and positional indexing with `[[]]`
<br/>

```r
a <- list(software="R",ran.num=rnorm(5),log.val=c(T,F,T))
a$software
```

```
## [1] "R"
```

```r
a[1]
```

```
## $software
## [1] "R"
```

```r
a[[1]]
```

```
## [1] "R"
```


--- .codemargin .outmargin .nobackground

## Lists in R

We can also extract individual elements, of list elements (if that makes sense). In the list below, `log.val` is a logical vector (of length 3). It's second element is `FALSE`. We show two methods that work for extracting this value and one which does not work.

<br/>

```r
a <- list(software="R",ran.num=rnorm(5),log.val=c(T,F,T))
a$log.val[2]
```

```
## [1] FALSE
```

```r
a[[3]][2]
```

```
## [1] FALSE
```

```r
a[3][2]
```

```
## $<NA>
## NULL
```


--- .codemargin .outmargin .nobackground

## Lists in R

List can also be recursive. That is, we can have lists of lists. 

```r
a <- list(visit=1, procedure=list(shots=list(type="flu", done=T)))
a
```

```
## $visit
## [1] 1
## 
## $procedure
## $procedure$shots
## $procedure$shots$type
## [1] "flu"
## 
## $procedure$shots$done
## [1] TRUE
```

```r
is.recursive(a)
```

```
## [1] TRUE
```




--- .codemargin .outmargin .nobackground

## Lists in R

Extracting elements from recursive lists can be a bit tricky. Below we show an example of how to extract the logical element corresponding to the flu shot being done (`TRUE`) from this recursive structure.

<br/>

```r
a <- list(visit=1, procedure=list(shots=list(type="flu", done=T)))
a[[2]][[1]][2]
```

```
## $done
## [1] TRUE
```


--- .codemargin .outmargin .nobackground

## Lists in R

Another useful function is `unlist()`. We use this function when we want to take all of the elements and put them back into vector form. If the "types/modes" of the list elements are mixed/heterogeneous then we have to be cognisant of conversion.
<br/>

```r
a <- list("R",rnorm(5),c(T,F,T))
unlist(a)
```

```
## [1] "R"                  "-0.481647363694637" "0.620379801298422" 
## [4] "0.612123492650849"  "-0.162310976918126" "0.81187317855386"  
## [7] "TRUE"               "FALSE"              "TRUE"
```
An interesting feature we see in this example which hasn't come up yet (surprisingly) is the numbers `[1],[4],[7]` on the left side of the output/console. In the R console, R will use these numbers to denote the index of the object at the leftmost position of the new line. So "R" is the first element of the vector. "TRUE" is the seventh element of the vector, etc...



--- .nobackground

## Data frames in R

In R, a dataframe is a special type of list object. Basically, it is a list where all elements have the same length (or row dimension). In could also be viewed as a matrix object that has different "types/modes"...but that is naive.

Data frames are used extensively in statistical data analysis. So we will see lots of them in the latter half of the talk. 

Data franes mimic the strucutres that Excel, SAS and SPSS users are familiar with (i.e. an item by variable matrix of data). 

Data frames typically have certain important attributes: 
* `names()` give the column names of the data frame
* `row.names()` give row/item/case names
* `dim()` will tell you the number of rows/columns
* `class()` will test that the object is a data frame
* `str()` and `attributes()` tie these info together



--- .codemargin .outmargin .nobackground

## Data frames in R

There are many ways to create data frames in R. On this slide and the ones which follow we demonstrate a few of them.


```r
a <- data.frame(c1=c(1,2,3),c2=c(T,F,T),c3=rnorm(3))
a
```

```
##   c1    c2    c3
## 1  1  TRUE 2.197
## 2  2 FALSE 2.049
## 3  3  TRUE 1.632
```

So one useful function is `data.frame()`.


--- .codemargin. outmargin .nobackground

## Data frames in R

We can also use conversion on a list object. Here the function of choice is `as.data.frame()`. 


```r
a <- as.data.frame(list(c1=c(1,2,3),c2=c(T,F,T),c3=rnorm(3)))
a
```

```
##   c1    c2      c3
## 1  1  TRUE  0.2543
## 2  2 FALSE  0.4912
## 3  3  TRUE -0.3241
```

```r
class(a)
```

```
## [1] "data.frame"
```



--- .codemargin .outmargin .nobackground

## Data frames in R

Another "sketchy" way to get a data frame is via `rbind()` or `cbind()`. Type/mode conversion will occur behind the scenes (here everything is converted to numeric type).


```r
c1=c(1,2,3)
c2=c(T,F,T)
c3=rnorm(3)
a <- as.data.frame(cbind(c1,c2,c3))
a
```

```
##   c1 c2      c3
## 1  1  1 -1.6621
## 2  2  0  1.7677
## 3  3  1  0.0258
```

```r
class(a)
```

```
## [1] "data.frame"
```



--- .nobackground

## Data frames in R

R has a package called `datasets`. Type the following into your R console to learn more about the datasets that come shipped with your R installation: `library(help = "datasets")`. These datasets are usually data frames and act as a great learning resource when testing new/unfamiliar R functions. 

In the example(s) which follow we are going to work with the `cars` data frame. Type `??cars` into the console to then click on the appropriate link to learn more about `cars`. 

In a nutshell, the cars data frame has 2 variables: speed (mph) and stopping distance (ft). We will investigate some functions that can be used to look into the relationship between speed and stopping distance. 



--- .codemargin .outmargin .nobackground

## Data frames in R

We can use the `head()` and `tail()` functions to look at the top parts and bottom parts of the `cars` data frame. Check out the arguments to these functions using R help.


```r
library(datasets)
head(cars)
```

```
##   speed dist
## 1     4    2
## 2     4   10
## 3     7    4
## 4     7   22
## 5     8   16
## 6     9   10
```

```r
tail(cars, n=2L)
```

```
##    speed dist
## 49    24  120
## 50    25   85
```




--- .codemargin .outmargin .nobackground

## Data frames in R

We can also check out the structure of the `cars` data frame.


```r
str(cars)
```

```
## 'data.frame':	50 obs. of  2 variables:
##  $ speed: num  4 4 7 7 8 9 10 10 10 11 ...
##  $ dist : num  2 10 4 22 16 10 18 26 34 17 ...
```

```r
class(cars)
```

```
## [1] "data.frame"
```

```r
dim(cars)
```

```
## [1] 50  2
```

```r
names(cars)
```

```
## [1] "speed" "dist"
```





--- .nobackground

## Data frames in R

We can index data frames just like matrices. We can do positional indexing as in the first example. Or we can do named indexing as in the second/third example.


```r
cars[1:3,2]
```

```
## [1]  2 10  4
```

```r
cars[c(1,2,3),"dist"]
```

```
## [1]  2 10  4
```

```r
cars$dist[1:3]
```

```
## [1]  2 10  4
```



--- .codemargin .outmargin .nobackground

## Data frames in R

The specific column vectors in a data frame maintain their "type/mode" identity. We can assess the "type/mode" of elements of a dataframe in a few ways.


```r
class(cars$dist)
```

```
## [1] "numeric"
```

```r
sapply(cars,class)
```

```
##     speed      dist 
## "numeric" "numeric"
```

```r
for (i in 1:dim(cars)[2]) { print(c(names(cars[i]), class(cars[,i]))) }
```

```
## [1] "speed"   "numeric"
## [1] "dist"    "numeric"
```



--- .nobackground

## Data frames in R

Generic functions in R include functions like `print()`, `summary()`, `plot()` and others. Essentially, objects have classes. Classes are used to inform methods/dispatchers (`?UseMethod`) as to the type of object under consideration. These methods then choose the appropriate generic function for the class at hand. 

The advantage of this type of an approach to programming is that one does not have to memorize all sorts of functions. I can simply experiment with the language, apply functions like `summary()` or `plot()` to a given object (of known class) and see what happens. In R, the result is usually a very sensible output being generated. 

On the next two slides we experiment with `summary()` or `plot()`.


--- .nobackground

## Data frames in R


```r
summary(cars)
```

```
##      speed           dist    
##  Min.   : 4.0   Min.   :  2  
##  1st Qu.:12.0   1st Qu.: 26  
##  Median :15.0   Median : 36  
##  Mean   :15.4   Mean   : 43  
##  3rd Qu.:19.0   3rd Qu.: 56  
##  Max.   :25.0   Max.   :120
```



--- .nobackground

## Data frames in R


```r
plot(cars)
```

<img src="assets/fig/data_scatter.png" title="plot of chunk data_scatter" alt="plot of chunk data_scatter" style="display: block; margin: auto;" />




--- .nobackground

## Arrays in R

Arrays can be viewed as a multi-dimensional (n-dimensional) version of a matrix. All objects in an array must be of the same "type/mode".

Personally, I do not encounter arrays as much as the other data structures mentioned thus far (i.e. vectors, matrices, lists and data frames).

Many of the functions encountered thus far apply to arrays as well.

On the next slide we show a brief demo of how to generate an array but do not go into any more detail on these types of structures (i.e. just know they exist and might be valuable to you). 
* Panel designs
* Spatio-temporal designs




--- .nobackground

## Arrays in R


```r
a <- array(1:18, dim=c(3,3,2))
a
```

```
## , , 1
## 
##      [,1] [,2] [,3]
## [1,]    1    4    7
## [2,]    2    5    8
## [3,]    3    6    9
## 
## , , 2
## 
##      [,1] [,2] [,3]
## [1,]   10   13   16
## [2,]   11   14   17
## [3,]   12   15   18
```



--- .nobackground

## Arrays in R

We can index arrays as well. For example:


```r
a <- array(1:18, dim=c(3,3,2))
a[,,1]
```

```
##      [,1] [,2] [,3]
## [1,]    1    4    7
## [2,]    2    5    8
## [3,]    3    6    9
```

```r
a[1,,]
```

```
##      [,1] [,2]
## [1,]    1   10
## [2,]    4   13
## [3,]    7   16
```



--- .nobackground

## Other interesting data types in R

Two other types of data which R allows for, which have yet to be discussed are:
* `factor()`
* `Dates()`

Factors are used to encode categorical data types (data values which take on a finite number of values). Factor types can be unordered (e.g. red, green, blue) or they can be ordered (e.g. small, medium, large). Explicitly defining a `factor` data type allows for very elegant handling of these types of data in statistical modelling (think contrasts if you're familiar with ANOVA). 

Dates are perhaps the most difficult/annoying type of data to store in any software/programming language. One reason is because of the arbitry nature of time. And second because of the arbitrary nature of time, many methods exist for considering time as a construct. 

In the next few slides we will discuss `factor` and `Date` storage in R.





--- .nobackground

## Factors in R

Factors store data which take on a finite number of values. 

Note: factors are NOT "atomic" vectors. Quick quiz, what are the 6 tpyes of "atomic" vectors again?

Factors are actually built on top of integer vectors. The integer vector stores the data corresponding to the actual factor `levels`. Whereas, a second vector is used to store the data corresponding to the mapping between `levels` and `labels`. 

Typically, when we want to display discrete data like this we use tabulation - in R this is implemented through the function `table()`. Table proportions can be easily generated through the use of `prop.table()`. 


--- .nobackground

## Factors in R


```r
set.seed(1234)
a <- factor(sample(c("A","B","C"),size=10,replace=TRUE))
a
```

```
##  [1] A B B B C B A A B B
## Levels: A B C
```

```r
class(a)
```

```
## [1] "factor"
```

```r
levels(a)
```

```
## [1] "A" "B" "C"
```



--- .nobackground

## Factors in R

Discrete values a factor can take on are called `levels`. We can associate `labels` with each `level`. 


```r
set.seed(1234)
a <- factor(sample(c("A","B","C"),size=10,replace=TRUE), labels=c("Lab A", "Lab B", "Lab C"))
levels(a)
```

```
## [1] "Lab A" "Lab B" "Lab C"
```

```r
nlevels(a)
```

```
## [1] 3
```


--- .nobackground

## Factors in R

We can tabulate factor variable quickly using `table()` and `prop.table()`.


```r
set.seed(1234)
a <- factor(sample(c("A","B","C"),size=10,replace=TRUE))
table(a)
```

```
## a
## A B C 
## 3 6 1
```

```r
prop.table(table(a))
```

```
## a
##   A   B   C 
## 0.3 0.6 0.1
```


--- .nobackground

## Factors in R

Here I know there is no female data points in this data vector. That is, it is structurally missing in the data (or it could be a sampling zero). However, I can make this explicit to R at the time of factor assignment.


```r
a <- factor(c("M","M","M"),levels=c("M","F"),labels=c("Male","Female"))
table(a)
```

```
## a
##   Male Female 
##      3      0
```




--- .nobackground

## Factors in R

Here we order the factor levels using the argument `ordered=TRUE` in the `factor()` call. We make males the first ordered level and females the second ordered level.


```r
a <- factor(c("F","F","M"),levels=c("M","F"),labels=c("Male","Female"),ordered=TRUE)
class(a)
```

```
## [1] "ordered" "factor"
```

```r
table(a)
```

```
## a
##   Male Female 
##      1      2
```



--- .nobackground

## Factors in R

We can also make factors out of continuous variables using the `cut()` function. Check out the details at `?cut`.


```r
set.seed(1234)
x <- rnorm(10000)
factor.x <- cut(x,breaks=quantile(x,probs=seq(0,1,0.25)),include.lowest=TRUE)
table(factor.x)
```

```
## factor.x
##    [-3.4,-0.661] (-0.661,0.00463]   (0.00463,0.67]      (0.67,3.62] 
##             2500             2500             2500             2500
```

```r
prop.table(table(factor.x))
```

```
## factor.x
##    [-3.4,-0.661] (-0.661,0.00463]   (0.00463,0.67]      (0.67,3.62] 
##             0.25             0.25             0.25             0.25
```



--- .nobackground

## Factors in R

Factors are VERY important when fitting ANOVA type models. n.b. The goal of ANOVA models is to partition the total response variation into that which is attributable to the model (which is made up of possibly many discrete factors and their interactions) and the residual noise which remains (the part of the response variation not explained by the model).

Some important functions to remember for these tasks include:
* `factor(..., ordered=)`
* `C()` or `contrasts()`
  * `contr.helmert()`
  * `contr.poly()`
  * `contr.sum()`
  * `contr.treatment()`
* `interaction(..., drop=)`

If these concepts are unfamiliar review MASS (Venables and Ripley). 




--- .nobackground

## Dates in R

Braun and Murdoch (p. 21) concur that dates are amongst the most difficult types of data to program with in any language. For example, there exist different calendars (Gregorian and Julian). Years can have different number of days (leap years). Seconds can vary by time zone (leap seconds). Etc... 


R has a number of different ways to deal with dates, which include:
* `POSIXct` for dates and times with time zones
* `POSIXlt` for dates and times with time zones (different representation)
* `chron` library for dates with times (no time zones)
* `Dates` dates without time zones

R has a number of different packages to help with date storage and date manipulation/processing:
* `chron`
* `lubridate`


--- .nobackground

## Dates in R

The POSIX (portable operating system interface for UNIX class) class of dates include `POSIXct` and `POSIXlt`. They are the most complex way of representing dates/times and are useful when dates being represented may exist in different time zones.

* `POSIXct` represents the SIGNED number of seconds since the (arbitrary) time origin of the beginning of 1970. 
* `POSIXlt` represents time using the following of objects, namely: 
  * `sec` in set 0-61
  * `min` in set 0-59
  * `hour` in set 0-23
  * `mday` in set 0-31
  * `mon` in set 0-11
  * `year` since 1900
  * Other elements include: `wday`, `yday`, `isdst`, `zone` 


--- .noackground

## Dates in R


```r
datetime.today <- Sys.time()
datetime.today
```

```
## [1] "2014-06-09 08:57:04 EDT"
```

```r
class(datetime.today)
```

```
## [1] "POSIXct" "POSIXt"
```



--- .nobackground

## Dates in R

When dealing with just dates (without time or time zone consideration) the `Date` class of objects is often a sufficient representation. 

In the `Date` class of objects, we store dates as the number of days since `1970-01-01`. Dates in this format always follow the Gregorian calendar definition of time.

When working with dates there are many useful functions. Two key functions are `strptime()` and `strftime()`. Use `?strptime` to see all the interesting ways we can manipulate a date. 


```r
## Our first date
date.today <- Sys.Date()
date.today
```

```
## [1] "2014-06-09"
```


--- .codemargin .outmargin .nobackground

## Dates in R


```r
strftime(date.today, "%B")
```

```
## [1] "June"
```

```r
strftime(date.today, "%D")
```

```
## [1] "06/09/14"
```

```r
strftime(date.today, "%Y")
```

```
## [1] "2014"
```

```r
weekdays(date.today)
```

```
## [1] "Monday"
```



--- .nobackground

## Summary of Data Structures Module

In this section we introduced many different data structures. The most basic data structure is a vector. Given a vector we showed how to derive the following data structures:
* Matrices/Arrays
* Lists
* Data frames

Other important data structures in R include:
* Factors
* Dates



--- .segue .dark

## Lab Session (20 minutes)



--- .nobackground

## Lab Session Exercises

1. What are the 6 main types of "atomic" vectors?

2. What will the `typeof()`, `mode()`, `class()` etc. be in the following instances?
  * `c(1,T,F,0)`
  * `c(1,2,3,"a","b","c")`
  * `c(1:3)` and `c(1:3,NA_real_)`

3. What will be returned in the following instances?
  * `sum(c(T,F,F,T,F,T))` 
  * `"three" >= "two"`

4. Create the following matrix: `mat <- matrix(1:9,ncol=3)`.
  * How many ways can you think of to extract the main diagonal of `mat`?
  * How many ways can you think of to extract the lower triangular sub-matrix of `mat`?


--- .nobackground #foo

## Lab Session Exercises

5. Create the following matrix `mat <- matrix(1:9,ncol=3)`.
  * How many ways can you think of to get the column means of `mat`? 
  * Same idea with row means.
  
6. In matrix notation the OLS/MLE solution for the regression coeffiicients of a linear regression model can be expressed as: 

$$ \hat{\boldsymbol\beta} = (\mathbf{X}^{\rm T}\mathbf{X})^{-1} \mathbf{X}^{\rm T}\mathbf{y} $$

* Using the cars dataset investigate the relationship between distance (response variable) as a function of speed (independent variable).
  * Create the vector $\mathbf{y}$ and the design matrix $\mathbf{X}$. Dont forget the leading column vector of 1's. Using all of R's fancy matrix algebra functions estimate the $\hat{\boldsymbol\beta}$ vector. 
  * Compare your matrix algebra approach with the following code: `lm(dist~speed,data=cars)`



<script>
$("#foo ol").attr('start', 5)
</script>

--- .codemargin .outmargin .nobackground

## Lab Session Exercises

<ol start="7">
<li> Use the following R code to simulate 100 random normal variates. </li> 
</ol>


```r
set.seed(1234)
x <- rnorm(100)
```

* Using the `cut()` function create a vector from these hundred random normal variables where the values fall between "[min, 0]", "(0, 1]", "(1, max]".


```
## xcut
## [-2.35,0]     (0,1]  (1,2.55] 
##        65        21        14
```

<ol start="8">
<li> Create  the following variable `today.date <- Sys.Date()`. </li> 
</ol>

* Applying R date and string manipulation functions to the object `today.date` create the following sentence.


```
## [1] "Today, Monday the 09th of June, 2014 is the nicest day I've ever seen!"
```




--- .segue .dark

## Control Structures in R



--- .nobackground

## Control Structures in R

This module introduces some basic R programming constructs which are the building blocks of many of the complicated programs you may wish to write.
* Coniditional processing
  * The `if` and `else` statements
  * The vectorized `ifelse()` function
* Looped execution
  * The `for` loop
  * The `while` loop
* Vectorized programming
  * The `apply` family of functions, including: `apply()`, `sapply()`, `lapply()`, `tapply()`, etc... 



--- .nobackground

## The `if` and `else` statements

We use `if` statements to "branch" computation in our programs. Essentially, the program will conduct some computation is a certain logical condition returns `TRUE`, else the program will conduct some other computation if the logical condition returns `FALSE`.

The basic structure of such a program could look as follows:


```r
if (logical.expression1) {
  expression1
  ...
} else if (logical.expression2){
  expression2
  ...
} else {
  expression3
}
```

To learn more about control flow function in R try `?"if"` and `?"else"`.



--- .nobackground

## The `if` and `else` statements

This example relates to findings the roots of a [quadratic function](http://en.wikipedia.org/wiki/Quadratic_function) (Jones et al, p. 32): 

$$f(x)=ax^2+bx+c,\quad a \ne 0$$ 

The discriminant of the function is calculated as: `discrim = b^2 - 4*a*c`

The value of the roots depend on the discriminant. We will show the roots of this quadratic (polynomial) equation depending on the roots. 



--- .codemargin .outmargin .nobackground 

## The `if` and `else` statements

Lets take `a=1`, `b=4`, `c=5`.


```r
a2=1 ; a1=4 ; a0=5 ;
discrim = a1^2 - 4*a2*a0
if (discrim > 0) {
  r1 <- -a1 + sqrt(a1^2 - 4*a2*a0)/(2*a2)
  r2 <- -a1 - sqrt(a1^2 - 4*a2*a0)/(2*a2)
  roots <- c(r1,r2)
} else if (discrim==0) {
  roots <- c(-a1(2*a2))
} else {
  roots <- c()
}

show(roots)
```

```
## NULL
```


--- .codemargin .outmargin .nobackground

## The `if` and `else` statements

Lets just make a plot of that function using `curve()` which verifies there are no real roots: 

$$f(x)=a^2+4x+5,\quad a \ne 0$$ 

<img src="assets/fig/control_curve1.png" title="plot of chunk control_curve1" alt="plot of chunk control_curve1" style="display: block; margin: auto;" />



--- .codemargin .outmargin .nobackground

## The `if` and `else` statements

R also comes with a vectorized `ifelse()` function which can be used for all sorts of things. 


```r
set.seed(1234)
a <- rnorm(10)
round(a,digits=2)
```

```
##  [1] -1.21  0.28  1.08 -2.35  0.43  0.51 -0.57 -0.55 -0.56 -0.89
```

```r
table(factor(ifelse(a < -0.5, 0, ifelse(a < 0, 1, 2)),level=c(0,1,2)))
```

```
## 
## 0 1 2 
## 6 0 4
```

```r
table(cut(a,breaks=c(min(a),-0.5,0,max(a)),include.lowest=TRUE))
```

```
## 
## [-2.35,-0.5]     (-0.5,0]     (0,1.08] 
##            6            0            4
```


--- .nobackground

## The `for` loop

The `for` loop is useful for computing grouped expressions. Specifically, where the group of expression varies as a function of an iterating veriable. For example:


```r
for (i in vector) {
  expression.i
  ...
}
```

So we define an iterator `i` and we call the `expression.i` for as many times as the `vector` tells us to. 


--- .nobackground

## The `for` loop

A classic example with `for` loops is calculating the first, say, N numbers in the [Fibonacci sequence](http://en.wikipedia.org/wiki/Fibonacci_number). This example comes from Bruan & Murdoch (p. 48).


```r
Fibonacci <- numeric(11)
Fibonacci[1] <- 1
Fibonacci[2] <- 1
for (i in 3:12) {
  Fibonacci[i] <- Fibonacci[i-2] + Fibonacci[i-1]
}
show(Fibonacci)
```

```
##  [1]   1   1   2   3   5   8  13  21  34  55  89 144
```



--- .nobackground

## The `for` loop

Jones et al (p. 33) demonstrate the use of a `for` loop in vector summation.


```r
x.list <- seq(1,7,by=2)
sum.x <- 0
for (x in x.list) {
  sum.x <- sum.x + x
  cat("The current value of the loop is", x, sep="\n")
  cat("The current value of the cumulative sum is", sum.x, sep="\n")  
}
```

The results are shown on the next slide. 



--- .nobackground

## The `for` loop


```
## The current loop element is 1 
## The current value of the cumulative sum is 1 
## The current loop element is 3 
## The current value of the cumulative sum is 4 
## The current loop element is 5 
## The current value of the cumulative sum is 9 
## The current loop element is 7 
## The current value of the cumulative sum is 16
```

Using `cat()` to display the current value of the iterating variable and also the returned value of the function/expression at a given iteration value can be useful for elucidating the `for` loop mechanism. And is also a nice debugging technique.   



--- .nobackground 

## The `while` loop

The `while` loop is used to execute a given expression as long as some other logical condition holds true. The `while` loop take the form:


```r
while (logical.expression) {
  expression.1
  ...
}
```

Basically, we evaluate `logical.expression` if it is `TRUE` then we evaluate `expression.1`. Then we re-evaluate the logical expression, if it is still `TRUE`, then we go back and evluate `expression.1`. This continues until the `logical.expression` evaluates to `FALSE` and we `break` out of the `while` loop. 

Jones et al (p. 37) call the `while` loop more fundamental than the `for` loop, stating that any `for` loop can be written as a `while` loop. 


--- .codemargin .outmargin .nobackground

## The `while` loop

In this example we use a `while` loop to calculate the [Fibonacci sequence](http://en.wikipedia.org/wiki/Fibonacci_number) again. 


```r
F <- c(1,1)
n <- 2
while (F[n] <= 100) {
  cat("n = ", n, " F[n] =", F[n], "\n")
  n <- n +1
  F[n] <- F[n-1] + F[n-2]
}
```

```
## n =  2  F[n] = 1 
## n =  3  F[n] = 2 
## n =  4  F[n] = 3 
## n =  5  F[n] = 5 
## n =  6  F[n] = 8 
## n =  7  F[n] = 13 
## n =  8  F[n] = 21 
## n =  9  F[n] = 34 
## n =  10  F[n] = 55 
## n =  11  F[n] = 89
```



--- .nobackground

## The `while` loop

A very important application of `while` loops in statistics is root finding. That is, finding points where $x: f(x)=0$.

The [Newton-Raphson](http://en.wikipedia.org/wiki/Newton-Raphson) is one such method for numerically finding roots to "nice" continuously differentiable functions $f(x)$. Basically, the algorithm proceeds with an initial guess at the root value: $x_0$. Then a better approximation is achieved through the following update formula.

$$ x_{n+1} = x_n - \frac{f(x_n)}{f'(x_n)} $$

Algorithmically, we continue evaluating this update formula until the change in returned values $f(x_{n+1}) - f(x_n)$ becomes smaller than some threshold/tolerance value. This can be easily applied via a `while` loop as Braun and Murdoch demonstrate (p. 55).

This simple algorithm could form the (naive) basis of OLS/MLE style optimizers for certain classes of maximization and minimization problems. 


--- .nobackground

## The `while` loop

Lets start by using the Newton-Raphson method to find the roots of the following polynomial function: $f(x) = x^3 + 2x^2 - 7$.  


```r
x <- x0 <- 3
f <- x^3 + 2*x^2 - 7
tol <- 0.00001
while(abs(f) > tol) {
  f.prime <- 3*x^2 + 4*x
  x <- x - (f/f.prime)
  f <- x^3 + 2*x^2 - 7
}
show(x)  
```

```
## [1] 1.429
```



--- .codemargin .outmargin .nobackground

## The `while` loop
We can make a plot assessing how close our approximation was to the truth using `curve()`:


```r
curve(expr=(x^3 + 3*x^2 - 7), from=-9, to=5)
abline(v=x,col="red")
```

<img src="assets/fig/control_curve2.png" title="plot of chunk control_curve2" alt="plot of chunk control_curve2" style="display: block; margin: auto;" />



--- .nobackground

## The `apply` family of functions

Being a functional programming language (where functions are first class objects) it is possible in R to pass a function as an argument in the `formals` of another function.

The `apply` family of functions works by applying a function to all selected elements of a `list` or `data.frame` or some other R object.

Check out the following functions:
* `apply()` can apply a function over a vector/array
* `sapply()` can apply a function over a vector/array
* `lapply()` can apply a function over a list
* `tapply()` can apply a function over subsets of data (usually vectors/arrays)

The `apply()` family of functions is very powerful, however, given there are so many variants it can be tricky to learn which functions to apply when (this will come with time and practice).

Also, Hadley Wickham (R guru) has reworked some of these functions and implemented them in his `plyr` package.



--- .nobackground

## The `apply` family of functions

Here we will work with the `cars` data frame again. We use the `apply` function to derive some summary values (here over the columns of the `data.frame`).


```r
suppressPackageStartupMessages(library(datasets))
apply(cars,2,class)
```

```
##     speed      dist 
## "numeric" "numeric"
```

```r
apply(cars,2,mean)
```

```
## speed  dist 
## 15.40 42.98
```


--- .nobackground

## The `apply` family of functions

The `sapply()` function works very similarly to `lapply()` except might return output in a more appropriate form (i.e. `lapply()` returns `lists`; whereas, `sapply()` can return `vectors`, `matrices` and `arrays`).


```r
sapply(cars,mean)
```

```
## speed  dist 
## 15.40 42.98
```

```r
lapply(cars,mean)
```

```
## $speed
## [1] 15.4
## 
## $dist
## [1] 42.98
```



--- .codemargin .outmargin .nobackground

## The `apply` family of functions

Here we compare the `tapply()`, `aggregate()` and `by()` functions.


```r
tapply(cars$speed,ifelse(cars$dist>20,0,1),mean)
```

```
##     0     1 
## 16.95  9.20
```

```r
by(cars$speed,ifelse(cars$dist>20,0,1),mean)
```

```
## ifelse(cars$dist > 20, 0, 1): 0
## [1] 16.95
## -------------------------------------------------------- 
## ifelse(cars$dist > 20, 0, 1): 1
## [1] 9.2
```

```r
aggregate(cars$speed,list(ifelse(cars$dist>20,0,1)),mean)
```

```
##   Group.1     x
## 1       0 16.95
## 2       1  9.20
```

--- .nobackground

## Summary of control structures

The purpose of this module was to introduce you to basic control structures that can be used to build more complex programs. 

In this chapter we demonstrated a number of key concepts:
* Execution of conditional logical statements with `if` and `else`
* Processing statements over elements of a vector with `for` loops.
* Processing statements while a logical condition is true with `while` loops
* Applying functions over data structures with the `apply` family of functions






--- .segue .dark

## Lab Session (10-20 minutes)



--- .nobackground

## Lab Session 
1. Create the following matrix `mat <- matrix(1:9,ncol=3)`.
  * How many ways can you think of to extract the main diagonal of `mat`? 

2. Create the following matrix `mat <- matrix(1:9,ncol=3)`.
  * How many ways can you think of to get the column means of `mat`? 

3. Using `if` and `else` statements create the following vector of data: 


```
##  [1] 1 2 3 4 5 2 3 4 5 6 3 4 5 6 7 4 5 6 7 8 5 6 7 8 9
```

<ol start="4">
<li> Consider the following number: $ \varphi = \frac{1+\sqrt{5}}{2} = 1.6180339887\ldots. $</li> 
</ol>
* The number above is called the [golden ratio](http://en.wikipedia.org/wiki/Golden_ratio). It arises as the limit of the ratio of two successive Fibonacci numbers (amongst other ways). Using the programs demonstrated previously to calculate Fibonacci sequences obtain a vector output. Then calculate the ratio of two successive values and see what it converges to in the limit. 




--- nobackground

## Lab Session

<ol start="5">
<li> Copy and paste the code below into your console. Explain to yourself what each step is doing. </li>
</ol>

```r
set.seed(123456789)
vec <- numeric(10000)
vec <- sapply(vec,function(x){mean(rgamma(100,1,2))})
plot(density(vec),main="Plot of mean of 10000 Gamma(1,2) RV's", xlab="Support", xlim=c(0,1))              
```
* What [statistical concept](http://en.wikipedia.org/wiki/Central_limit_theorem) have you just demonstrated to yourself? Does this hold true for other distributions (other than `rgamma()`)?




--- .segue .dark

## Functions in R



--- .nobackground

## Functions in R

Up to this point we have encountered many of R's functions, perhaps without giving much thought to their inner workings. 

Functions or programs or routines are well-defined pieces of code. They take inputs (`arguments`), perform calculations on these inputs (within some scope/environment), and then return outputs (either to the console, to some other device or as objects). 

In R, functions are first class objects, and can themselves be passed to other functions. This is a very powerful approach to programming, and allows R to accomplish tasks in few lines of code, where other programming languages would require many lines of code.

There are 3 parts to all R functions:
* `formals()` which define the inputs to a function.
* `body()` which defines what computations are performed on inputs.
* `environment()` returns the environment associated with a given function. 



--- .nobackground

## Functions in R

What does open source mean in R?
* Most people equate open source to the fact that R is freely accessible.
* However, perhaps more importantly, open source also means that almost all programs/functions used to conduct data analysis in R are available to investigate, learn from, manipulate and imporve upon. 

To access the body of a given R function you can:
* Type the function name into the console without brackets/parentheses.
* Use the `body()` function


--- .codemargin .outmargin .nobackground

## Functions in R

In this example we type `sd` into the console and see what is written about the standard deviation function in R (essentially, all we learn is that it is the square root of the `var()` function).


```r
sd
```

```
## function (x, na.rm = FALSE) 
## sqrt(var(if (is.vector(x)) x else as.double(x), na.rm = na.rm))
## <bytecode: 0x7fef6b9ca158>
## <environment: namespace:stats>
```



--- .codemargin .outmargin .nobackground

## Functions in R

We can learn a little more about `sd()` using the following commands:


```r
formals(sd)
```

```
## $x
## 
## 
## $na.rm
## [1] FALSE
```

```r
body(sd)
```

```
## sqrt(var(if (is.vector(x)) x else as.double(x), na.rm = na.rm))
```

```r
environment(sd)
```

```
## <environment: namespace:stats>
```



--- .nobackground


```r
body(var)
```

```
## {
##     if (missing(use)) 
##         use <- if (na.rm) 
##             "na.or.complete"
##         else "everything"
##     na.method <- pmatch(use, c("all.obs", "complete.obs", "pairwise.complete.obs", 
##         "everything", "na.or.complete"))
##     if (is.na(na.method)) 
##         stop("invalid 'use' argument")
##     if (is.data.frame(x)) 
##         x <- as.matrix(x)
##     else stopifnot(is.atomic(x))
##     if (is.data.frame(y)) 
##         y <- as.matrix(y)
##     else stopifnot(is.atomic(y))
##     .Call(C_cov, x, y, na.method, FALSE)
## }
```


--- .nobackground

## Functions in R

Basically, all we can find out is the `sd()` is related to `var()`. And further, that `var()` is computed via a `.Call` to some C function/routine likely called `C_cov`. 

The moral of the story is that, even though R is open source, and almost all source code is freely viewable/obtainable to the end user,  sometimes it is still difficult to recover information about functions because within them you see things like: `.C`, `.Call`, `.Fortan`, `.External`, `.Internal` or `.Primitive`.

These symbols usually mean that the underlying code you are after is written in some other (compiled) language for speed purposes. I recommend the following articles for help in these scenarios:
* [stackoverflow](http://stackoverflow.com/questions/14035506/how-to-see-the-source-code-of-r-internal-or-primitive-function)
* [Uwe Ligges](http://cran.r-project.org/doc/Rnews/Rnews_2006-4.pdf)




--- .nobackground

## Functions in R

The ease at which programmers can generate/create user defined functions is another key selling point for R. Basically, the function called `function()` will help to create user-defined functions. Try saying that 3 times fast!!

The basic building blocks to an R function look as follows:


```r
function.name <- function(arglist) {
  function.body
  ...
  return(some.value)
}
```



--- .nobackground

## Functions in R

Here we invesitigate one of the simplest function in any programming language, the `hello.world` function/routine. The purpose of this simple function is to return the string "Hello World" when the function is called (with no arguments).


```r
hello.world <- function(){
  paste(c("Hello World"))
}
hello.world()
```

```
## [1] "Hello World"
```

We give a name to the function: `hello.world`. In this case there are no arguments (`formals`) associated with the function. We define a `body` to the function, here it just returns the character vector `Hello World`. Further it was created in the `environment` called `R_GlobalEnv` (the R Global Environment). 


--- .codemargin .outmargin .nobackground

## Functions in R


```r
hello.world <- function(){paste(c("Hello World"))}
formals(hello.world)
```

```
## NULL
```

```r
body(hello.world)
```

```
## {
##     paste(c("Hello World"))
## }
```

```r
environment(hello.world)
```

```
## <environment: R_GlobalEnv>
```



--- .nobackground

## Functions in R

This example comes from Jones et al (p. 65) and relates to calculating a factorial.


```r
fact.func <- function(n) {
  return(prod(1:n))
}
fact.func(5)
```

```
## [1] 120
```

```r
factorial(5)
```

```
## [1] 120
```


--- .nobackground

## Functions in R

Another more involved example consider calculating a mean using base R function only (no math).


```r
my.mean <- function(x) {
 tot <- rep(NA,length(x))
 for (i in 1:length(x)) {
  if (i==1){
   tot[i] = 0
  } else {
   tot[i] <- x[i] + tot[i-1] 
  }  
 }
return(tot[length(x)]/length(x))
}
```

Can you write a more concise function? Probably. Give it a try!!



--- .nobackground

## Functions in R


```r
my.mean(0:10)
```

```
## [1] 5
```

```r
mean(0:10)
```

```
## [1] 5
```



--- .codemargin .outmargin .nobackground

## Functions in R

Function can return output other than numeric values (`plot()` is a good example of this). In this example we write a function that produce a kernel density estimator (`?density`), gives the same `xlim`, `ylim`, `xlab` and `ylab` arguments. I want to call this plot on 9 different simulated datasets so I dont want to have to type the same code over-and-over again (I want to automate the process). 
<br/>

```r
set.seed(98765)
dens.fun <- function(x) {
  p <- plot(density(x), xlim=c(0,1),xlab="Support",main="",ylim=c(0,2.5),yaxt="n")
  axis(2,las=2,at=c(0,0.5,1,1.5,2.0,2.5),tick=TRUE)
}
x <- expand.grid(c(0.05,0.5,5),c(0.05,0.5,5))
  par(mfrow=c(3,3))
for (i in 1:dim(x)[1]) {
  dens.fun(rbeta(1000,shape1=x[i,1],shape2=x[i,2]))
}
  par(mfrow=c(1,1))
```



--- .nobackground

## Functions in R

Plots of various beta densities (beta PDF's).

<img src="assets/fig/fig4.png" title="plot of chunk fig4" alt="plot of chunk fig4" style="display: block; margin: auto;" />


--- .nobackground

## Functions in R

Functions are first class objects in R. They can be called by other functions. And this can make programming beautifully simple/efficient.

You can extract information about functions using the following functions:
* `formals()`
* `body()`
* `environment()`

In theory all source code from which R functions are derived is available to read, learn from, and improve upon. It can be a bit tricky to get at some compiled code.

The `function()` function, can be used to help create user defined functions. Whenever you have a repetitive task that you need to automate, creating a user defined function to perform that task is often a good idea (it can help make code cleaner). 





--- .segue .dark

## Lab Session (20 minutes)



--- .nobackground

## Lab Session

1. What are the three key parts to a function in R?

2. Go back to the second on `control structures`. Embed the Fibonacci sequence loop (`for` or `while`) into a `function` call with a single argument specifying the length of the sequence. What is the largest Finobacci number less then 1,000,000?

3. Write an R function which takes on two arguments `i` and `n`, where `i` represents the interest rate and `n` represents the number of discrete periods where the loan compounds. Given an initial loan amount or present value (PV) determine the future value of the loan (FV) when:
 * i=0.025, n=30, PV=500,000
 * i=0.075, n=30, PV=500,000
 * i=0.025, n=15, PV=500,000
 * i=0.075, n=15, PV=500,000
 * Note: future values (FV) for simple [compound interest](http://en.wikipedia.org/wiki/Compound_interest) problems are calculated as follows: $FV = PV ( 1+i )^n$


--- .nobackground

## Functions in R

<ol start="4">
<li> The following two are adapted from Jones et al (p. 65-66) and relate to estimating a "trimmed mean" and a "windsorized mean", respectively. Basically, each robust estimator adjusts the value of the "k" largest/smallest values prior to estimation (they can be viewed as types of weighted means). Below are definitions for each. Implement them as functions in R (hint: your function should take on two arguments, one denoting the data, and two denoting the number, k, of elements to be trimmed/winsorized). </li> 
</ol>

 * Let $\mathbf{x} = \{x_1, x_2,\dots, x_n\}$ be an i.i.d sample from some distirbution $\mathcal{F(\theta)}$. We define the order statistics of $\mathbf{x}$ as $x_{(1)} \leq x_{(2)} \leq \dots \leq x_{(n)}$. The first equation defines the trimmed mean and the second equation defines the windsorized mean. Implement both as R functions. 
 
 $$ \overline{x}_{(trimmed)} = \frac{x_{(k+1)} + \dots + x_{n-k}}{n-2k}$$
 <br/>
 $$ \overline{x}_{(windsorized)} = \frac{(k+1)*x_{(k+1)} + x_{(k+2)} + \dots + x_{(n-k+1)} + (k+1)*x_{n-k}}{n}$$
 
 



--- .segue .dark

## String Manipulation in R



--- .nobackground

## String Manipulation in R

R is traditionally thought of as a statistical language, and as such has impressive routines for performing calculation on numeric vectors and matrices, and for performing random number generation. 

However, text data is becoming increasingly prevalent and increasingly important. 
* How much text data exists on the internet?
* Mining academic literature.
* Mining social media platforms.
* Data from genetic sequences (A,T,C,G base pairs, etc.).
* Text data in electronic medical records.

Base R has a rich assortment of functions for string manipulation. Additionally, the `stringr` library is an invaluable resource and more info on it can be accessed [here](http://journal.r-project.org/archive/2010-2/RJournal_2010-2_Wickham.pdf).


--- .codemargin .outmargin .nobackground

## String Manipulation in R

In this module we are going to work with a simple vector of strings/characters which represent the names of the 50 states.


```r
suppressPackageStartupMessages(library(datasets))
state.name
```

```
##  [1] "Alabama"        "Alaska"         "Arizona"        "Arkansas"      
##  [5] "California"     "Colorado"       "Connecticut"    "Delaware"      
##  [9] "Florida"        "Georgia"        "Hawaii"         "Idaho"         
## [13] "Illinois"       "Indiana"        "Iowa"           "Kansas"        
## [17] "Kentucky"       "Louisiana"      "Maine"          "Maryland"      
## [21] "Massachusetts"  "Michigan"       "Minnesota"      "Mississippi"   
## [25] "Missouri"       "Montana"        "Nebraska"       "Nevada"        
## [29] "New Hampshire"  "New Jersey"     "New Mexico"     "New York"      
## [33] "North Carolina" "North Dakota"   "Ohio"           "Oklahoma"      
## [37] "Oregon"         "Pennsylvania"   "Rhode Island"   "South Carolina"
## [41] "South Dakota"   "Tennessee"      "Texas"          "Utah"          
## [45] "Vermont"        "Virginia"       "Washington"     "West Virginia" 
## [49] "Wisconsin"      "Wyoming"
```


--- .nobackground

## String Manipulation in R

These data are stored in a `character` vector. We can make use of all of our vector manipulation tools when working with these data.

The `length()` function tells us this vector contains 50 state names. The `nchar()` function tells us the number of characters/letters making up each state name. We plot the discrete distirbution of number of characters in a `table()`.  


```r
length(state.name)
```

```
## [1] 50
```

```r
table(nchar(state.name))
```

```
## 
##  4  5  6  7  8  9 10 11 12 13 14 
##  3  3  5  8 12  4  4  2  4  3  2
```



--- .nobackground

## String Manipulation in R

We can convert the letters to and from upper and lower case using the following functions:
* toupper()
* tolower()


```r
head(toupper(state.name),n=3)
```

```
## [1] "ALABAMA" "ALASKA"  "ARIZONA"
```

```r
head(tolower(state.name),n=3)
```

```
## [1] "alabama" "alaska"  "arizona"
```



--- .nobackground

## String Manipulation in R

What is we had upper case data and we wanted to keep only the first letter of each string upper case and convert all other characters to lower case? Here we demo `length()`, `nchar()`, `substr()`, `topupper()`, `tolower()`, `paste0()` and more...


```r
upper.state.name <- toupper(state.name)
first.letter <- substr(upper.state.name,1,1)
rest.letters <- character(length(upper.state.name))
for (i in 1:length(upper.state.name)) {
rest.letters[i] <- tolower(substr(upper.state.name[i],2,nchar(upper.state.name[i])))
}
state.name.again <- paste0(first.letter,rest.letters)
head(state.name.again,n=3)
```

```
## [1] "Alabama" "Alaska"  "Arizona"
```



--- .codemargin .outmargin .nobackground

## String Manipulation in R

Whats the difference between `paste()` and `paste0()`?
* In `paste()` the separator is a single white space (default...which can be changed).
* In `paste0()` the separator is no space.

Here are some cool things `paste()` can do:


```r
paste(1:5, LETTERS[1:5])
```

```
## [1] "1 A" "2 B" "3 C" "4 D" "5 E"
```

```r
paste(1:5, LETTERS[1:5], sep="-")
```

```
## [1] "1-A" "2-B" "3-C" "4-D" "5-E"
```

```r
paste(1:5, LETTERS[1:5], sep="&")
```

```
## [1] "1&A" "2&B" "3&C" "4&D" "5&E"
```



--- .nobackground

## String Manipulation in R

Type `?paste` into your console. Check out the `collapse` argument. This can be useful if we want to combine various parts of a character vector into a single element vector consisting of one long string. For example:


```r
a <- c("cat","god","dog")
paste(a, collapse=" ")
```

```
## [1] "cat god dog"
```

```r
paste(a, collapse=" & ")
```

```
## [1] "cat & god & dog"
```


--- .codemargin .outmargin .nobackground

## String Manipulation in R

We can perform (simple) pattern matching with the function `grep()`. For example, what proportion of the state names contain the vowel "a"?


```r
state.a <- grep(pattern="[aA]",state.name)
state.name[state.a]
```

```
##  [1] "Alabama"        "Alaska"         "Arizona"        "Arkansas"      
##  [5] "California"     "Colorado"       "Delaware"       "Florida"       
##  [9] "Georgia"        "Hawaii"         "Idaho"          "Indiana"       
## [13] "Iowa"           "Kansas"         "Louisiana"      "Maine"         
## [17] "Maryland"       "Massachusetts"  "Michigan"       "Minnesota"     
## [21] "Montana"        "Nebraska"       "Nevada"         "New Hampshire" 
## [25] "North Carolina" "North Dakota"   "Oklahoma"       "Pennsylvania"  
## [29] "Rhode Island"   "South Carolina" "South Dakota"   "Texas"         
## [33] "Utah"           "Virginia"       "Washington"     "West Virginia"
```

```r
length(state.a)/length(state.name)
```

```
## [1] 0.72
```




--- .codemargin .outmargin .nobackground

## String Manipulation in R

How many state names contain Wheel of Fortune style consonants or vowels?


```r
state.wheel <- grep(pattern="[rRsStTlLnNeE]",state.name)
state.name[state.wheel]
```

```
##  [1] "Alabama"        "Alaska"         "Arizona"        "Arkansas"      
##  [5] "California"     "Colorado"       "Connecticut"    "Delaware"      
##  [9] "Florida"        "Georgia"        "Illinois"       "Indiana"       
## [13] "Kansas"         "Kentucky"       "Louisiana"      "Maine"         
## [17] "Maryland"       "Massachusetts"  "Michigan"       "Minnesota"     
## [21] "Mississippi"    "Missouri"       "Montana"        "Nebraska"      
## [25] "Nevada"         "New Hampshire"  "New Jersey"     "New Mexico"    
## [29] "New York"       "North Carolina" "North Dakota"   "Oklahoma"      
## [33] "Oregon"         "Pennsylvania"   "Rhode Island"   "South Carolina"
## [37] "South Dakota"   "Tennessee"      "Texas"          "Utah"          
## [41] "Vermont"        "Virginia"       "Washington"     "West Virginia" 
## [45] "Wisconsin"      "Wyoming"
```


--- .nobackground

## String Manipulation in R

A related function to `grep()` is `gsub()` which can be used to substitute some string matching a given pattern for some other string. Say I had the following telephone numbers in various formats and wanted them all in the same format.


```r
phones <- c("416-967-1111","674-5551212", "4169941234")
phones1 <- gsub(pattern="-",replacement="",phones)
phones
```

```
## [1] "416-967-1111" "674-5551212"  "4169941234"
```

```r
phones1
```

```
## [1] "4169671111" "6745551212" "4169941234"
```



--- .nobackground

## String Manipulation in R

R lists a number of important functions for pattern matching and replacement. Some other cool functions that we will check out in the regular expression section include:
* `grep()`
* `grepl()`
* `sub()`
* `gsub()`
* `regexpr()`
* `gregexpr()`
* `regexec()`
* `strsplit()`




--- .nobackground

## String Manipulation in R

The last area I will touch upon with respect to string manipulation in R deals with [regular expressions](http://en.wikipedia.org/wiki/Regular_expression).

When dealing with character data regular expression are used to identify patterns and extract/modify strings constaining (or not containing) the pattern, in some predefined way. 

All of the functions listed on the previous slide can be used to implement regular expressions on textual data in R.

One of the best concise introductions to regular expression in R I know of is Spector (p. 87-99).




--- .nobackground

## String Manipulation in R

Regular expressions are composed of 3 components:
* Literal characters which match single characters
* Character classes which match any number of characters 
* Modifiers (sometimes called meta characters) act to modify literal characters and character classes

Modifiers include the following symbols:
* `.` `^` `+` `?` `*` `( )` `[ ]` `{ }` `|` `\`

Becuase these regular expression modifiers have their own meaning in the R language we must use R's escape character `\` to inform the interpreter that they are to be used in the sense of regular expression.

If you weren't confused yet, `\` represents the escape character in R. So we actually need to escape the escape character (ahhh)...and use two backslashes (`\\`) prior to these modifiers (Matloff, p. 255 is a nice discussion on this topic).   



--- .nobackground

## String Manipulation in R

This table comes from Spector (p. 92) and acts to describe the purpose of each of the modifiers (meta characters) mentioned on the last slide:

| Modifier  | Meaning for Regular Expression          |
|-----------|----------------------------------------:|
| `^`       | Anchors expression to beginning target  |
| `$`       | Anchors expression to end target        |
| `.`       | Matches any single char. except newline |
| <code> &#x7c; </code>   | Separates alternative patterns |
| `()`      | Groups patterns together                |
| `*`       | Matches 0+ occurrences of prior entry   |
| `?`       | Matches 0/1 occurrences of prior entry  |
| `+`       | Matches 1+ occurences of prior entry    |
| `{n}`     | Matches exactly n occurrences prior entry |
| `{n,}`    | Matches at least n occurrences prior entry |
| `{n,m}`   | Matches between n and m occurrences entry |



--- .nobackground

## String Manipulation in R

We're going to look at a couple of functions all of which take as arguments a regex and some character vector and return different output:
* `grep()` returns indices of vector where regex equals `TRUE`
* `grepl()` Returns logical flag (`TRUE`/`FALSE`) for element of vector given regex
* `regexpr()` returns location and length of first match regex
* `gregexpr()` returns location and length of all matches from regex

Some important arguments for these functions:
* `ignore.case=` determines if regex is case sensitive or not
* `fixed=` determines whether pattern should be interpretted in regex notation or literally
* `value=` determines if output should be actual character string or other information (logicals, indices, etc.). n.b. `value` only applies to `grep()`






--- .nobackground

## String Manipulation in R

A regular expression which matches two consecutive numbers followed by any letter (lower/upper case).


```r
a <- c("cat", "99cat", "99Z", "9Z9")
grep(pattern="[0-9][0-9][a-zA-Z]+",a)
```

```
## [1] 2 3
```

```r
grepl(pattern="[0-9][0-9][a-zA-Z]+",a)
```

```
## [1] FALSE  TRUE  TRUE FALSE
```


--- .codemargin .outmargin .nobackground

## String Manipulation in R

What is we wanted to extract the word associated with the regex? There's a couple of ways:


```r
a <- c("cat", "99cat", "99Z", "9Z9")
grep(pattern="[0-9][0-9][a-zA-Z]+",a, value=TRUE)
```

```
## [1] "99cat" "99Z"
```

```r
a[grep(pattern="[0-9][0-9][a-zA-Z]+",a)]
```

```
## [1] "99cat" "99Z"
```

```r
a[which(grepl(pattern="[0-9][0-9][a-zA-Z]+",a))]
```

```
## [1] "99cat" "99Z"
```


--- .codemargin .outmargin .nobackground

## String Manipulation in R


```r
a <-  c("99cat", "99Z")
regexpr(pattern="[0-9][0-9][a-zA-Z]+",a)
```

```
## [1] 1 1
## attr(,"match.length")
## [1] 5 3
## attr(,"useBytes")
## [1] TRUE
```

```r
b <- c("99cat 99cat", "99Z")
regexpr(pattern="[0-9][0-9][a-zA-Z]+",b)
```

```
## [1] 1 1
## attr(,"match.length")
## [1] 5 3
## attr(,"useBytes")
## [1] TRUE
```




--- .codemargin .outmargin .nobackground

## String Manipulation in R


```r
b <- c("99cat 99CAT", "67a")
bval <- gregexpr(pattern="[0-9][0-9][a-zA-Z]+",b)
bval
```

```
## [[1]]
## [1] 1 7
## attr(,"match.length")
## [1] 5 5
## attr(,"useBytes")
## [1] TRUE
## 
## [[2]]
## [1] 1
## attr(,"match.length")
## [1] 3
## attr(,"useBytes")
## [1] TRUE
```

--- .codemargin .outmargin .nobackground

## String Manipulation in R


```r
b <- c("99cat 99CAT")
bval <- gregexpr(pattern="[0-9][0-9][a-zA-Z]+",b)
for (i in 1:length(bval[[1]])){
  cat(paste0("Match", " ", i, ":"), substr(b,bval[[1]][i],bval[[1]][i] + attr(bval[[1]],"match.length")[i] - 1), sep="\n")
}
```

```
## Match 1:
## 99cat
## Match 2:
## 99CAT
```




--- .codemargin .outmargin .nobackground

## String Manipulation in R

The last function we'll talk about in this section is `strsplit()`. 


```r
a <- c("This is an intro to R workshop. I hope ur learning lots!")
strsplit(a,split="")
```

```
## [[1]]
##  [1] "T" "h" "i" "s" " " "i" "s" " " "a" "n" " " "i" "n" "t" "r" "o" " "
## [18] "t" "o" " " "R" " " "w" "o" "r" "k" "s" "h" "o" "p" "." " " "I" " "
## [35] "h" "o" "p" "e" " " "u" "r" " " "l" "e" "a" "r" "n" "i" "n" "g" " "
## [52] "l" "o" "t" "s" "!"
```

```r
strsplit(a,split=" ")
```

```
## [[1]]
##  [1] "This"      "is"        "an"        "intro"     "to"       
##  [6] "R"         "workshop." "I"         "hope"      "ur"       
## [11] "learning"  "lots!"
```



--- .codemargin .outmargin .nobackground

## String Manipulation in R


```r
a <- c("This is an intro to R workshop. I hope ur learning lots!")
strsplit(a,split="[ .!]")
```

```
## [[1]]
##  [1] "This"     "is"       "an"       "intro"    "to"       "R"       
##  [7] "workshop" ""         "I"        "hope"     "ur"       "learning"
## [13] "lots"
```


--- .nobackground

## String Manipulation in R

The ability to manipulate textual data is becoming increasingly important in data science. 

R has many built in facilities for text mining.
* We have discussed base R functionality for text mining.
* We have not discussed `stringr` or `stringi` libraries. Check em out...

Regular expressions are powerful tools for manipulating textual data or extracting/substituting characters from text. Entire books have been written on regular expressions in different languages. If you are doing some serious text mining you should likely check em out. 





--- .segue .dark

## Lab Session (20 minutes)



--- .codemargin .outmargin .nobackground

## Lab Session

1. Use the following code to access the `pbc` data frame from the `survival` library:


```r
suppressPackageStartupMessages(library(survival))
names(pbc)
```
  
* Extract all columns from the `pbc` data frame where the column name is made of 3 characters and save the new object to the `pbc1` data frame.
  


<ol start="2">
<li> Create the following vector: </li>
</ol>


```r
filenames <- c("chris.jpeg","dog.jpeg","cat.tiff","cmeaney25july2014.jpeg")
```

* First, determine a method to return only those filenames which have a ".jpeg" extension. 
* Next, determine how you might return only the filename prefix of files with a ".jpeg".






--- .nobackground

## Lab Session

<ol start="3">
<li> Create the following character vector: <code> a <- c("This is an intro to R workshop. I hope ur learning lots!"). </code> Create a new vector which contains only the words in this vector, each as a separate element (with no whitespace elements). </li>
</ol>






<ol start="4">
<li> Create the following vector. <code> b <- c("99cat 99CAT", "67a") </code>. Then apply the following regular expression: <code> bval <- gregexpr(pattern="[0-9][0-9][a-zA-Z]+",b) </code>. Examine the <code> str(bval) </code> and string together some R functions such that you return the following output: </li>
</ol>


```
## List 1 - Match 1:
## 99cat
## List 1 - Match 2:
## 99CAT
## List 2 - Match 1:
## 67a
```




--- .nobackground

## Lab Session

<ol start="5">
<li> The following question is adapted from Spector (p. 98). Oftentimes analysts/programmers work with financial data. This is often read into R as character data. Add 1000 dollars to each element of the <code> money </code> vector. </li>
</ol>


```r
money <- c("$55.26","$1,000.25","$75,234.34")
```





--- .segue .dark

## Data Manipulation in R




--- .nobackground

## Data Manipulation in R

Thus far we have encountered a disparate set of tools used in data maniupation. For example:
* Vector (object) extraction by indexing is a basic form of data manipulation.
* We considered some aspects of data manipulation when implementing conditional logical processing via `if`, `else`, and `ifelse()`.
* We saw how textual data could be manipulated or how regular expression could be used for data manipulation in the last module. 

In this module we are going to try to summarize and expand on R's data manipulation capabilities (sometimes reiterating what was learned in past modules).

Some new functions we will encounter include:
* Comparison operators
* Logical operators
* Misc. data manipulation functions (`merge()`, `sort()`, `order()`, `rank()`, `duplicated()`, `unique()`, `stack()`, `split()`)




--- .codemargin .outmargin .nobackground

## Data Manipulation in R

Let's start by considering the basic problem of indexing a vector:


```r
a <- 1:10
## Extract elements greater than 5
a[a>5]
```

```
## [1]  6  7  8  9 10
```

```r
## Extract elements 3,6,9
a[seq(from=3,to=9,by=3)]
```

```
## [1] 3 6 9
```

```r
## Extract elements divisible by 4
a[a!=4]
```

```
## [1]  1  2  3  5  6  7  8  9 10
```



--- .nobackground

## Data Manipulation in R

Basically, the idea behind data extraction for any R object (be it a vector, matrix, data frame, etc.) is to feed the index of that object a set of integer or logical values corresponding to the inclusion of that item in the newly created object.

To accomplish this goal we need to have a sense of R's comparison operators. We list a number of them below (I adapt this list from [Hadley's book](http://adv-r.had.co.nz/Vocabulary.html)):
* `==`, `!=`, `>`, `>=`, `<`, `<=`
* `is.na()` tests elements of vector for `NA`
* `compelete.cases()` works on a sequence of vectors, matrices or data frames and returns those elements where no `NA` values are present.
* `is.finite()` and `is.inifinite()` test for the presence of `Inf` and `-Inf` values.
* `all.equal()` tests for the equality of all elements of a vector. Reporting difference index is sensible.
* `identical()` works similarly testing the equality of components of a vector.


--- .codemargin .outmargin .nobackground

## Data Manipulation in R


```r
a <- rep(1L,5)
b <- 1:5
a == b
```

```
## [1]  TRUE FALSE FALSE FALSE FALSE
```

```r
a >= b
```

```
## [1]  TRUE FALSE FALSE FALSE FALSE
```

```r
identical(a,a)
```

```
## [1] TRUE
```

```r
all.equal(a,b)
```

```
## [1] "Mean relative difference: 2.5"
```




--- .nobackground

## Data Manipulation in R


```r
df <- data.frame(ID=c(1:3,3,NA),X=c(5,9,2,-Inf,3))
## Return cases where df$ID is not equal to NA
dat1 <- df[is.na(df$ID)==FALSE,]
## Return those cases where no infinite values occur
dat2 <- df[is.finite(df$X)==TRUE,]
## Return complete cases
dat3 <- df[complete.cases(df)==TRUE,]
## We can remove columns or rows on data frame with NULL
dat4 <- df
dat4$X <- NULL
```



--- .nobackground

## Data Manipulation in R

Another important class of functions when conducting data manipulation are those used for logical and set operations. These include:
* `%in%`, `match()`
* `&`, `|`, `!`, `xor()`
* `all()`, `any()`
* `intersect()`, `union()`, `setdiff()`, `setequal()`
* `which()`


--- .codemargin .outmargin .nobackground

## Data Manipulation in R


```r
a <- c("A","B","C")
b <- c("C","D","E")
intersect(a,b)
```

```
## [1] "C"
```

```r
union(a,b)
```

```
## [1] "A" "B" "C" "D" "E"
```

```r
setdiff(a,b)
```

```
## [1] "A" "B"
```

```r
setequal(a,b)
```

```
## [1] FALSE
```


--- .codemargin .outmargin .nobackground

## Data Manipulation in R

Perhaps the weirdest of the logical operators/functions is `xor()`. The symbol stands for [exclusive or](http://en.wikipedia.org/wiki/Exclusive_or). Basically, it outputs `TRUE` if the (logical) elements being compared are different, else if the elements are the same it output `FALSE`. Below are some examples:


```r
xor(0,0)
```

```
## [1] FALSE
```

```r
xor(1,0)
```

```
## [1] TRUE
```

```r
xor(-1,9)
```

```
## [1] FALSE
```

```r
xor(c(TRUE,FALSE,TRUE,FALSE),c(TRUE,TRUE,FALSE,FALSE))
```

```
## [1] FALSE  TRUE  TRUE FALSE
```




--- .codemargin .outmargin .nobackground

## Data Manipulation in R


```r
set.seed(12345)
df <- data.frame(X=c(1:5),Y=c(LETTERS[1:5]),Z=rnorm(5))
df1 <- df[df$X %in% c(1,3),]
df2 <- df[df$X==1 & df$Y=="A",]
df3 <- df[df$X==1 | df$Z > 0,]
df4 <- df[(df$X==1 & df$Z>0) | (df$Z<0),]
```



--- .nobackground

## Data Manipulation inR

Lastly, we will discuss some miscellaneous data manipulation functions in R: 
* `merge()` joins to data objects by unique ID (key)
* `sort()` will sort a vector
* `order()` is like sort, but used if you want to sort on more than one item
* `rank()` given numeric data will output their rank order 
* `duplicated()` determines if elements of vector are duplicates of earlier vector elements
* `unique()`  is similar to above except only returns the unique elements
* `stack()` takes a matrix/dataframe and stacks the columns on top of each other (n.b. watch out for conversion)
* `split()` does group-wise processing


--- .codemargin .outmargin .nobackground

## Data Manipulation in R


```r
a <- c(1,2,2,3.5,4,5.8,6)
sort(a)
```

```
## [1] 1.0 2.0 2.0 3.5 4.0 5.8 6.0
```

```r
rank(a)
```

```
## [1] 1.0 2.5 2.5 4.0 5.0 6.0 7.0
```

```r
duplicated(a)
```

```
## [1] FALSE FALSE  TRUE FALSE FALSE FALSE FALSE
```

```r
unique(a)
```

```
## [1] 1.0 2.0 3.5 4.0 5.8 6.0
```



--- .codemargin .outmargin .nobackground

## Data Manipulation in R



```r
set.seed(12345)
df <- data.frame(X=c(1,2,1,2,1),Y=c(2,7,3,6,5),Z=rnorm(5))
df[order(-df[,"X"],df[,"Y"]),]
```

```
##   X Y       Z
## 4 2 6 -0.4535
## 2 2 7  0.7095
## 1 1 2  0.5855
## 3 1 3 -0.1093
## 5 1 5  0.6059
```

```r
df[with(df, order(-X,Y)),]
```

```
##   X Y       Z
## 4 2 6 -0.4535
## 2 2 7  0.7095
## 1 1 2  0.5855
## 3 1 3 -0.1093
## 5 1 5  0.6059
```



--- .codemargin .outmargin .nobackground

## Data Manipulation in R


```r
set.seed(12345)
a <- data.frame(ID=c(1:5),Za=rnorm(5))
b <- data.frame(ID=c(5:1),Zb=rnorm(5))
ab <- merge(x=a,y=b,by.x="ID",by.y="ID")
ab
```

```
##   ID      Za      Zb
## 1  1  0.5855 -0.9193
## 2  2  0.7095 -0.2842
## 3  3 -0.1093 -0.2762
## 4  4 -0.4535  0.6301
## 5  5  0.6059 -1.8180
```


--- .nobackground

## Data Manipulation in R

The stack 

```r
a <- as.data.frame(matrix(1:9,ncol=3))
t(stack(a))
```

```
##        [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9]
## values "1"  "2"  "3"  "4"  "5"  "6"  "7"  "8"  "9" 
## ind    "V1" "V1" "V1" "V2" "V2" "V2" "V3" "V3" "V3"
```

This `stack()` function is useful in certain mathematical procedures (and as the vectroization, or vec operator), not surprisingly its author - Douglas Bates - does a lot of really good matrix algebra on linear model in R. 


--- .codemargin .outmargin .nobackground

## Data Manipulation in R


```r
set.seed(12345)
df <- data.frame(X=c(1,2,1,2,1),Z=rnorm(5))
split(df$Z,df$X)
```

```
## $`1`
## [1]  0.5855 -0.1093  0.6059
## 
## $`2`
## [1]  0.7095 -0.4535
```

```r
lapply(split(df$Z,df$X),mean)
```

```
## $`1`
## [1] 0.3607
## 
## $`2`
## [1] 0.128
```




--- .nobackground

## Data Manipulation in R

R has many functions for data manipulation. These are just a smattering of the ones which I think are most useful. As always, a google search for your specific problem may reveal more meaningful internal functions which are available.

These problems have been kept very small for illustrative purposes. All functions scale up just fine. 

Some thoughts:
* The logical comparison operators are very useful at identify items/cases/rows which meet some criterion, and selecting them from some larger object. I use them all the time. 
* The boolean logic (set operation) functions are VERY useful. I use them all the time to find people in one set of ID's not in some other set of ID's etc...
* `merge()`, `order()`, `duplicated()`, `complete.cases()`, `is.na()` are bread and butter functions I use in data cleaning and manipulation all the time. 

Spend some time and just think how these function might make there way into your workflow?



--- .segue .dark

## Lab Session (20 minutes)





--- .nobackground

## Data Manipulation in R

1. Sequence as vector `a <- 1:100`. Using indexing techniques, keep only those elements divisible by 7 or 33.


```
##  [1]  7 14 21 28 33 35 42 49 56 63 66 70 77 84 91 98 99
```


<ol start="2">
<li> In the <code> survival</code> package there is a <code> pbc</code> dataset. Subset this dataset to include only the males who have bilirubin levels greater than 1. Do not use the <code> subset()</code> function for this. Afterwords though, do check out what subset is all about (<code>?subset</code>). </li>
</ol>





<ol start="3">
<li> Create the following two vectors of ID's. How many ways can you think of to create a list of the <code> a </code> set ID's which are NOT in the <code> b </code> set ID's? </li>
</ol>


```r
a <- paste0(LETTERS[1:26],1:26)
b <- c("A1","C3","X24","Z26")
```






--- .nobackground

## Data Manipulation in R

<ol start="4">
<li> Load the <code> mlmRev </code> package with and <code> install.packages("mlmRev")</code> call followed by a <code> library(mlmRev) </code> call. Sort the <code> Exam </code> data frame in this package by <code> "school"</code> then <code> "sex" </code>  and finally <code> "normexam" </code>. </li>
</ol>





<ol start="5">
<li> Another cool function is <code> rle() </code> for run length encoding. This function is useful for identifying consecutive runs of characters within a data vector. Consider the data vector below, use the <code> rle() </code> function to identify the number of runs of 2 that occur in excess of length/repeat 3 in the following vector. </li>
</ol>


```r
a <- c(rep(1:3,1:3),2,2,2,2,rep(1:3,2:4))
a
```

```
##  [1] 1 2 2 3 3 3 2 2 2 2 1 1 2 2 2 3 3 3 3
```






--- .segue .dark

## Advanced Data Manipulation in R





--- .nobackground

## Advanced Data Manipulation in R

In this section we are going to talk about a few functions in two of [Hadley Wickham's](https://github.com/hadley) contirbuted CRAN packages, namely: `plyr` and `reshape2`.

The `plyr` package is used for data manipulation and summarization. It operates under the "split, apply, combine" framework. The idea is to use the `plyr` functions to divide the dataset according to its grouping variable, to summarize the data by grouping variable, and then to recombine the dataset summary variables according to the original grouping variables. 

The `reshape2` library contains a few important functions for manipulating datasets from wide to long, or long to wide, or performing many other manipulations. The two important functions here are:
* `melt()`
* `cast()`




--- .nobackground

## Advanced Data Manipulation in R

The `plyr` package was written by Hadley Wickham. More details on the procedures in this package can be found in the following [article](http://www.jstatsoft.org/v40/i01/paper). 

The general purpose of the function embedded in this package are to break the data apart according to some grouping variable (the "split" step), then to apply some function over each "split" of data, and finally to combine the results back together in the form of some data object. 

In this section we are going to work with the `iris` dataset which comes shipped with base R. The examples in this section are borrowed from [Data Manipulation with R (Abendin)](http://www.packtpub.com/data-manipulation-with-r/book).



--- .nobackground

## Advanced Data Manipulation in R

Let's just take a quick look at the iris data (it contains information on the sepal/petal lengths and widths of various species of iris plants):


```r
summary(iris[,-5])
```

```
##   Sepal.Length   Sepal.Width    Petal.Length   Petal.Width 
##  Min.   :4.30   Min.   :2.00   Min.   :1.00   Min.   :0.1  
##  1st Qu.:5.10   1st Qu.:2.80   1st Qu.:1.60   1st Qu.:0.3  
##  Median :5.80   Median :3.00   Median :4.35   Median :1.3  
##  Mean   :5.84   Mean   :3.06   Mean   :3.76   Mean   :1.2  
##  3rd Qu.:6.40   3rd Qu.:3.30   3rd Qu.:5.10   3rd Qu.:1.8  
##  Max.   :7.90   Max.   :4.40   Max.   :6.90   Max.   :2.5
```



What I haven't shown here is that there exist 50 records on each variety/species of plants. We are going show a number of ways to summarize the sepal and petal height/width data by species. Here is where `plyr` strength is realized. 





--- .codemargin .outmargin .nobackground

## Advanced Data Manipulation in R


```r
iris.setosa <- iris[iris$Species=="setosa",-5]
iris.versicolor <- iris[iris$Species=="versicolor",-5]
iris.virginica <- iris[iris$Species=="virginica",-5]
mean.setosa <- colMeans(iris.setosa)
mean.versicolor <- colMeans(iris.versicolor)
mean.virginica <- colMeans(iris.virginica)
mean.iris <- rbind(mean.setosa,mean.versicolor,mean.virginica)
rownames(mean.iris) <- c("setosa","versicolor","virginica")
mean.iris
```

```
##            Sepal.Length Sepal.Width Petal.Length Petal.Width
## setosa            5.006       3.428        1.462       0.246
## versicolor        5.936       2.770        4.260       1.326
## virginica         6.588       2.974        5.552       2.026
```



--- .codemargin .outmargin .nobackground

## Advanced Data Manipulation in R


```r
mean.iris.loop <- NULL
for (species in unique(iris$Species)) {
  iris.sub <- iris[iris$Species==species,]
  mean.iris.sub <- colMeans(iris.sub[,-5])
  mean.iris.loop <- rbind(mean.iris.loop,mean.iris.sub)
}
rownames(mean.iris.loop) <- c("setosa","versicolor","virginica")
mean.iris.loop
```

```
##            Sepal.Length Sepal.Width Petal.Length Petal.Width
## setosa            5.006       3.428        1.462       0.246
## versicolor        5.936       2.770        4.260       1.326
## virginica         6.588       2.974        5.552       2.026
```




--- .codemargin .outmargin .nobackground

## Advanced Data Manipulation in R


```r
install.packages(plyr,quiet=TRUE)
```

```
## Error in install.packages : object 'plyr' not found
```

```r
suppressPackageStartupMessages(library(plyr))
ddply(iris,~Species,function(x) colMeans(x[,-which(colnames(x)=="Species")]))
```

```
##      Species Sepal.Length Sepal.Width Petal.Length Petal.Width
## 1     setosa        5.006       3.428        1.462       0.246
## 2 versicolor        5.936       2.770        4.260       1.326
## 3  virginica        6.588       2.974        5.552       2.026
```



--- .nobackground

## Advanced Data Manipulation in R

The type of `plyr` function that you call depends on:
* The type of input data object that you have
* The type of output data object that you want to obtain
Below we show input data (rows) and output data (columns) and corresponding `plyr` function: 

|             | Array     | Data frame  | List      | Discarded   | 
|-------------|-----------|-------------|-----------|------------:|
| Array       | `aaply()` | `adply()`   | `alply()` | `a_ply()`   |
| Data frame  | `daply()` | `ddply()`   | `dlply()` | `d_ply()`   |
| List        | `laply()` | `ldply()`   | `llply()` | `l_ply()`   |
<br/>
As you might see...the first letter of the function corresponds to the type of input object under consideration; whereas, the the second letter corresponds to the type of output object under consideration. 




--- .nobackground

## Advanced Data Manipulation in R

Here we will play with the functions. We will use the `Exam` data in the `mlmRev` package.
* Get the means exam scores for each combination of `sex` and `type`:


```r
suppressPackageStartupMessages(library(plyr))
suppressPackageStartupMessages(library(mlmRev))
ddply(Exam,.(sex,type),summarise,mean.exam=mean(normexam,na.rm=TRUE))
```

```
##   sex type mean.exam
## 1   F  Mxd   0.02478
## 2   F Sngl   0.14603
## 3   M  Mxd  -0.21601
## 4   M Sngl   0.02335
```



--- .nobackground

## Advanced Data Manipulation in R

Here we will play with the functions. We will use the `Exam` data in the `mlmRev` package.
* Get the `summary` of exam scores for each combination of `sex` returned as a list (just show females):


```r
suppressPackageStartupMessages(library(plyr))
suppressPackageStartupMessages(library(mlmRev))
dlply(Exam,.(sex),summarise,sixnumsum=summary(normexam))[[1]]
```

```
##   sixnumsum
## 1    -3.060
## 2    -0.555
## 3     0.074
## 4     0.093
## 5     0.747
## 6     3.670
```



--- .nobackground

## Advanced Data Manipulation in R

Apply two functions over the `daply()` functions:


```r
suppressPackageStartupMessages(library(mlmRev))
chris.summary <- function(x){
  mean.x <- mean(x,na.rm=TRUE)
  sd.x <- sd(x, na.rm=TRUE)
  summary.data <- data.frame(mean.x=mean.x,sd.x=sd.x)
  return(summary.data)
}
daply(Exam,.(sex),summarise,chris.summary(normexam))
```

```
## $F
##    mean.x   sd.x
## 1 0.09332 0.9697
## 
## $M
##    mean.x  sd.x
## 1 -0.1404 1.026
```




--- .nobackground

## Advanced Data Manipulation in R

Now we move on to talk about another one of Hadley Wickham's R packages: `reshape2`. Some details regarding the functionality of the package can be found [here](http://www.jstatsoft.org/v21/i12/paper).

Data come in different formats. Two common formats are:
* Long format
* Wide format
Certain statistical functions require data in one form or another. The ability to seamlessly convert data amongst these different forms/structures is what `reshape2` attempts to facilitate.

The package has two main functions: `melt()` and `cast()`
* `melt` takes the original data and melts it down into a simpler form.
* `cast` then works on this melted data eventually returning the data in a form that you specify.



--- .nobackground

## Advanced Data Manipulation in R

The way the `reshape2` package envisions data is being broken into 2 categories:
* Identifier variables: unique keys, and categorical type data that stratify your measured results
* Measured variables: those data elements which are measured and of interest.

For example consider the following data:

|  ID      | Term      | Math        | English   | Total       | 
|----------|-----------|-------------|-----------|------------:|
| 1        | 1 | 40   | 50 | 90   |
| 1        | 2 | 20  | 40 | 60  |
| 2        | 1 | 30  | 30 | 60   |
| 2        | 2 | 50   | 30 | 80   |
<br/>
The variables ID and Term are considered "identifiers"; whereas, the variables Math, English and Total are considered "measured" variables. The data in in LONG format.



--- .nobackground

## Advanced Data Manipulation in R

We could then put these data into wide format if need be:

|  ID      | Math.1  | Math.2  | English.1  | English.2 | Total.1 | Total.2 | 
|----------|---------|---------|------------|-----------|---------|--------:|
| 1        | 40   | 20 | 50   | 40 | 90 | 60 |
| 2        | 30  | 50 | 30  | 30 | 60 | 80 |

How might this be accomplished in R? The `reshape2` package is one approach.



--- .nobackground

## Advanced Data Manipulation in R


```r
df.long <- data.frame(id=c(1,1,2,2),term=c(1,2,1,2),math=c(50,60,40,80),english=c(50,60,30,90))
df.long
```

```
##   id term math english
## 1  1    1   50      50
## 2  1    2   60      60
## 3  2    1   40      30
## 4  2    2   80      90
```




--- .nobackground

## Advanced Data Manipulation in R


```r
suppressPackageStartupMessages(library(reshape2))
df.long <- data.frame(id=c(1,1,2,2),term=c(1,2,1,2),math=c(50,60,40,80),english=c(50,60,30,90))
melt(df.long,id.vars=c("id","term"),measured=c("math","english"))
```

```
##   id term variable value
## 1  1    1     math    50
## 2  1    2     math    60
## 3  2    1     math    40
## 4  2    2     math    80
## 5  1    1  english    50
## 6  1    2  english    60
## 7  2    1  english    30
## 8  2    2  english    90
```




--- .nobackground

## Advanced Data Manipulation in R


```r
suppressPackageStartupMessages(library(reshape2))
df.long <- data.frame(id=c(1,1,2,2),term=c(1,2,1,2),math=c(50,60,40,80),english=c(50,60,30,90))
melt.df.long <- melt(df.long,id.vars=c("id","term"),measured=c("math","english"))
melt.df.wide <- dcast(melt.df.long,id ~ ...)
melt.df.wide
```

```
##   id 1_math 1_english 2_math 2_english
## 1  1     50        50     60        60
## 2  2     40        30     80        90
```


--- .codemargin .outmargin .nobackground

## Advanced Data Manipulation in R


```r
suppressPackageStartupMessages(library(reshape2))
df.long <- data.frame(id=c(1,1,2,2),term=c(1,2,1,2),math=c(50,60,40,80),english=c(50,60,30,90))
melt.df.long <- melt(df.long,id.vars=c("id","term"),measured=c("math","english"))
df.wide <- dcast(melt.df.long,id ~ ...)
melt.df.wide <- melt(df.wide,id.vars=c("id"),measured=c("1_math","2_math","1_english","2_english"))
melt.df.wide$term <- ifelse(substr(melt.df.wide$variable,1,1)=="1",1,2)
melt.df.wide$variable <- gsub(pattern="[1-2_]",replacement="",x=as.character(melt.df.wide$variable))
back.to.long <- dcast(melt.df.wide,id + term ~ ...)
back.to.long
```

```
##   id term english math
## 1  1    1      50   50
## 2  1    2      60   60
## 3  2    1      30   40
## 4  2    2      90   80
```



--- .nobackground

## Advanced Data Manipulation in R

Data manipulation is a very important part of data science and statistics. The past 2 modules have introduced many base R functions and contributed functions which should help facilitate the ease at which data manipulation can be conducted. 

As an aside, when performing any sort of analysis in R some (smart) people think "What would Hadley do?". Hadley Wickham is an R rockstar. He is chief scientist at RStudio. And has contributed many useful packages to CRAN. So checking out his [guthub](https://github.com/hadley) page is well worth the time invested, as it will likely save you huge time down the road when you realize "why did I spend so much time trying to code that from scratch, Hadley already made some great function to accomplish just this task".


--- .segue .dark

## Lab Session (10 minutes)




--- .nobackground

## Advanced Data Manipulation in R

1. Load the `pbc` data from the `survival` library. Use any of the `plyr` functions of your choice to report the mean/SD bilirubin levels `bili` as a function of `sex` and `ascites`. Get rid of `NA` values on any of the variables under consider before conducting the analysis.  



2. Load the `Penicillin` data using the following functions: `install.packages("lme4")` and then `library(lme4)`. Consider the `plate` and the `sample` as identifiers, and the `diameter` as the measured variable. Create a dataset which is 24 rows long (24 is the number of unique `plate` ID's) and 6 columns wide (where each column variable is the `sample` identifier). Use the `melt()` and `dcast()` function to accomplish this goal.



3. Base R also has a cool function called `reshape()`. Check out it's functionality using `?reshape`. See if you can accomplish the same objective as part 2, using the `reshape()` function from base R instead of the `melt()` and `dcast()` functions from the `reshape2` package.  






--- .segue .dark

## Random Number Generation in R






--- .nobackground

## Random Number Generation in R

Random number generation has many applications in the computational sciences:
* Simulation in statistical modeling
* Statistical sampling
* Numerical analysis (MCMC)
* Stochastic decision analysis
* Real life applications: gambling, video games, etc.

R has extensive algorithms for generating (pseudo) random numbers from a variety of different distributions. Check out `?RNG` for more details.

Other important features of the random number generator can be obtained using:
* `?.Random.seed`
* `?RNGkind`
* `?RNGversion`




--- .nobackground

## Random Number Generation in R

Below is a table of R's various random number generators. (`?Distributions`)

|  Distribution      | RNG         | PDF           | CDF         | Quantile F'n     | 
|--------------------|-------------|---------------|-------------|-----------------:|
|  Beta              | `rbeta()`   | `dbeta()`     | `pbeta()`   | `qbeta()`        |
|  Binomial              | `rbinom()`   | `dbinom()`     | `pbinom()`   | `qbinom()`        |
|  Cauchy              | `rcauchy()`   | `dcauchy()`     | `pcauchy()`   | `qcauchy()`        |
|  Chi-squared              | `rchisq()`   | `dchisq()`     | `pchisq()`   | `qchisq()`        |
|  Exponential              | `rexp()`   | `dexp()`     | `pexp()`   | `qexp()`        |
|  F              | `rf()`   | `df()`     | `pf()`   | `qf()`        |
|  Gamma              | `rgamma()`   | `dgamma()`     | `pgamma()`   | `qgamma()`        |
|  Geometric              | `rgeom()`   | `dgeom()`     | `pgeom()`   | `qgeom()`        |
|  Hyper-geometric              | `rhyper()`   | `dhyper()`     | `phyper()`   | `qhyper()`        |




--- .nobackground

## Random Number Generation in R

And there are even more `Distributions` to choose from:

|  Distribution      | RNG         | PDF           | CDF         | Quantile F'n     | 
|--------------------|-------------|---------------|-------------|-----------------:|
|  Log-Normal              | `rlnorm()`   | `dlnorm()`     | `plnorm()`   | `qlnorm()`        |
|  Multinomial              | `rmulti()`   | `dmulti()`     | `pmulti()`   | `qmulti()`        |
|  Negative Binomial              | `rnbinom()`   | `dnbinom()`     | `qnbinom()`   | `qnbinom()`   |
|  Normal              | `rnorm()`   | `dnorm()`     | `pnorm()`   | `qnorm()`        |
|  Poisson              | `rpois()`   | `dpois()`     | `ppois()`   | `qpois()`        |
|  Student's T              | `rt()`   | `dt()`     | `pt()`   | `qt()`        |
|  Uniform             | `runif()`   | `dunif()`     | `punif()`   | `qunif()`        |
|  Weibull              | `rweibull()`   | `dweibull()`     | `pweibull()`   | `qweibull()`        |




--- .nobackground

## Random Number Generation in R

If you're probability theory is a little rusty the above functions can be a great way to learn about various probability functions. 
* `rxxx()` creates a sequence of random numbers from the given probability function
* `pxxx()` returns the value of the density function (PDF/PMF) for a given value of support
* `dxxx()` returns the $P(X) \leq x$ for a given CDF and a given threshold along the support (x)
* `qxxx()` returns the quantile associated with a given probability value

In the next few slides we'll investigate some of the probabiltiy functions. Then we'll look into some applications of the random number generation in R which could find there way into your workflow. 



--- .nobackground

## Random Number Generation in R

Let's consider the exponential density function:

$$ 
f(x;\lambda) = \left\{ 
  \begin{array}{l l}
    \lambda e^{-\lambda x} & \quad \text{if $x$ $\geq$ 0}\\
    0 & \quad \text{if $x$ < 0}
  \end{array} \right.
$$

We could go to [Wikipedia](http://en.wikipedia.org/wiki/Exponential_distribution) and learn a bit more about the exponential distirbution.

$$ E(X) = \frac{1}{\lambda} $$

$$ VAR(X) = \frac{1}{\lambda^2} $$

On the next slides we'll show how R could be used to learn more about this density function.   


--- .nobackground

## Random Number Generation in R

Let's consider the exponential density function. Here we consider an exponential distribution with a rate parameter $\lambda=2$.


```r
set.seed(12345)
X <- rexp(10000,rate=0.5)
mean(X)
```

```
## [1] 2.01
```

```r
var(X)
```

```
## [1] 4.017
```



--- .nobackground

## Random Number Generation in R

<img src="assets/fig/fig5.png" title="plot of chunk fig5" alt="plot of chunk fig5" style="display: block; margin: auto;" />



--- .nobackground

## Random Number Generation in R

<img src="assets/fig/fig6.png" title="plot of chunk fig6" alt="plot of chunk fig6" style="display: block; margin: auto;" />



--- .codemargin .outmargin .nobackground

## Random Number Generation in R

Use RNG to compare statistical properties of T-test and Wilcoxon Rank Sum test.


```r
set.seed(98765)
dat <- matrix(NA,ncol=2,nrow=1000)
compare.test <- function(mu1=0,sd1=1,mu2=0.05,sd2=1,n=50){
  X1 <- rnorm(100,mu1,sd1)
  X2 <- rnorm(100,mu2,sd2)
  Y1 <- rep(0,length(X1))
  Y2 <- rep(1,length(X2))
  X <- c(X1,X2)
  Y <- c(Y1,Y2)
  T.pval <- t.test(X~Y)$p.value
  W.pval <- wilcox.test(X~Y,paired=FALSE)$p.value
  return(c(T.pval,W.pval))
}
dat <- t(replicate(1000,compare.test(mu1=0,sd1=1,mu2=0.5,sd2=1,n=50)))
sum(ifelse(dat[,1]>0.05,0,1))
sum(ifelse(dat[,2]>0.05,0,1))
```



--- .codemargin .outmargin .nobackground

## Random Number Generation in R

But what if the data are not Normal? Do results still favour the T-test?


```r
set.seed(98765)
dat <- matrix(NA,ncol=2,nrow=1000)
compare.test <- function(df1=1,df2=1.5,n=50){
  X1 <- rchisq(100,df1)
  X2 <- rchisq(100,df2)
  Y1 <- rep(0,length(X1))
  Y2 <- rep(1,length(X2))
  X <- c(X1,X2)
  Y <- c(Y1,Y2)
  T.pval <- t.test(X~Y)$p.value
  W.pval <- wilcox.test(X~Y,paired=FALSE)$p.value
  return(c(T.pval,W.pval))
}
dat <- t(replicate(1000,compare.test(df1=1,df2=1.5,n=50)))
sum(ifelse(dat[,1]>0.05,0,1))
sum(ifelse(dat[,2]>0.05,0,1))
```



--- .nobackground

## Random Number Generation in R

So what did we learn from the last two R code chunks. The purpose was to demonstrate the use of random number generators from statistical simulation. Basically, statistical estimators are typically valid under certain distributional assumptions. Simulation allows us the opportunity to investigate these properties when theory may elude us. 

With respect to the problem at hand:
* In simulation experiment 1 we learned that the T-test is mildly more powerful than the Wilcoxon rank sum test when the distirbution generating the data is Normal.
* In simulation experiment2 we learned that the T-test is much less powerful than the Wilcoxon rank sum test when the distribution gnerating the data is non-Normal (in our case Chi-squared).

In the previous example we are able to compare the [efficiency](http://en.wikipedia.org/wiki/Efficiency_(statistics\)) of our test procedures without going into more complicated mathematics of Pittman or Bahadur. 




--- .nobackground

## Random Number Generation in R

Random numbers are also useful for drawing (random) statistical samples. These are useful when designing RCT's, etc. 

Say for example we have access to 10 people with the following ID's. Our goal is to draw 5 people for inclusion in the control group and 5 people for inclusion into the treatment group. 


```r
set.seed(4567)
ID <- paste0(LETTERS[1:10],1:10)
trt <- sample(ID,5,replace=FALSE)
con <- setdiff(ID,trt)
trt
```

```
## [1] "C3"  "G7"  "B2"  "J10" "D4"
```

```r
con
```

```
## [1] "A1" "E5" "F6" "H8" "I9"
```



--- .nobackground

## Random Number Generation in R

Say the design of the trial was such that patients were being prospectively enrolled. In this case we want to generate a sequence of random variables which dictate allocation into the treatment or the control group. Again, say we have plan to enrol 10 patients, one approach to the allocation problem could be as follows:


```r
set.seed(13579)
allocate <- rbinom(10,1,0.5)
allocate
```

```
##  [1] 0 1 0 1 0 0 0 1 1 0
```



--- .nobackground

## Random Number Generation in R

In summary, RNG's have many scientific and real life uses. Statisticians make frequent use of RNG's for many purposes, but my take is that they are underutilized by non-statisticians.

Spend a few minutes considering how RNG's may be used in your field of work.



--- .segue .dark

## Lab Session (10 minutes)



--- .codemargin .outmargin .nobackground

## Random Number Generation in R

1. In probability theory there exist a very important law, called the [law of large numbers](http://en.wikipedia.org/wiki/Law_of_large_numbers). There are two version of the LLN, and both versions of the law state that – with virtual certainty – the sample average $\overline{X}_n=\frac1n(X_1+\cdots+X_n)$ converges to the expected value $\overline{X}_n \to \mu$ as $n \to \infty$. Using the `rpois()` function recreate the following plot and which demonstrates how the sample average converges the $\lambda$ as the sample size approaches infinity. 

<img src="assets/fig/rng_scatter.png" title="plot of chunk rng_scatter" alt="plot of chunk rng_scatter" style="display: block; margin: auto;" />


--- .nobackground

## Random Number Generation in R

<ol start="2">
<li> In applied statistics the <a href=http://en.wikipedia.org/wiki/Bootstrapping_(statistics)> bootstrap </a> is an important method which is used to derive estimates of variance, standard error, and confidence intervals in instances where statistical theory may be challenging to derive closed for solutions. A classic example is deriving the 95% CI of the sample median. The procedure can be employed using the <code>sample()</code> function in R. Consider the algorithm below: </li> 
</ol>
* Draw a sample of size 100 from a normal distribution as follows: `a <- rnorm(100,0,1)`.
* Using `sample(a,100,replace=TRUE)` draw a bootstrap sample from `a`. Calculate the median.
* Repeat the sampling step 1000 times using a for loop.
* Rank order the above vector and draw the 25th and 975th values from the ordered sample. 
* This will be you 95% bootstrap confidence interval for the sample median.
* Plot the distribution of the bootstrap distribution using `hist()`





--- .segue .dark

## Data Input/Output in R


--- .nobackground

## Data Input/Output in R

As a Biostatistician I typically receive data in many different formats (e.g. Excel, SPSS, SAS, STATA, etc.). Prior to analysis I must import these data into R. A very complementary task to data import, is data export. Once an analysis is complete it is sometimes necessary to export a cleaned data object from R into some other format. 

R has many base functions and user contributed functions (packages) that can assist with data import/export. Two basic and useful functions to consider first include:
* `read.table()`
* `write.table()`

When working with more esoteric data types one should investigate the following packages:
* `XLConnect`, `xlsx`, `gdata`, `RODBC` etc...have capabilities to read/write Excel files.
* `foreign` and `Hmisc` have functions to read/write in SAS and SPSS data files.
* `RODBC`, `RMySQL`, `ROracle`, and `RJDBC` have functions to read/write data from databases.




--- .nobackground

## Data Input/Output in R 

To demonstrate some of R's import capabilities we will work with the Virginia lung death data. The data were retrieved from [Frank Harrell's](http://biostat.mc.vanderbilt.edu/wiki/Main/DataSets?CGISESSID=10713f6d891653ddcbb7ddbdd9cffb79) website. Information on the data can be found [here](http://biostat.mc.vanderbilt.edu/wiki/pub/Main/DataSets/Cvalung.html).  

The dataset contains information on 8 variables collected from 137 individuals. The variables include:
* Therapy (0=Standard, 1=Test)
* Lung cell type (Adeno, Large, Small, Squamous)
* Time to death (days)
* Death status (dead/censored)
* Karnofsky performance scores
* Months from diagnosis to treatment initiation
* Age in years
* Prior treatment (0=No, 1=Yes)



--- .codemargin .outmargin .nobackground

## Importing data into R with `read.table()` 

`read.table()` imports tabular data and creates a data frame. Important arguments include:  

* `file=` specifies the file name and directory path/location where the file resides
* `header=` denotes whether the first row is data or variable names
* `sep=` denotes the type of delimter between data points on a given line
* `na.strings=` tells R how to handle missing data


```r
X <- read.table("/Users/chris/Documents/Rlecture/DataExamples/VAlung.txt",header=TRUE,sep="\t")
dim(X)
```

```
## [1] 137   8
```

```r
head(X, n=2)
```

```
##    therapy     cell   t dead kps diagtime age prior
## 1 standard Squamous  72 dead  60        7  69    no
## 2 standard Squamous 411 dead  70        5  64   yes
```


--- .nobackground

## Importing data into R with `read.table()` 

Some other notes about `read.table()`.
* `file=` can represent either:
  * A directory/location of a local file
  * A text mode connection (more on `?connections` at the end of the module)
  * A URL

* `sep=` can take on variety of separators:
  * comma: `sep=","`
  * tab: `sep="\t"`
  * semicolon: `sep=";"`
  * whitespace: `sep=" "`


--- .codemargin .outmargin .nobackground

## `read.table()` versus `read.csv()` 

The `read.csv()` function is simply a convenience wrapper for `read.table()`. In other words, it simply specifies the default separator as `sep=","`. 


```r
X <- read.csv("/Users/chris/Documents/Rlecture/DataExamples/VAlung.csv",header=TRUE)
head(X, n=2)
```

```
##    therapy     cell   t dead kps diagtime age prior
## 1 standard Squamous  72 dead  60        7  69    no
## 2 standard Squamous 411 dead  70        5  64   yes
```

```r
X <- read.table("/Users/chris/Documents/Rlecture/DataExamples/VAlung.csv",header=TRUE, sep=",")
head(X, n=2)
```

```
##    therapy     cell   t dead kps diagtime age prior
## 1 standard Squamous  72 dead  60        7  69    no
## 2 standard Squamous 411 dead  70        5  64   yes
```



---  .nobackground

## Excel and R

Arguably, Excel is the most popular format for exchanging datasets (either .xls or .xlsx file extensions). There exist a number of ways for importing Excel data into R. 

R-blogger - Nicola Sommacal - lists a number of methods for importing .xls files [here](http://www.r-bloggers.com/read-excel-files-from-r/). 

Note: Importing Excel data can sometimes be challenging. It can depend on what OS you are running, what drivers you have installed, and availability of other third-party software (e.g. availability of Perl, Java, or other software). My naive workflow usually consists of saving the .xls files as .csv and importing data with `read.csv()`.



---  .codemargin .outmargin .nobackground

## Excel and R

I've found that the `XLConnect` packages works well for both .xls and .xlsx packages (caveat: you must install Java for it to work).


```r
suppressPackageStartupMessages(library(XLConnect))
## .xls file extension
X <- loadWorkbook("/Users/chris/Documents/Rlecture/DataExamples/VAlung.xls")
Y <- readWorksheet(X, sheet = "VAlung", header = TRUE)
```

```
## Error: unable to find an inherited method for function 'readWorksheet' for
## signature '"jobjRef", "character"'
```

```r
head(Y,n=1)
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'head': Error: object 'Y' not found
```

```r
## .xlsx file extension
A <- loadWorkbook("/Users/chris/Documents/Rlecture/DataExamples/VAlung.xlsx")
B <- readWorksheet(A, sheet = "VAlung", header = TRUE)
```

```
## Error: unable to find an inherited method for function 'readWorksheet' for
## signature '"jobjRef", "character"'
```

```r
head(B,n=1)
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'head': Error: object 'B' not found
```


---  .nobackground

## Excel and R

Another useful package for importing/exporting Excel data to/from are is `xlsx`. 


```r
suppressPackageStartupMessages(library(xlsx))
## .xlsx file extension
A <- read.xlsx("/Users/chris/Documents/Rlecture/DataExamples/VAlung.xlsx", sheetName="VAlung")
head(A,n=1)
```

```
##    therapy     cell  t dead kps diagtime age prior
## 1 standard Squamous 72 dead  60        7  69    no
```



---  .nobackground

## R and SPSS, STATA and SAS files

More rarely, collaborators send me their SPSS, SAS or STATA files. These can be read into R using functions from the `foreign` package. The `Hmisc` package also has useful utilities. 


```r
suppressPackageStartupMessages(library(foreign))
stata <- read.dta("/Users/chris/Documents/Rlecture/DataExamples/VAlung.dta")
head(stata, n=1)
```

```
##    therapy     cell  t dead kps diagtime age prior
## 1 standard Squamous 72 dead  60        7  69    no
```




---  .nobackground

## R and SPSS, STATA and SAS files


```r
suppressPackageStartupMessages(library(foreign))
spss <- read.spss("/Users/chris/Documents/Rlecture/DataExamples/valung.sav",to.data.frame=TRUE)
```

```
## Error: file '/Users/chris/Documents/Rlecture/DataExamples/valung.sav' is
## not in any supported SPSS format
```

```r
head(spss, n=1)
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'head': Error: object 'spss' not found
```

The warning message I got on Windows does not seem to have impacted data quality. And more can be learned about its source [here](https://stat.ethz.ch/pipermail/r-help/2003-December/043695.html).

On Mac I cannot seem to download the `.sav` file. This might be because I don't have SPSS installed on this operating system?



---  .nobackground

## R and SPSS, STATA and SAS files

Importing SAS files (.sas7bdat extensions) seems more challenging. 
* It appears you might need SAS installed for some solutions.
* Or possibly collaborators must send the SAS file not as a .sas7bdat file, but some intermediary export file instead.

I do not pursue this technicality here. 



---  .nobackground

## R and Databases

R has functionality to connect, read/write and append data to many types of data bases. Some useful information can be found [here](http://www.statmethods.net/input/dbinterface.html) and [here](http://www.ibm.com/developerworks/data/library/techarticle/dm-1402db2andr/index.html?ca=drs).

Some useful packages to consider include:
* `RODBC`
* `RMySQL`
* `ROracle`
* `RJDBC`

Spector, Matloff, Chambers and other discuss the topic of R connectivity with databases in their books. I do not pursue interfacing R with databases in this workshop. 


---  .nobackground

## Exporting Objects Out of R

The most important functions in base R for these tasks are likely `write.table()` and `write.csv()`.


```r
suppressPackageStartupMessages(library(datasets))
head(cars,2)
```

```
##   speed dist
## 1     4    2
## 2     4   10
```

```r
write.csv(x=cars, file="/Users/chris/Documents/Rlecture/DataExamples/cars.csv", row.names=FALSE)
```



---  .nobackground

## Connections in R

Connections provide a flexible way to read/write data to/from R. They offer the user more control than the pre-built functions like `read.table()`.

Type `?connections` into the console to learn a lot more!!

|  Function          |  Data Source                                                 | 
|-------------------|--------------------------------------------------------------:|
| `file()`          | Files on local system        |
| `pipe()`          | Output from a command |
| `textConnection()`| Treats text as a file |
| `gzfile()`        | Local gzipped file |
| `unz()`           | Local zip archive with single file (read only) |
| `bzfile()`        | Local bzipped file |
| `url()`           | Remote file via http |
| `socketConnection()` | Socket for client or server programs |


--- .nobackground

## Reading data from the Internet via `url()`

The Virginia lung cancer dataset can be found [here](http://biostat.mc.vanderbilt.edu/wiki/pub/Main/DataSets/valung.csv) in .csv format. 

We will download it using a call to `url()`:


```r
valungurl <- url("http://biostat.mc.vanderbilt.edu/wiki/pub/Main/DataSets/valung.csv")
X <- read.csv(valungurl,header=TRUE)
head(X,n=2)
```

```
##    therapy     cell   t dead kps diagtime age prior
## 1 standard Squamous  72 dead  60        7  69    no
## 2 standard Squamous 411 dead  70        5  64   yes
```



--- .nobackground

## Input/Output in R

We have quickly glossed over the import and export capabilities in R. I have highlighted functions that I use most often. This is not a complete overview of R's capabilities. 

Read the [import/export manual](http://cran.r-project.org/doc/manuals/r-release/R-data.html) on CRAN for full details. 

Some basic functions we have skipped include:
* `readLines()`, `writeLines()`, `readBin()`, `scan()`
* `read.fwf()` is useful for reading data in fixed width format.

Read in BIG data in R is possible!! Check out this [SO thread](http://stackoverflow.com/questions/1727772/quickly-reading-very-large-tables-as-dataframes-in-r) for more info. There exist some great packages for dealing with BIG data in R. 


--- .segue .dark

## Lab Session (10 minutes)



--- .nobackground 

## Input/Output in R

1. Delete some elements of data from the `VAlung.csv` file. Save this new file as something new. Experiment with the `na.strings=` argument in `read.csv()`. Also, fool around with the `col.names` and `colClasses` arguments to read in certain character variables as factors/strings with default versus more sensible column names. 

2. Check out the [following site](http://biostat.mc.vanderbilt.edu/wiki/Main/DataSets?CGISESSID=10713f6d891653ddcbb7ddbdd9cffb79) containing example datasets in statistics. At the bottom of the page is a dataset called `Support2`. Try to download the .zip file, unzip the archive containing a single file, and read the contents into an R dataframe. A hint on how to do it can be found [here](http://stackoverflow.com/questions/3053833/using-r-to-download-zipped-data-file-extract-and-import-data). And now you know some more cool R functions like `tempfile()` and `download.file()`.


```
## [1] 9105   47
```



--- .segue .dark

## R Graphics


--- .nobackground 

## R Graphics

The ease at which publication quality graphics can be created is one of the major strengths of R relative to competing statistcal programming packages.

Chambers describes the components of a computational graphics system well. Basically, there are 3 parts:
* Graphics elements which describe what is actually drawn.
* Positioning indicators which describe where graphics elements are located.
* Control parameters which define how graphical elements can be modified.

The core of the graphics is really built upon `lines()`, `segments()`, `points()`, `text()`, `colours()`.





--- .nobackground 

## R Graphics

The books by [Paul Murrell](http://www.amazon.com/Graphics-Second-Edition-Chapman-Series/dp/1439831769), [Hadley Wickham](http://www.amazon.com/ggplot2-Elegant-Graphics-Data-Analysis/dp/0387981403/ref=sr_1_1?ie=UTF8&qid=1400472285&sr=8-1&keywords=ggplot2) and [Deepayan Sarkar](http://www.amazon.com/Lattice-Multivariate-Data-Visualization-Use/dp/0387759689/ref=sr_1_1?ie=UTF8&qid=1400472331&sr=8-1&keywords=lattice+data) do an excellent job describing base R `graphics`, `grid` graphics, `ggplot2` and `lattice`, respectively. 

The book by [Winston Chang](http://www.amazon.com/R-Graphics-Cookbook-Winston-Chang/dp/1449316956/ref=sr_1_1?ie=UTF8&qid=1400472251&sr=8-1&keywords=r+graphics+cookbook) is an excellent cookbook descriibing how to develop graphics in ggplot2 and other R facilities. 

Additional resources for learning the various graphics systems and packages in R exist on the web. Some useful learning resources that I have found include:
* [CRAN Graphics Task View](http://cran.r-project.org/web/views/Graphics.html)
* [Paul Murrell, R Graphics Website](https://www.stat.auckland.ac.nz/~paul/RGraphics/rgraphics.html)
* [Hadley Wickham, ggplot2 Website](http://docs.ggplot2.org/current/)
* [Deepayan Sarkar, lattice Website](http://lmdvr.r-forge.r-project.org/figures/figures.html)
* [lattice graphs made with ggplot2](http://learnr.files.wordpress.com/2009/08/latbook.pdf)





--- .nobackground 

## R Graphics

Murrell (section 1.2) suggests that R graphics functionality can be thought of in 4 layers:
* Graphics Device Packages (`gtkDevice`)
* Graphics Engine and Devices (`grDevices`)
* Graphics Systems (`graphics` and `grid`)
* Graphics Packages (`lattice`, `ggplot2`, etc...)

The `grDevices` provide support for fundamental graphics tasks such as drawing lines, handling fonts, or adjusting colours. 

Functions related to traditional or base R graphics exist in the `graphics` system. There are high level functions for proudcing full plots, and low-level functions for modifying/adding elements to existing plots.

`lattice` and `ggplot2` are graphics packages that are built of the `grid` graphics system. 



--- .nobackground

## Which Graphics Functions to Use?

The fact that R has two graphics systems and multiple graphics engines to choose from can sometimes confuse newcomers to the language.

Typically, it is easiest to learn base R graphics first. Then learn more advanced plotting packages once having mastered base R graphics; graduating to `ggplot2` and `lattice`.  

That said, the choice is somewhat also dependent on the objectives of the task. Certain tasks being better suited towards the base `graphicss` system and other being better suited for the more complex `grid` based system and packages. 
* If you need a single plot that is produced by one of base R `graphics` high level functions, then base R `graphics` is a great fit.
* For producing graphical scenes starting from a blank page, the grid system offers the benefit of a much wider range of possibilities, at the cost of a having to learn a few additional concepts.





--- .nobackground 

## Base R Graphics

R's base graphics are implemented in the same way as in the S3 system developed by Becker, Chambers, and Wilks. There is a static device, which is treated as a static canvas and objects are drawn on the device through R plotting commands. You build up a picture by drawing fixed things on it, and once something is drawn, it is permanent, though you might be able to cover it with something else, or move to a clean sheet of paper. Since the very beginning, base graphics has been designed to allow easy production of good quality scientific plots.

The device has a set of global parameters such as margins and layouts which can be manipulated by the user using `par()` commands. The R graphics engine does not maintain a user visible graphics list, and there is no system of double buffering, so objects cannot be easily edited without redrawing a whole plot.




--- .nobackground 

## `grid` Graphics

The `grid` package provides the basis for a newer graphics system. It also has facilities to produce good quality graphics, but the programmer has access to the individual pieces of a graph, and can modify them: a graph is more like a physical model being built and displayed, rather than just drawn.

`grid` was designed by Paul Murrell to overcome some of the limitations of the "ink and canvas" approach of base R `graphics`. And as a result packages like `lattice`, `ggplot2`, and others use `grid` for the underlying primitives. 

When using plots designed with `grid` one needs to keep in mind that `grid` is based on a system of viewports and graphic objects. To add objects one needs to use grid commands.

`grid` maintains a stack of viewports from the device and one needs to make sure the desired viewport is at the top of the stack.



--- .nobackground 

## Graphical Output and Graphics Devices

Graphical output refers to the objects produced from calls to high-level and low-level functions in R; whereas, graphical devices refer more specifically to where graphical information is directed.

Output is directed to a particular output device and that dictates which output format a specific graphic will be rendered in. A device must be created or “opened” in order to receive graphical output and, for devices that create a file on disk, the device must also be closed in order to complete the output.

GUI output devices include:
* `x11()` in Linux OS
* `windows()` in the Windows OS
* `quartz()` in the Max OS


--- .nobackground 

## Graphical Output and Graphics Devices

When executing R in batch mode. Or when sourcing files from R scripts graphical output is not directed to the screen. Rather it is stored/saved to a location/directory using the proper graphics device format. Some examples include (`?Devices`): 
* `pdf()`
* `postscript()`
* `svg()`
* `png()`
* `jpeg()`
* `bmp()`
* `tiff()`

The `dev.off()` function is used to close a graphics device and complete graphical output. 



--- .nobackground 

## An Overview of this Module

This module will take a more cookbook oriented approach to graphics. Basically, we will list a number of important statistical graphics below and demonstrate how they are created in R. 
* Pie chart
* Bar chart
* Dot chart
* Histograms 
* 1-D and 2-D Density estimators
* Box plots
* Scatterplots
* Line graphs
* Mathematical curves
* Some more esoteric plots


--- .nobackground 

## An Overview of this Module

In base R `graphics` almost all of the aforementioned functions have an associated high-level function which can be called to create the plot. Other high/low level characteristics can be modified as arguments in the function call itself or by modifying the plot after it is generated.

`lattice` works similarly in that it is comprised of many high level functions which will simply produce the above graphs. However, it operates slightly differently, specifically using the model formula operator (?"~") to describe relationships between variables. `lattice` is theoretically based off the work of [Bill Cleveland](http://www.amazon.ca/Visualizing-Data-William-S-Cleveland/dp/0963488406). It is incredibly useful at describing multivariate relationships using a trellis, lattice, facets, etc. type of approach. 

`ggplot2` creates graphics in quite a different manner than the other two approaches. It is based off the work of [Leyland Wilkinson](http://www.amazon.ca/Grammar-Graphics-Leland-Wilkinson/dp/1441920331/ref=sr_1_1?s=books&ie=UTF8&qid=1402262286&sr=1-1&keywords=grammar+of+graphics) and the grammar of graphics. The work horse of `ggplot2` is the `ggplot()` function which takes on data arguments. The user then adds various `geoms` or geometric objects to create the desired graph. `ggplot2` also supports multivariate data visualization through the use of facetted displays. 




--- .nobackground 

## Base R graphics

The `plot()` function is the workhorse of base R graphics. `plot()` is a generic function in R, and will typically produce a sensible graphic depending on the type of input it is provided (e.g. numeric, categorical, etc.).

Graphical parmaeters can be controlled with the `par()` function.

For example, one can control margins, plot size, lines, text, colour, etc. Below we demonstrate some standard plots illustrating the base R plotting regions. These are adapted from Ch. 3 of Murrell.





--- .nobackground 

## Base R graphics

<img src="assets/fig/base_marg1.png" title="plot of chunk base_marg1" alt="plot of chunk base_marg1" style="display: block; margin: auto;" />



--- .nobackground

## Base R graphics

<img src="assets/fig/base_plotreg.png" title="plot of chunk base_plotreg" alt="plot of chunk base_plotreg" style="display: block; margin: auto;" />


--- .nobackground

## Base R Graphics

Use `?par` to learn more about functions that can control plotting in R (MASS: Table 4.3):

|  `par()`  argument        |  Functionality                                                | 
|---------------------------|--------------------------------------------------------------:|
| `din` `fin` and `pin`     | Device size, figure size and plot size in inches       |
| `fig`                     | Define figure region as fraction of device region  |
| `mai` and `mar`           | Margin sizes in inches or number of lines |
| `mfrow` and `mfcol`       | Define the multi-figure display |
| `oma` `omi` and `omd`     | Define outer margins in lines, inches or as fraction device region |
| `plt`                     | Define plot region as fraction of figure region |
| `pty`                     | Define type or shape of plotting region |



--- .nobackground

## Base R Graphics

Other commonly used arguments with base R `graphics` include (MASS, Table 4.4):

|  Global control | `par()`  argument        |  Functionality                                      | 
|-----------------|--------------------------|----------------------------------------------------:|
| Text            | `adj`                    | Text justification (0=left, 0.5=center, 1=right)    |
| Text            | `font`                   | Device dependent font control    |
| Text            | `cex`                    | Character expansion/size   |
| Symbols         | `col`                    | Colour   |
| Symbols         | `lty` and `lwd`          | Line type and width  |
| Symbols         | `pch`                    | Plotting character type  |
| Axes            | `xaxt` and `yaxt`        | Can be used to supress plotting x-y axes (`="n"`)   |
| Axes            | `bty`                    | Box type around perimter of plot   |
| Axes            | `lab`                    | Control plot labels   |
| Axes            | `las`                    | Control label rotation: horizontal, vertical, slanted |
| Axes            | `tck`                    | Control tick marks  |



--- .nobackground

## Base R Graphics

Other commonly used high level arguments with base R `graphics` include (MASS, Table 4.4):

|  Global control | `par()`  argument        |  Functionality                                      | 
|-----------------|--------------------------|----------------------------------------------------:|
| High level      | `axes`                    | Print axes (TRUE/FALSE)   |
| High level      | `main`                    | Main plot title  |
| High level      | `sub`                     | Plot sub-title   |
| High level      | `xlab` and `ylab`         | x-y axis labels   |
| High level      | `xlim` and `ylim`         | x-y axis limits   |



--- .nobackground

## `lattice` and `ggplot2`

Similar `grid` graphics objects (`grobs`) and `viewports` can be used to achieve fine-tuned control over the plots produced by `lattice` and `ggplot2`. A wealth of information on `grid` can be found [here](https://www.stat.auckland.ac.nz/~paul/grid/grid.html).

In general, the plots produced by `lattice` and `ggplot2` have been designed to be high quality and require only a little tweaking. So if you need to really adjust graphical output from these two packages grab one of the books cited or check out some documentation on the web.



--- .nobackground

## `graphics`, `lattice` and `ggplot2`

| Plot type      | `graphics`    |  `lattice`           | `ggplot2`                | 
|----------------|--------------------|----------------------|-----------------------------:|
| Pie graph      | `pie()`            |                      |                              |
| Bar chart      | `barplot()`        | `barchart()`         | `geom_bar()`                 |
| Dot chart      | `dotchart()`       | `dotplot()`          | `geom_dotplot()`             |
| Histograms     | `hist()`           | `histogram()`        | `geom_histogram()`           |
| Density estimators | `plot(density())` | `densityplot()` | `geom_density()`               |
| Box plots      | `boxplot()`        | `bwplot()`           | `geom_boxplot()`             |
| Scatterplots   | `plot(...,type="p")` | `xyplot()`         | `geom_point()`               |
| 2D Density estimators | `kde2d()` | `contourplot()`        | `geom_density2d()`           |
| Time Series Line graphs    | `plot(...,type="l")` | `xyplot()`         | `geom_line()`    |
| Logitudinal Interaction Plots | `interaction.plot()` | `xyplot()` | `geom_line()`         |
| Mathematical curves | `curve()`     | `xyplot()`            | `geom_line()`               |




--- .codemargin .outmargin .nobackground

## Pie Graphs

Pie graphs are very easy to make in base R - just call `pie()`:


```r
set.seed(123)
a <- sample(LETTERS[1:3],10,replace=TRUE)
table(a)
```

```
## a
## A B C 
## 2 4 4
```

```r
pie(table(a))
```

<img src="assets/fig/graph_basepie.png" title="plot of chunk graph_basepie" alt="plot of chunk graph_basepie" style="display: block; margin: auto;" />


--- .nobackground

## Bar Graphs

For this bar graph example we are going to consider the `VADeaths` dataset which comes shipped in the `datasets` matrix in tabular form:


```r
suppressPackageStartupMessages(library(datasets))
VADeaths
```

```
##       Rural Male Rural Female Urban Male Urban Female
## 50-54       11.7          8.7       15.4          8.4
## 55-59       18.1         11.7       24.3         13.6
## 60-64       26.9         20.3       37.0         19.3
## 65-69       41.0         30.9       54.6         35.1
## 70-74       66.0         54.3       71.1         50.0
```


--- .codemargin .outmargin .nobackground

## Bar Graphs


```r
barplot(VADeaths,beside=TRUE,col=rainbow(5),ylab="Death Rate",xlab="Population Sub-Group",ylim=c(0,100),cex.names=0.7)
legend("topright",legend=c("50-54","55-59","60-64","65-69","70-74"),col=rainbow(5),fill=rainbow(5),bty="n")
```

<img src="assets/fig/graph_basebarp.png" title="plot of chunk graph_basebarp" alt="plot of chunk graph_basebarp" style="display: block; margin: auto;" />


--- .codemargin .outmargin .nobackground

## Bar Graphs


```r
suppressPackageStartupMessages(library(lattice))
suppressPackageStartupMessages(library(reshape2))
aa <- melt(VADeaths,id.vars=colnames(VADeaths),value.name="Death.Rate")
barchart(Death.Rate ~ Var2, group=Var1, data=aa, ylim=c(0,100), ylab="Death Rate", xlab="Population Sub-Group", auto.key=TRUE)
```

<img src="assets/fig/graph_latbarp.png" title="plot of chunk graph_latbarp" alt="plot of chunk graph_latbarp" style="display: block; margin: auto;" />



--- .codemargin .outmargin .nobackground

## Bar Graphs


```r
suppressPackageStartupMessages(library(ggplot2))
ggplot(aa, aes(x=Var2,y=Death.Rate,fill=Var1)) + geom_bar(position=position_dodge(),colour="black",stat="identity")  + xlab("Population Sub-Groups") + ylab("Death Rate") + scale_y_continuous(limits=c(0,100),expand = c(0,0)) + theme_bw() 
```

<img src="assets/fig/graph_ggbarp.png" title="plot of chunk graph_ggbarp" alt="plot of chunk graph_ggbarp" style="display: block; margin: auto;" />






--- .nobackground

## Dot Charts


```r
dotchart(VADeaths, xlab="Death Rate")
```

<img src="assets/fig/graph_basedot.png" title="plot of chunk graph_basedot" alt="plot of chunk graph_basedot" style="display: block; margin: auto;" />



--- .codemargin .outmargin .nobackground

## Dot Charts


```r
dotplot(Var1~Death.Rate|Var2,data=aa,layout=c(1,5),xlab="Death Rate",ylab="Population Sub-Group")
```

<img src="assets/fig/graph_latdot.png" title="plot of chunk graph_latdot" alt="plot of chunk graph_latdot" style="display: block; margin: auto;" />



--- .codemargin .outmargin .nobackground

## Dot Charts


```r
ggplot(aa, aes(x=Death.Rate,y=Var1)) + geom_point(size=2) + facet_grid(Var2~.)
```

<img src="assets/fig/graph_ggdot.png" title="plot of chunk graph_ggdot" alt="plot of chunk graph_ggdot" style="display: block; margin: auto;" />




--- .codemargin .outmargin .nobackground

## Histograms


```r
set.seed(1234)
a <- data.frame(a=rnorm(1000))
hist(a$a,xlab="Support",main="Histogram of Normal RVs",xlim=c(-4,4),ylim=c(0,250))
```

<img src="assets/fig/graph_basehist1.png" title="plot of chunk graph_basehist1" alt="plot of chunk graph_basehist1" style="display: block; margin: auto;" />




--- .codemargin .outmargin .nobackground

## Histograms


```r
histogram(~a,data=a,xlab="Support",main="Histogram of Normal RVs",xlim=c(-4,4),ylim=c(0,250),type="count",col="white",breaks=15)
```

<img src="assets/fig/graph_lathist.png" title="plot of chunk graph_lathist" alt="plot of chunk graph_lathist" style="display: block; margin: auto;" />




--- .codemargin .outmargin .nobackground

## Histograms


```r
ggplot(a, aes(x=a)) + geom_histogram(binwidth=0.5,, colour="black", fill="white") + theme_bw() + xlab("Support")
```

<img src="assets/fig/graph_gghist.png" title="plot of chunk graph_gghist" alt="plot of chunk graph_gghist" style="display: block; margin: auto;" />



--- .codemargin .outmargin .nobackground

## Density Curves


```r
plot(density(a$a),type="l",col="red",lwd=2,xlab="Support",main="KDE Normal RVs")
```

<img src="assets/fig/graph_basedens.png" title="plot of chunk graph_basedens" alt="plot of chunk graph_basedens" style="display: block; margin: auto;" />


--- .codemargin .outmargin .nobackground

## Density Curves


```r
densityplot(~a,data=a,xlab="Support",main="KDE Normal RVs",col="red",lwd=2,plot.points="rug")
```

<img src="assets/fig/graph_latdens.png" title="plot of chunk graph_latdens" alt="plot of chunk graph_latdens" style="display: block; margin: auto;" />




--- .codemargin .outmargin .nobackground

## Density Curves


```r
ggplot(a, aes(x=a)) + geom_line(stat="density", colour="red", lwd=2, lty=2) + theme_bw() + xlab("Support")
```

<img src="assets/fig/graph_ggdens.png" title="plot of chunk graph_ggdens" alt="plot of chunk graph_ggdens" style="display: block; margin: auto;" />


--- .codemargin .outmargin .nobackground

## Box plots


```r
boxplot(a$a,ylab="Support")
```

<img src="assets/fig/graph_basebw.png" title="plot of chunk graph_basebw" alt="plot of chunk graph_basebw" style="display: block; margin: auto;" />


--- .codemargin .outmargin .nobackground

## Box plots


```r
a$f <- factor(rep(1,length(a$a)))
bwplot(a~f,data=a,ylab="Support",xlab="",label=c(""))
```

<img src="assets/fig/graph_latbw.png" title="plot of chunk graph_latbw" alt="plot of chunk graph_latbw" style="display: block; margin: auto;" />



--- .codemargin .outmargin .nobackground

## Box plots


```r
ggplot(a,aes(y=a, x=f)) + geom_boxplot()
```

<img src="assets/fig/graph_ggbw.png" title="plot of chunk graph_ggbw" alt="plot of chunk graph_ggbw" style="display: block; margin: auto;" />



--- .codemargin .outmargin .nobackground

## X-Y Scatter plots


```r
suppressPackageStartupMessages(library(MASS))
a <- mvrnorm(100,mu=c(0,0),Sigma=matrix(c(1,0.85,0.85,1),ncol=2))
a <- as.data.frame(a)
names(a) <- c("x","y")
plot(a,main="X-Y Scatter plot MVN data",xlim=c(-3,3),ylim=c(-3,3))
```

<img src="assets/fig/graph_basexy.png" title="plot of chunk graph_basexy" alt="plot of chunk graph_basexy" style="display: block; margin: auto;" />


--- .codemargin .outmargin .nobackground 
## X-Y Scatter plots


```r
xyplot(y~x,data=a,main="X-Y Scatter plot MVN data",xlim=c(-3,3),ylim=c(-3,3))
```

<img src="assets/fig/graph_latxy.png" title="plot of chunk graph_latxy" alt="plot of chunk graph_latxy" style="display: block; margin: auto;" />



--- .codemargin .outmargin .nobackground 

## X-Y Scatter plots


```r
ggplot(a, aes(x=x,y=y)) + geom_point()
```

<img src="assets/fig/graph_ggxy.png" title="plot of chunk graph_ggxy" alt="plot of chunk graph_ggxy" style="display: block; margin: auto;" />




--- .codemargin .outmargin .nobackground

## 2D Density Surfaces


```r
twoD <- with(a,MASS:::kde2d(x,y))
filled.contour(twoD)
```

<img src="assets/fig/mass_kde2d.png" title="plot of chunk mass_kde2d" alt="plot of chunk mass_kde2d" style="display: block; margin: auto;" />



--- .codemargin .outmargin .nobackground

## 2D Density Surfaces


```r
a <- as.data.frame(cbind(expand.grid(twoD$x,twoD$y),c(twoD$z)))
names(a) <- c("x","y","z")
contourplot(z~x*y,data=a,cut=20,region=TRUE,xlab="X",ylab="Y",main="2D KDE of MVN data")
```

<img src="assets/fig/graph_latkde2d.png" title="plot of chunk graph_latkde2d" alt="plot of chunk graph_latkde2d" style="display: block; margin: auto;" />


--- .codemargin .outmargin .nobackground

## 2D Density Surfaces


```r
ggplot(a, aes(x=x,y=y)) + geom_contour(aes(z=z),data=a)
```

<img src="assets/fig/unnamed-chunk-160.png" title="plot of chunk unnamed-chunk-160" alt="plot of chunk unnamed-chunk-160" style="display: block; margin: auto;" />



--- .codemargin .outmargin .nobackground 

## Time Series Line Graphs


```r
suppressPackageStartupMessages(library(datasets))
class(AirPassengers)
```

```
## [1] "ts"
```

```r
plot(AirPassengers)
```

<img src="assets/fig/graph_basets.png" title="plot of chunk graph_basets" alt="plot of chunk graph_basets" style="display: block; margin: auto;" />



--- .codemargin .outmargin .nobackground 

## Time Series Line Graphs


```r
ap <- melt(AirPassengers)
apd <- seq.Date(from=as.Date("1949/1/1"),by="month",length.out=144)
air <- data.frame(ap=ap,apd=apd)
xyplot(value~apd,data=air,type="l")
```

<img src="assets/fig/graph_latts.png" title="plot of chunk graph_latts" alt="plot of chunk graph_latts" style="display: block; margin: auto;" />


--- .codemargin .outmargin .nobackground 

## Time Series Line Graphs


```r
ggplot(air, aes(x=apd,y=value)) + geom_line()
```

```
## Don't know how to automatically pick scale for object of type ts. Defaulting to continuous
```

<img src="assets/fig/graph_ggts.png" title="plot of chunk graph_ggts" alt="plot of chunk graph_ggts" style="display: block; margin: auto;" />




--- .codemargin .outmargin .nobackground 

## Longitudinal Plots


```r
suppressPackageStartupMessages(library(datasets))
with(Loblolly, interaction.plot(x.factor=age,trace.factor=Seed,response=height))
```

<img src="assets/fig/graph_baselong.png" title="plot of chunk graph_baselong" alt="plot of chunk graph_baselong" style="display: block; margin: auto;" />


--- .codemargin .outmargin .nobackground 

## Longitudinal Plots


```r
xyplot(height~age, data=Loblolly, group=Seed,type="l")
```

<img src="assets/fig/graph_latlong.png" title="plot of chunk graph_latlong" alt="plot of chunk graph_latlong" style="display: block; margin: auto;" />



--- .codemargin .outmargin .nobackground 

## Longitudinal Plots


```r
ggplot(Loblolly, aes(y=height,x=age,group=Seed)) + geom_line()
```

<img src="assets/fig/graph_gglong.png" title="plot of chunk graph_gglong" alt="plot of chunk graph_gglong" style="display: block; margin: auto;" />



--- .codemargin .outmargin .nobackground 

## Plotting Math Functions


```r
curve(factorial(x-1),from=1,to=50,n=50,log="y")
```

<img src="assets/fig/graph_basecurve.png" title="plot of chunk graph_basecurve" alt="plot of chunk graph_basecurve" style="display: block; margin: auto;" />



--- .codemargin .outmargin .nobackground 

## Plotting Math Functions


```r
a <- data.frame(x=1:50,y=factorial(1:50))
xyplot(y~x,data=a,type="l",scales=list(y=list(log="e")))
```

<img src="assets/fig/graph_latcurve.png" title="plot of chunk graph_latcurve" alt="plot of chunk graph_latcurve" style="display: block; margin: auto;" />


--- .codemargin .outmargin .nobackground 

## Plotting Math Functions


```r
ggplot(a, aes(x=x,y=y)) + geom_line() + scale_y_log10()
```

<img src="assets/fig/graph_ggcurve.png" title="plot of chunk graph_ggcurve" alt="plot of chunk graph_ggcurve" style="display: block; margin: auto;" />



--- .nobackground 

## Miscellaneous Graphs

In the upcoming sections we will talk about a few other graph types, namely:
* Scatter plot matrices
* Plots of correlation matrices
* Maps

We will make these using which graphics tools we find convenient (many examples come from Chang, ch. 13). Again, not there are most definitely other ways to go about creating these graphical displays, if the functionality does not suit your needs look for other user contributed packages or create your own. 



--- .codemargin .outmargin .nobackground 

## Scatter Plot Matrices


```r
suppressPackageStartupMessages(library(faraway))
plot(ozone[,1:9])
```

<img src="assets/fig/graph_basesmat.png" title="plot of chunk graph_basesmat" alt="plot of chunk graph_basesmat" style="display: block; margin: auto;" />



--- .codemargin .outmargin .nobackground 

## Scatter Plot Matrices


```r
pairs(ozone[,1:9])
```

<img src="assets/fig/graph_basesmat1.png" title="plot of chunk graph_basesmat1" alt="plot of chunk graph_basesmat1" style="display: block; margin: auto;" />



--- .codemargin .outmargin .nobackground 

## Scatter Plot Matrices


```r
suppressPackageStartupMessages(library(lattice))
splom(ozone[1:9])
```

<img src="assets/fig/graph_latsmat.png" title="plot of chunk graph_latsmat" alt="plot of chunk graph_latsmat" style="display: block; margin: auto;" />



--- .nobackground 

## Plotting Correlation Matrices


```r
cormat <- cor(scale(ozone[,1:9]))
round(cormat,digits=2)
```

```
##             O3    vh  wind humidity  temp   ibh   dpg   ibt   vis
## O3        1.00  0.61  0.00     0.45  0.78 -0.59  0.21  0.75 -0.44
## vh        0.61  1.00 -0.23     0.07  0.81 -0.50 -0.15  0.85 -0.36
## wind      0.00 -0.23  1.00     0.22 -0.01  0.20  0.34 -0.16  0.13
## humidity  0.45  0.07  0.22     1.00  0.34 -0.24  0.65  0.20 -0.40
## temp      0.78  0.81 -0.01     0.34  1.00 -0.53  0.19  0.86 -0.39
## ibh      -0.59 -0.50  0.20    -0.24 -0.53  1.00  0.04 -0.78  0.39
## dpg       0.21 -0.15  0.34     0.65  0.19  0.04  1.00 -0.10 -0.13
## ibt       0.75  0.85 -0.16     0.20  0.86 -0.78 -0.10  1.00 -0.42
## vis      -0.44 -0.36  0.13    -0.40 -0.39  0.39 -0.13 -0.42  1.00
```


--- .codemargin .outmargin .nobackground 

## Plotting Correlation Matrices


```r
suppressPackageStartupMessages(library(corrplot))
corrplot(cormat)
```

<img src="assets/fig/graph_corrmat.png" title="plot of chunk graph_corrmat" alt="plot of chunk graph_corrmat" style="display: block; margin: auto;" />



--- .codemargin .outmargin .nobackground 

## Maps


```r
suppressPackageStartupMessages(library(maps))
suppressPackageStartupMessages(library(mapproj))
states_map <- map_data("state")
ggplot(states_map, aes(x=long,y=lat,group=group)) + geom_path() + coord_map("mercator") + theme_bw()
```

<img src="assets/fig/graph_map.png" title="plot of chunk graph_map" alt="plot of chunk graph_map" style="display: block; margin: auto;" />


--- .nobackground 

## Maps

Let's do a bit of data manipulation:
* We have a map object with the 50 states
* We know in `datasets` packages there is a `crime` dataset
If we merge these two data sources together we can look at crime rates by state. 


```r
crimes <- data.frame(state=tolower(rownames(USArrests)),USArrests)
crime_map <- merge(states_map,crimes,by.x="region",by.y="state")
```


--- .nobackground 

## Maps


```r
ggplot(crimes, aes(map_id=state,fill=Assault)) + geom_map(map=states_map, colour="black") + scale_fill_gradient2(low ="#559999", mid="grey90", high="#BB650B", midpoint=median(crimes$Assault)) + expand_limits(x=states_map$long, y=states_map$lat) + coord_map("polyconic") + theme_bw()
```

<img src="assets/fig/graph_cmap.png" title="plot of chunk graph_cmap" alt="plot of chunk graph_cmap" style="display: block; margin: auto;" />




--- .nobackground

## Interactive Data Visualization with R

Some people have gotten bored of looking at static graphs all day long. With the power of the web (HTML5, JavaScript, CSS, etc.) there exist many possibilities for intergrating interactive data visualizations into your workflow. 

[rCharts](http://rcharts.io) by Ramnath Vaidyanathan is one package I love for interactive data visualization. I especially like the NVD3 interface.   

Other cool packages that I don't talk about include: [googleVis](http://code.google.com/p/google-motion-charts-with-r/) and [shiny](http://shiny.rstudio.com).


--- .nobackground

## Interactive Data Visualization

First things first, lets get the source code necessary to run these examples from GitHub:


```r
require(devtools)
install_github(c('slidify', 'slidifyLibraries'), 'ramnathv', ref = 'dev')
install_github('rCharts', 'ramnathv')
install_github('shiny', 'rstudio')
```



--- .codemargin .outmargin .nobackground 

## `rCharts` NVD3 multichart


```r
require(rCharts)
haireye = as.data.frame(HairEyeColor)
n1 <- nPlot(Freq ~ Hair, group = 'Eye', type = 'multiBarChart', data = subset(haireye, Sex == 'Male'))
```


<div id = 'chart1' class = 'rChart nvd3'></div>
<script type='text/javascript'>
 $(document).ready(function(){
      drawchart1()
    });
    function drawchart1(){  
      var opts = {
 "dom": "chart1",
"width":    800,
"height":    400,
"x": "Hair",
"y": "Freq",
"group": "Eye",
"type": "multiBarChart",
"id": "chart1" 
},
        data = [
 {
 "Hair": "Black",
"Eye": "Brown",
"Sex": "Male",
"Freq":             32 
},
{
 "Hair": "Brown",
"Eye": "Brown",
"Sex": "Male",
"Freq":             53 
},
{
 "Hair": "Red",
"Eye": "Brown",
"Sex": "Male",
"Freq":             10 
},
{
 "Hair": "Blond",
"Eye": "Brown",
"Sex": "Male",
"Freq":              3 
},
{
 "Hair": "Black",
"Eye": "Blue",
"Sex": "Male",
"Freq":             11 
},
{
 "Hair": "Brown",
"Eye": "Blue",
"Sex": "Male",
"Freq":             50 
},
{
 "Hair": "Red",
"Eye": "Blue",
"Sex": "Male",
"Freq":             10 
},
{
 "Hair": "Blond",
"Eye": "Blue",
"Sex": "Male",
"Freq":             30 
},
{
 "Hair": "Black",
"Eye": "Hazel",
"Sex": "Male",
"Freq":             10 
},
{
 "Hair": "Brown",
"Eye": "Hazel",
"Sex": "Male",
"Freq":             25 
},
{
 "Hair": "Red",
"Eye": "Hazel",
"Sex": "Male",
"Freq":              7 
},
{
 "Hair": "Blond",
"Eye": "Hazel",
"Sex": "Male",
"Freq":              5 
},
{
 "Hair": "Black",
"Eye": "Green",
"Sex": "Male",
"Freq":              3 
},
{
 "Hair": "Brown",
"Eye": "Green",
"Sex": "Male",
"Freq":             15 
},
{
 "Hair": "Red",
"Eye": "Green",
"Sex": "Male",
"Freq":              7 
},
{
 "Hair": "Blond",
"Eye": "Green",
"Sex": "Male",
"Freq":              8 
} 
]
  
      if(!(opts.type==="pieChart" || opts.type==="sparklinePlus")) {
        var data = d3.nest()
          .key(function(d){
            //return opts.group === undefined ? 'main' : d[opts.group]
            //instead of main would think a better default is opts.x
            return opts.group === undefined ? opts.y : d[opts.group];
          })
          .entries(data);
      }
      
      if (opts.disabled != undefined){
        data.map(function(d, i){
          d.disabled = opts.disabled[i]
        })
      }
      
      nv.addGraph(function() {
        var chart = nv.models[opts.type]()
          .x(function(d) { return d[opts.x] })
          .y(function(d) { return d[opts.y] })
          .width(opts.width)
          .height(opts.height)
         
        
          
        

        
        
        
      
       d3.select("#" + opts.id)
        .append('svg')
        .datum(data)
        .transition().duration(500)
        .call(chart);

       nv.utils.windowResize(chart.update);
       return chart;
      });
    };
</script>





--- .nobackground

## Summary of R Graphics

In this module we introduced R graphics. The ease at which beautiful statistical graphics can be created in R is one of its greatest strengths.

Graphics in R can be divided into 2 systems: `graphics` and `grid`. Base R ships many useful high/low level plotting functions. And graphics packages like `lattice` and `ggplot2` offer similar functionality but built on top of the newer `grid` system.

Most useful functions are summarized in the tables presented earlier in this module. This module took a cookbook style approach presenting various graphical examples, and demonstrating how to develop code to create such graphics in R. 

For the most up to date info on all things R graphics, check out the [R Graphics Task View](http://cran.r-project.org/web/views/Graphics.html).



--- .segue .dark

## Lab Session (30 minutes)

--- .codemargin .outmargin .nobackground

## R Graphics

1. The definition of a sextix polynomial equation is given [here](http://en.wikipedia.org/wiki/Sextic_equation). It's general form is given as:

$$ ax^6 + bx^5 + cx^4 + dx^3 + ex^2 + gx + f = 0 $$

Let `c(a=2,b=-4,c=1,d=-3,e=5,g=9,f=-10)` and plot the function using `curve()`.

<br/>

<img src="assets/fig/graph_ex1.png" title="plot of chunk graph_ex1" alt="plot of chunk graph_ex1" style="display: block; margin: auto;" />




--- .nobackground

## R Graphics

<ol start="2">
<li> Use the <code>MASS</code> package to generate multivariate normal data. In all cases have <code>mu=c(0,0)</code>. Generate 5 different <code>Sigma=matrix(c(...),ncol=2)</code> matrices: basically varying the off diagonal correlation matrices from <code>c(-0.85,-0.35,0,0.35,0.85)</code>. Use a sample size of <code>n=500</code>. Use base R graphics to plot the 2D density estimates of each random normal draw. Plot all 5 on a graph using the <code>par(mfrow=c(3,2))</code> function(s). Explain what you are seeing and why. </li> 
</ol>


<ol start="3">
<li> Using the <code>pbc</code> dataset from the <code>survival</code> package plot the distribution of bilirubin for each combination of stage and sex. Do this using a series of histrograms, box plots and univariate density estimators. Use the multi-panel conditioning options from <code>lattice</code> and <code>ggpplot2</code>.</li> 
</ol>



<ol start="4">
<li> On your own, explore possible plotting options associated with dendrograms (<code>?hclust</code>), network graphs (<code>igraph</code> package) or 3D scatterplots in <code>lattice</code> with the function <code> wireframe() </code> and <code>cloud()</code>.</li> 
</ol>




--- .nobackground

## R Graphics

<ol start="5">
<li> Recreate the plot below using base R functions. Data is simulated by <code>set.seed(12345)</code> followed by <code>rnorm(1000)</code>. Hint: search <code>?par</code>. </li> 
</ol>

<img src="assets/fig/graph_ex2.png" title="plot of chunk graph_ex2" alt="plot of chunk graph_ex2" style="display: block; margin: auto;" />





--- .segue .dark

## Descriptive Statistics in R



--- .nobackground 

## Descriptive Statistics in R

Descriptive statistics relates to describing the main features of a set of data (a collection of random variables). The previous module considered using graphical measures to describe data, in this module we focus on using numeric summaries. 

The most coarse means of describing our data is as an n*p tabular array. However, this array of data often contains too much information to be useful. Hence our goal is to come up with some few summary statistics, via a data reduction step, which describes the interesting features in the oroginal data without losing too much information. 

Descriptive statistics can take place at many levels:
* Univariate statistics acts to describe the tendencies of variables, one at a time.
* Bivariate statistics acts to describe the relationship between a pair (2) variables at a time.
* Multivariate statistics acts to describe the relationship between p variables at a time. 

In this aspect we will briefly touch upon descriptive techniques that exist at all levels (univariate, bivariate and multivariate).


--- .nobackground 

## Descriptive Statistics in R

Univariate statistics seek to describe the central tendency and dispersion of a single random variable.
* The mean, median, and mode can be used to describe central tendency.
* The variance, standard deviation, range and quantiles can be used to describe dispersion.

Bivariate statistics act to describe the relationship between a pair of random variables.
* Tabulation can depict associations between discrete variables.
* Correlation coefficients can describe the association between quantitative variables.

Multivariate statistics act to describe the relationship between p-variables in a dataset and are usually based upon correlation or distance matrices. We will not adress them in this workshop, just know R has impressive capabilities for these and other multivariate techniques. 
* Principal component analysis
* Cluster analysis





--- .codemargin .outmargin .nobackground 

## Univariate Statistics

For this module we will work with the `pbc` dataset from the `survival` package. We will work on describing the univariate tendencies of a few measures of liver biochemistry, specifically focusing on the bilirubin variable.

<br/>

```r
suppressPackageStartupMessages(library(survival))
dim(pbc)
```

```
## [1] 418  20
```

```r
sum(is.na(pbc$bili))
```

```
## [1] 0
```



--- .codemargin .outmargin .nobackground

## Univariate Statistics

Below we look at a few measures of central tendency:

<br/>


```r
with(pbc,mean(bili))
```

```
## [1] 3.221
```

```r
with(pbc,median(bili))
```

```
## [1] 1.4
```

<br/>
How is the mode defined for a (absolutely) continuous variable? Check out the `modeest` package for an array of available options.


--- .codemargin .outmargin .nobackground 

## Univariate Statistics


```r
sd(pbc$bili)
```

```
## [1] 4.408
```

```r
var(pbc$bili)
```

```
## [1] 19.43
```

```r
quantile(pbc$bili,probs=seq(0.05,0.95,0.10))
```

```
##     5%    15%    25%    35%    45%    55%    65%    75%    85%    95% 
##  0.500  0.600  0.800  1.000  1.200  1.600  2.300  3.400  5.945 14.000
```


--- .codemargin .outmargin .nobackground 

## Univariate Statistics


```r
min(pbc$bili)
```

```
## [1] 0.3
```

```r
max(pbc$bili)
```

```
## [1] 28
```

```r
range(pbc$bili)
```

```
## [1]  0.3 28.0
```


--- .nobackground 

## Univariate Statistics

Describing the distirbution of a single continuous random variable might actually be easier graphically. On the next slides we will look at just a few sensible plots:
* Box-plot
* Histogram
* Density plot



--- .nobackground 

## Univariate Statistics

Below is a box-plot describing the main features of the bilirubin variable in this sample. It acts to reiterate the right skewness of the distribution. 


```r
boxplot(pbc$bili, ylim=c(0,30), ylab="Bilirubin Levels", main="Boxplot of Bilirubin Levels")
```

<img src="assets/fig/uni_box.png" title="plot of chunk uni_box" alt="plot of chunk uni_box" style="display: block; margin: auto;" />



--- .nobackground 

## Univariate Statistics

Below is a histogram describing the distribution of bilirubin in this sample. Again, it acts to reiterate the right skewness of the distribution. 


```r
hist(pbc$bili, xlab="Bilirubin Levels", main="Histogram of bilirubin levels", ylim=c(0,300),breaks=seq(0,30,2.5))
```

<img src="assets/fig/uni_hist.png" title="plot of chunk uni_hist" alt="plot of chunk uni_hist" style="display: block; margin: auto;" />



--- .nobackground 

## Univariate Statistics

Below is a kernel density estimate describing the distribution of bilirubin in this sample. Again, it acts to reiterate the right skewness of the distribution. 


```r
plot(density(pbc$bili,from=0,to=max(pbc$bili)), xlab="Bilirubin Levels", ylab="Density", main="KDE of Bilirubin Levels",ylim=c(0,0.4))
```

<img src="assets/fig/uni_dens.png" title="plot of chunk uni_dens" alt="plot of chunk uni_dens" style="display: block; margin: auto;" />


--- .codemargin .outmargin .nobackground 

## Bivariate Statistics

For discrete/categorical variables tabulation is an effective summary measure. Let us consider the univariate tabulation of ascites and fibrosis and there association.


```r
with(pbc,table(ascites))
```

```
## ascites
##   0   1 
## 288  24
```

```r
table(pbc$stage)
```

```
## 
##   1   2   3   4 
##  21  92 155 144
```



--- .codemargin .outmargin .nobackground 

## Bivariate Statistics


```r
with(pbc,table(ascites,stage))
```

```
##        stage
## ascites   1   2   3   4
##       0  16  65 119  88
##       1   0   2   1  21
```

```r
prop.table(table(pbc$ascites,pbc$stage),margin=1)
```

```
##    
##           1       2       3       4
##   0 0.05556 0.22569 0.41319 0.30556
##   1 0.00000 0.08333 0.04167 0.87500
```



--- .nobackground 

## Bivariate Statistics

If both categorical variables are binary we can estimate the following epidemiological measures of association to describe bivariate relationships:
* Risk Difference (RD)
$$ RD = P(Event=1|Exposed=1) - P(Event=1|Exposed=0)$$

* Risk Ratio (RR)
$$ RR = \frac{P(Event=1|Exposed=1)}{P(Event=1|Exposed=0)}  $$

* Odds Ratio (OR)
$$ OR = \frac{\frac{P(Event=1|Exposed=1)}{1 - P(Event=1|Exposed=1)}}{\frac{P(Event=1|Exposed=1)}{1 - P(Event=1|Exposed=0)}}$$


--- .nobackground 

## Bivariate Statistics

Epidemiologists usually prefer there `2*2` table to be laid out as follows:

|                 |  Disease       | No Disease                   | 
|-----------------|----------------|-----------------------------:|
| Exposed         |     a          | b                            |
| Unexposed       |     c          | d                            |

<br/>

If we say $N=(a+b+c+d)$, then we can calculate RD, RR and OR as follows:

$$ RD = \frac{a}{a+b} - \frac{c}{c+d}$$
$$ RR = \frac{\frac{a}{a+b}}{\frac{c}{c+d}}$$
$$ RD = \frac{a*d}{b*c}$$



--- .codemargin .outmargin .nobackground 

## Bivariate Statistics

Let's look into the association between transplant/death and presence of ascites. We recode some variables first.


```r
pbc$status1 <- ifelse(pbc$status==0,1,0)
pbc$ascites1 <- ifelse(pbc$ascites==0,1,0)
ttt <- table(pbc$ascites1,pbc$status1)
p1 <- ttt[1,1]/sum(ttt[1,])
p0 <- ttt[2,1]/sum(ttt[2,])
q1 <- 1 - p1
q0 <- 1 - p0
RD <- round(p1 - p0, digits=3)
RR <- round(p1/p0, digits=3)
OR <- round((p1/q1)/(p0/q0), digits=3)
c(paste0("RD=",RD),paste0("RR=",RR),paste0("OR=",OR))
```

```
## [1] "RD=0.538"  "RR=2.281"  "OR=31.744"
```
<br/>
To obtain standard errors etc...code by hand or check out `epi` and `epiR` packages. 



--- .nobackground 

## Bivariate Statistics

There are many measures which seek to describe the dependence between two quantitative variables:
* Pearson's correlation coefficient
* Spearman's correlation coefficient
* Kendall's coefficient tau

All methods are implemented through the the R function `cor()`. 

We will use `cor()` to investigate the association between bilirubin and albumin levels. But before estimating the quantitative correlation coefficient we will look into the association between the pair of variables using a scatter plot. 



--- .nobackground 

## Bivariate Statistics

Scatter plot of the relationship between bilirubin and copper. 


```r
plot(pbc$bili, pbc$copper, xlim=c(0,30),ylim=c(0,600),xlab="Bilirubin",ylab="Copper",main="Bivariate Relationship Between Bilirubin and Copper")
```

<img src="assets/fig/biv_scatter.png" title="plot of chunk biv_scatter" alt="plot of chunk biv_scatter" style="display: block; margin: auto;" />



--- .nobackground 

## Bivariate Statistics

The bivariate scatter plot suggested a mildly positive relationship between bilirubin and copper. Now we investigate what the quantitative measures of bivariate dependence suggest:


```r
cor(pbc$bili, pbc$copper, use="pairwise", method="k")
```

```
## [1] 0.4629
```

```r
cor(pbc$bili, pbc$copper, use="pairwise", method="s")
```

```
## [1] 0.6284
```

```r
cor(pbc$bili, pbc$copper, use="pairwise", method="p")
```

```
## [1] 0.4569
```



--- .nobackground

## Descriptive Statistics in R

Base R has many capabilities for conducting descriptive statistical analyses. Many analyses can be conducted by calling a simple function on your data object. And R usually returns something sensible.

R can be used for univariate, bivariate and multivariate descriptive analyses.

Plotting distirbutions of single variables, or relationships between 2 or more variables in R is super easy. And these plots are useful complements to numeric descriptive statistics. 

One useful function I have not shown too much yet which you should remember is `summary()`. It will also provide very quick and useful numeric summaries of your data with little effort. 



--- .segue .dark

## Lab Session (20 minutes)




--- .codemargin .outmargin .nobackground

## Descriptive Statistics in R

1. Using the `Exam` dataset in the `mlmRev` package Invesitgate the relationship between `normexam` scores and `standLRT` scores. Plot the relationship on a graph. Give the axes proper labels, and give the graph a title. Using either the `loess()` or `lowess()` functions plot a smooth red line through the cloud of data. Estimate Pearson product moment correlation coefficient. In the top left corner of the graph insert the following text: $\rho=0.591$. Bonus: describe to yourself (or your peer) what the `f=` argument in `lowess()` does. What is the equivalent argument in `loess()`?  

<img src="assets/fig/labdes_fig.png" title="plot of chunk labdes_fig" alt="plot of chunk labdes_fig" style="display: block; margin: auto;" />


--- .nobackground

## Descriptive Statistics in R

<ol start="2">
<li> Is there any association between verbal reasoning scores (<code>vr</code>) and gender (<code>sex</code>). Describe the association in words. </li> 
</ol>

<ol start="3">
<li> Create a dichotomous variable denoting whether a student placed in the top 90% of the normalized exam score or not. Investigate the relationship between the probability of being in the top 90% (outcome) and female gender (exposure). Summarize the strength of this association with an odds ratio. The standard error of the log odds ratio can be approximated as follows: </li>
</ol>

$$ \widehat{SE(\widehat{log(OR)})} = \sqrt{\frac{1}{a+b+c+d}} $$

* Write an R function that takes on a `2*2` table as it's only argument and returns an estimated odds ratio and 95% confidence interval as it's return value. 


```
## [1] "The estimated OR=1.37. The lower and upper 95% CI range from: 1.33 to 1.41"
```




--- .segue .dark

## Inference: Estimation and Hypothesis Testing




--- .nobackground

## Inference: Estimation and Hypothesis Testing

[Statistical infererence](http://en.wikipedia.org/wiki/Statistical_inference) involves using a finite sample of data to make claims about the underlying mechanism which generated the data. We typically assume some probability model generated our sample of data, and our goal is to make some claims about the specific parametric form of this data generating model.

There exist 3 main branches of statistical inference
* [Point estimation](http://en.wikipedia.org/wiki/Point_estimation)
* [Interval estimation](http://en.wikipedia.org/wiki/Confidence_intervals)
* [Hypothesis testing](http://en.wikipedia.org/wiki/Statistical_hypothesis_testing)

R has excellent facilities for both theoretical and applied statisticians looking to advance/apply theory, respectively.

Statistical inference is a massive field. Book length expositions exist on each of the constituent branches. My favourites books on the topic include: [Wasserman](http://www.amazon.com/All-Statistics-Statistical-Inference-Springer/dp/0387402721) and [Knight](http://www.amazon.com/Mathematical-Statistics-Chapman-Statistical-Science/dp/158488178X).


--- .nobackground

## Point Estimation

For a given parametric model, point estimation is concerned with determining the best possible quantities governing our probability model.

Certain considerations for optimal estimates include: bias, variance, mean squared error, consistency, efficiency, asymptotic normality, etc. Some nice estimation procedures include: the method of moments and the method of maximum likelihood.

Various functions exist for estimating quantities by MOM or MLE, including: 
* The `gmm` library for generalized method of moments
* The `mle()` function in the `stats4` package
* Various optimizers such as: `optim()`, `optimize()`, and `nlminb()` from `lme` package

In the proceeding sections of this module we will take it for granted that we have reasonable estimators for population quantities, and will transfer focus to the applied problem of esimtating CI's around these point estimates (interval estimation) or testing whether the point estimate equal some given value (hypothesis testing). 



--- .codemargin .outmargin .nobackground

## Poisson MLE example


```r
set.seed(990099)
x <- rpois(100,5)
mean(x)
```

```
## [1] 5.08
```

```r
var(x)
```

```
## [1] 5.731
```

```r
pmll <- function(lambda, x) {
sumx <- sum(x)
sum_log_xfact <- sum(log(factorial(x)))
n <- length(x)
pmll <- n*lambda - sumx*log(lambda) + sum_log_xfact
pmll
}
```


--- .codemargin .outmargin .nobackground

## Poisson MLE example


```r
mom_lambda <- mean(x)
min_lambda <- nlm(pmll, mom_lambda, hessian=TRUE, x=x)
min_lambda
```

```
## $minimum
## [1] 227.6
## 
## $estimate
## [1] 5.08
## 
## $gradient
## [1] -3.335e-07
## 
## $hessian
##       [,1]
## [1,] 19.68
## 
## $code
## [1] 3
## 
## $iterations
## [1] 1
```

```r
set.seed(990099)
x <- rpois(100,5)
sumx <- sum(x)
sum_log_xfact <- sum(log(factorial(x)))
n <- length(x)
lambda <- seq(from=0, to=10, by=0.1)
ll_surf <- n*lambda - sumx*log(lambda) + sum_log_xfact
```


--- .codemargin .outmargin .nobackground

## Poisson MLE example

<img src="assets/fig/inf_pois.png" title="plot of chunk inf_pois" alt="plot of chunk inf_pois" style="display: block; margin: auto;" />



--- .nobackground

## Interval Estimation

When presenting a single point estimate of a statistical parameter, we often also want to affix some measure of reliability around the estimate - a confidence interval is a means of accomplishing this task. 

The frequentist interpretation of confidence intervals relates to a "repeated sampling" construct. In repeated sampling, we often want to provide an interval that would include the fixed model parameter with high probability (or a large proprtion of times). This is how many people interpret confidence intervals (correctly noting that the parameter is fixed and the interval is random). 

Wasserman (p. 92) states that a $1-\alpha$ level confidence interval for a real valued parameter $\theta$ is an interval $C_n=(a,b)$ where $a$ and $b$ are function of the data (and themselves random quantities), satisfying the fact:

$$ P_{\theta}(\theta \in C_n) \geq (1-\alpha), \quad \forall \theta \in \mathcal{\Theta} $$

Knight (p. 341) describes the pivotal method as a means of generating interval estimates. 



--- .nobackground

## Hypothesis Testing

Hypothesis testing is used to assess/test the plausibility that a model parameter equals a given value (or set of values, if the parameter is vector valued).

There are essentially 4 main elements to hypothesis testing:
* A null hypothesis: $H_0$
* An alternative htpothesis: $H_A$ 
* A test statistic (with a known exact/asymptotic distribution under the null)
* A reject region relating to a binary decision rule

When hypothesis testing one can make two types of inferential errors:

|                                 | Truth: Maintain $H_0$   | Truth: Reject $H_0$                   | 
|---------------------------------|-------------------------|--------------------------------------:|
| Test: Reject $H_0$              | Type 1 error            | Correct Decision                      |
| Test: Fail to Reject $H_0$      | Correct Decision        | Type 2 Error                          |

<br/>
Given a test statistic and a null distirbution we can also use p-values to inform inferences.



--- .nobackground

## Duality: Interval Estimation and Hypothesis Testing

In certain circumstances there exists a relationship between interval estimation and hypothesis testing. When deriving confidence intervals via the pivotal method this becomes apparent. For example:

$$ Z = \frac{\theta - \hat{\theta}}{\sigma} \rightarrow N(0,1)$$

We can use this knowledge to define a pivotal quantity:

$$ P(-Z_{\frac{\alpha}{2}} \leq Z \leq Z_{\frac{\alpha}{2}}) = 1 - \alpha$$
$$ P(-Z_{\frac{\alpha}{2}} \leq \frac{\theta - \hat{\theta}}{\sigma} \leq Z_{\frac{\alpha}{2}}) = 1 - \alpha$$
$$ P(\hat{\theta} -Z_{\frac{\alpha}{2}}*\sigma \leq \theta \leq \hat{\theta} + Z_{\frac{\alpha}{2}}*\sigma) = 1 - \alpha$$

This asymptotic standard normal pivotal quantity is used ubiquitously in deriving confidence intervals in biostatistics: means, proportions, differences in means/proportions, log odds/risk ratios, etc. 


--- .nobackground

## Duality: Interval Estimation and Hypothesis Testing

The above pivotal quantity lends itself to a sensible decision rule for the following hypothesis as well:

$$ H_0: \hat{\theta} = {\theta}_0 $$
$$ H_A: \hat{\theta} \neq {\theta}_0 $$

$$ Z = \frac{\theta - \hat{\theta}}{\sigma} \rightarrow N(0,1)$$

Therefore, if $|Z| \geq Z_{\frac{\alpha}{2}}$ then we reject $H_0$; else, we fail to reject $H_0$. For an alpha rejection region corresponding to $\alpha=0.05$ we choose $Z_{\frac{\alpha}{2}}=1.96$ (which is just a quantile from the standard normal distribution). 

This would suggest that if our confidence interval embraces the null value that we maintain $H_0$; else, if our confidence interval does not embrace the null value that we can reject $H_0$. 



--- .nobackground

## Interval Estimation and Hypothesis Testing in R

R has many functions for hypothesis testing. Typically, when you apply these hypothesis test functions to data in R you get an interval estimate for free (because of this duality).


```r
apropos("\\.test$")
```

```
##  [1] "ansari.test"          "bartlett.test"        "binom.test"          
##  [4] "Box.test"             "chisq.test"           "cor.test"            
##  [7] "fisher.test"          "fligner.test"         "friedman.test"       
## [10] "kruskal.test"         "ks.test"              "mantelhaen.test"     
## [13] "mauchly.test"         "mcnemar.test"         "mood.test"           
## [16] "oneway.test"          "pairwise.prop.test"   "pairwise.t.test"     
## [19] "pairwise.wilcox.test" "poisson.test"         "power.anova.test"    
## [22] "power.prop.test"      "power.t.test"         "PP.test"             
## [25] "prop.test"            "prop.trend.test"      "quade.test"          
## [28] "shapiro.test"         "spearman.test"        "t.test"              
## [31] "var.test"             "wilcox.test"
```



--- .nobackground

## Inference about a single proportion

Are the proportion of those dying in the `pbc` trial equal to 0.50? 

$$H_0 \quad P=0.50  \quad \text{versus} \quad H_A \quad P \neq 0.50$$


```r
suppressPackageStartupMessages(library(survival))
prop.test(table(pbc$status1),p=0.50,correct=FALSE)
```

```
## 
## 	1-sample proportions test without continuity correction
## 
## data:  table(pbc$status1), null probability 0.5
## X-squared = 5.062, df = 1, p-value = 0.02445
## alternative hypothesis: true p is not equal to 0.5
## 95 percent confidence interval:
##  0.3981 0.4929
## sample estimates:
##     p 
## 0.445
```


--- .nobackground

## Inference about a single proportion

There are many methods that can be used to estimate CI's for a single proportion. See the Newcombe (1998) reference in [`?prop.test`](http://en.wikipedia.org/wiki/Binomial_test). What if we try out the [`chisq.test()`](http://en.wikipedia.org/wiki/Pearson_chi-square_test) function? 


```r
suppressPackageStartupMessages(library(survival))
chisq.test(table(pbc$status1))
```

```
## 
## 	Chi-squared test for given probabilities
## 
## data:  table(pbc$status1)
## X-squared = 5.062, df = 1, p-value = 0.02445
```

Results are identical to the `prop.test()` procedure with the `correct=FALSE` option specified. Note this is not the default functionality of `prop.test()`.


--- .nobackground

## Inference about a single proportion

And there's another approach...see the [`binom.test()`](http://en.wikipedia.org/wiki/Binomial_test) function. It perform an exact test of whether the estimated proportion equals some null value.


```r
binom.test(x=sum(pbc$status1),n=length(pbc$status1),p=0.5)
```

```
## 
## 	Exact binomial test
## 
## data:  sum(pbc$status1) and length(pbc$status1)
## number of successes = 232, number of trials = 418, p-value =
## 0.02761
## alternative hypothesis: true probability of success is not equal to 0.5
## 95 percent confidence interval:
##  0.5059 0.6033
## sample estimates:
## probability of success 
##                  0.555
```




--- .nobackground

## Inference about a single mean

We can use a [t-test](http://en.wikipedia.org/wiki/T_test) to assess whether an observed mean is equal to some value. For example, lets assess whether the mean bilirubin level in the `pbc` dataset is equal to 5.

$$H_0 \quad \mu=5 \quad \text{versus} \quad H_A \quad \mu \neq 5$$


```r
t.test(pbc$bili,mu=5,paired=FALSE,conf.level=0.90)
```

```
## 
## 	One Sample t-test
## 
## data:  pbc$bili
## t = -8.253, df = 417, p-value = 2.05e-15
## alternative hypothesis: true mean is not equal to 5
## 90 percent confidence interval:
##  2.865 3.576
## sample estimates:
## mean of x 
##     3.221
```



--- .nobackground

## Inference about a location parameter

The [Wilcoxon-Mann-Whitney U-test](http://en.wikipedia.org/wiki/Mann-Whitney_U_test) can be used to assess whether the distribution of some random variable is symmetric about some measure of location (like a mean/median). It is kind of a non-parametric analogue of the 1-sample t-test.


```r
wilcox.test(pbc$bili,mu=5,paired=FALSE,conf.int=TRUE,conf.level=0.90)
```

```
## 
## 	Wilcoxon signed rank test with continuity correction
## 
## data:  pbc$bili
## V = 16299, p-value < 2.2e-16
## alternative hypothesis: true location is not equal to 5
## 90 percent confidence interval:
##  1.8 2.2
## sample estimates:
## (pseudo)median 
##              2
```


--- .nobackground

## Inference for contingency tables

Is there an association between gender and the risk of death/transplant in the `pbc` dataset?


```r
prop.table(table(pbc$sex,pbc$status1),margin=1)
```

```
##    
##          0      1
##   m 0.6136 0.3864
##   f 0.4251 0.5749
```

```r
chisq.test(table(pbc$sex,pbc$status1))
```

```
## 
## 	Pearson's Chi-squared test with Yates' continuity correction
## 
## data:  table(pbc$sex, pbc$status1)
## X-squared = 4.927, df = 1, p-value = 0.02645
```




--- .nobackground

## Inference for contingency tables

Is there an association between gender and the risk of death/transplant in the `pbc` dataset?


```r
fisher.test(table(pbc$sex,pbc$status1))
```

```
## 
## 	Fisher's Exact Test for Count Data
## 
## data:  table(pbc$sex, pbc$status1)
## p-value = 0.02394
## alternative hypothesis: true odds ratio is not equal to 1
## 95 percent confidence interval:
##  1.084 4.346
## sample estimates:
## odds ratio 
##      2.144
```




--- .nobackground

## Inference about two means

Is there an association between gender and the bilirubin in the `pbc` dataset?


```r
t.test(pbc$bili~pbc$sex)
```

```
## 
## 	Welch Two Sample t-test
## 
## data:  pbc$bili by pbc$sex
## t = -0.9385, df = 89.59, p-value = 0.3505
## alternative hypothesis: true difference in means is not equal to 0
## 95 percent confidence interval:
##  -1.2364  0.4431
## sample estimates:
## mean in group m mean in group f 
##           2.866           3.263
```



--- .nobackground

## Inference about two location parameters

We know that the t-test may not be appropriate if the variances are non-homogeneous. Or if the data are markedly non-normal. We can try a non-parametric analogue again: the Wilcoxon-Mann-Whitney U-test.


```r
wilcox.test(pbc$bili~pbc$sex,conf.int=TRUE,conf.level=0.95)
```

```
## 
## 	Wilcoxon rank sum test with continuity correction
## 
## data:  pbc$bili by pbc$sex
## W = 9882, p-value = 0.02897
## alternative hypothesis: true location shift is not equal to 0
## 95 percent confidence interval:
##  8.813e-06 9.000e-01
## sample estimates:
## difference in location 
##                    0.4
```


--- .codemargin .outmargin .nobackground

## Inference about two location parameters

The t-test and the wilcoxon rank sum test gave different answers. Lets graphically try to investigate things before making firm conclusions.


```r
boxplot(pbc$bili~pbc$sex,xlab="Gender",ylab="Bilirubin Levels",ylim=c(0,30))
```

<img src="assets/fig/inf_boxloc.png" title="plot of chunk inf_boxloc" alt="plot of chunk inf_boxloc" style="display: block; margin: auto;" />



--- .codemargin .outmargin .nobackground

## Inference about two location parameters


```r
plot(density(pbc$bili[pbc$sex=="m"],from=0),type="l",col="black",ylab="Density",xlab="Bilirubin Levels",xlim=c(0,30),ylim=c(0,0.40),main="")
lines(density(pbc$bili[pbc$sex=="f"],from=0),type="l",col="red")
```

<img src="assets/fig/inf_densloc.png" title="plot of chunk inf_densloc" alt="plot of chunk inf_densloc" style="display: block; margin: auto;" />


--- .nobackground

## Inference about two location parameters


```r
by(pbc$bili,pbc$sex,summary)
```

```
## pbc$sex: m
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##    0.60    1.30    2.05    2.87    3.50    9.50 
## -------------------------------------------------------- 
## pbc$sex: f
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##    0.30    0.70    1.30    3.26    3.40   28.00
```

So now what do you think about your inference regarding a potential difference in bilirubin as a function of gender? Is gender associated with bilirubin levels in this sample?



--- .codemargin .outmargin .nobackground

## Inference for R*C contingency tables

Is there any association between death/transplant and stage of fibrosis? We can use [`chisq.test()`](http://en.wikipedia.org/wiki/Pearson_chi-square_test) or [`fisher.test()`](http://en.wikipedia.org/wiki/Fishers_exact_test) again. We could also check for trend using [`prop.trend.test()`](http://en.wikipedia.org/wiki/Cochran–Armitage_test_for_trend).


```r
prop.table(table(pbc$status1,pbc$stage),margin=1)
```

```
##    
##           1       2       3       4
##   0 0.01099 0.15385 0.31868 0.51648
##   1 0.08261 0.27826 0.42174 0.21739
```

```r
chisq.test(table(pbc$status1,pbc$stage))
```

```
## 
## 	Pearson's Chi-squared test
## 
## data:  table(pbc$status1, pbc$stage)
## X-squared = 46.14, df = 3, p-value = 5.295e-10
```



--- .nobackground

## Inference for R*C contingency tables


```r
fisher.test(table(pbc$status1,pbc$stage))
```

```
## 
## 	Fisher's Exact Test for Count Data
## 
## data:  table(pbc$status1, pbc$stage)
## p-value = 2.225e-10
## alternative hypothesis: two.sided
```


--- .nobackground

## Inference for R*C contingency tables


```r
prop.trend.test(table(pbc$status1,pbc$stage)[1,],table(pbc$stage))
```

```
## 
## 	Chi-squared Test for Trend in Proportions
## 
## data:  table(pbc$status1, pbc$stage)[1, ] out of table(pbc$stage) ,
##  using scores: 1 2 3 4
## X-squared = 42.05, df = 1, p-value = 8.901e-11
```

Type `prop.trend.test` into the R console to see source code for what this test is really doing.



--- .codemargin .outmargin .nobackground

## Inference about multiple means

[ANOVA](http://en.wikipedia.org/wiki/ANOVA) is a popular method for testing the equality of many means. The `oneway.test()` function is one approach to investigating this problem. It does not necessarily assume equal group variances.

<br/>
Are mean bilirubin levels associated with edema in the `pbc` dataset?


```r
by(pbc$bili,pbc$edema,summary)
```

```
## pbc$edema: 0
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##    0.30    0.70    1.30    2.69    3.20   25.50 
## -------------------------------------------------------- 
## pbc$edema: 0.5
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##    0.40    1.08    2.00    4.73    5.35   28.00 
## -------------------------------------------------------- 
## pbc$edema: 1
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##    0.80    2.48    7.80    9.26   15.20   22.50
```




--- .nobackground

## Inference about multiple means


```r
oneway.test(pbc$bili~pbc$edema)
```

```
## 
## 	One-way analysis of means (not assuming equal variances)
## 
## data:  pbc$bili and pbc$edema
## F = 10.5, num df = 2.00, denom df = 36.67, p-value = 0.0002487
```



--- .nobackground

## Inference about multiple location parameters

A non-parametric analogue of the one-way ANOVA is the [Kruskal Wallis test](http://en.wikipedia.org/wiki/Kruskal–Wallis_one-way_analysis_of_variance). It attempts to assess whether all continuous distributions are equal across some discrete grouping factor, compared to the alternative that at least one distirbution is different from the others.


```r
kruskal.test(pbc$bili~pbc$edema)
```

```
## 
## 	Kruskal-Wallis rank sum test
## 
## data:  pbc$bili by pbc$edema
## Kruskal-Wallis chi-squared = 27.53, df = 2, p-value = 1.051e-06
```



--- .codemargin .outmargin .nobackground

## Inference about correlation coefficient


```r
set.seed(54673)
x <- rnorm(5)
y <- rnorm(5)
cor.test(x,y)
```

```
## 
## 	Pearson's product-moment correlation
## 
## data:  x and y
## t = 2.083, df = 3, p-value = 0.1286
## alternative hypothesis: true correlation is not equal to 0
## 95 percent confidence interval:
##  -0.3523  0.9838
## sample estimates:
##   cor 
## 0.769
```







--- .nobackground

## Inference: Interval Estimation and Hypothesis Testing

We've explored some of R's base procedures which are useful for estimating confidence intervals or for performing hypothesis testing.

There is sometimes a duality that exists between the two approaches to inference. Where this duality exists R attempts to exploit it, and generally has functionality to return both an interval estimate, and some form of a test statistic and p-value (which can be used for hypothesis testing).

There are MANY other contributed packages that implement user defined routines for point estimation, interval estimation and hypothesis testing. If you have a method in mind that you want to use "google it", and check out the contributed packages on CRAN. User beware though: you have to check the quality of some packages!!

Estimation and hypothesis testing are a HUGE area of theoretical and applied statistics, this module could not do these areas justice. Check out [Knight](http://www.amazon.com/Mathematical-Statistics-Chapman-Statistical-Science/dp/158488178X), [Wasserman](http://www.amazon.com/All-Statistics-Statistical-Inference-Springer/dp/0387402721) or virtually any book by [EL](http://www.amazon.com/Testing-Statistical-Hypotheses-Springer-Statistics/dp/0387988645/ref=sr_1_1?s=books&ie=UTF8&qid=1402247030&sr=1-1&keywords=lehmann+hypothesis) [Lehmann](http://www.amazon.com/Theory-Point-Estimation-Springer-Statistics/dp/0387985026/ref=pd_bxgy_b_img_y) for the full details. 


--- .segue .dark

## Lab Session (30 minutes)


--- .nobackground

## Inference: Interval Estimation and Hypothesis Testing

1. The `shapiro.test()` function can be used to implement the Shapiro-Wilk test for normality. Consider the `pbc` dataset in the `survival` package. Columns 11-19 are numeric biochemical variables that are routinely captured in a liver panel. Use a `for` loop and each iteration applying the `shapiro.test()` function to a different column. Extract the p-value and store it in a vector. Do the same thing with one of the `apply()` variants. Which variables do we reject the normality assumption for? Compare the speed of each approach by wrapping both of your routines in `proc.time()`. This is known as benchmarking. What approach is more computationally efficient?
  
  

```
##    user  system elapsed 
##   0.012   0.000   0.012
```

```
##    user  system elapsed 
##   0.015   0.000   0.016
```



--- .nobackground

## Inference: Interval Estimation and Hypothesis Testing

<ol start="2">
<li> Again, using the <code>pbc</code> dataset in the <code>survival</code> package to investigate the relationship between bilirubin and edema. Create side-by-side box-plots of the distirbution of bilirubin for each edema group. Use a kruskal-wallis test to assess whether the distribution of bilirubin varies across edema groups. What groups are different (in a pairwise manner)? </li> 
</ol>


```
## 
## 	Kruskal-Wallis rank sum test
## 
## data:  pbc$bili by pbc$edema
## Kruskal-Wallis chi-squared = 27.53, df = 2, p-value = 1.051e-06
```


--- .nobackground

## Inference: Interval Estimation and Hypothesis Testing


```
## Warning: cannot compute exact p-value with ties
```

```
## 
## 	Pairwise comparisons using Wilcoxon rank sum test 
## 
## data:  pbc$bili and pbc$edema 
## 
##     0       0.5   
## 0.5 0.0220  -     
## 1   3.4e-06 0.0073
## 
## P value adjustment method: holm
```




--- .nobackground

## Inference: Interval Estimation and Hypothesis Testing

<ol start="3">
<li> In the <code>MASS</code> package, there is a function called <code>mvrnorm()</code>. It is used to simulate data from a multivariate normal distribution. Use the code below to generate two vectors of correlated normal data. Compare the two distributions using <code>t.test()</code>. For one iteration use <code>paired=TRUE</code>, and the other use <code>paired=FALSE</code>. Explain the difference in p-values. Repeat the process using Sigma as <code>Sigma <- matrix(c(1,-0.8,-0.8,1),ncol=2)</code>. Re-estimate the t-test statistics. What difference in p-values do you notice now between the <code>paired=TRUE</code> and the </code>paired=FALSE</code> analyses. Again, explain the differences in p-values. </li> 
</ol>


```r
suppressPackageStartupMessages(library(MASS))
set.seed(12345)
mu <- c(0,0.15)
Sigma <- matrix(c(1,0.8,0.8,1),ncol=2)
dat <- mvrnorm(n=100,mu=mu,Sigma=Sigma)
```





--- .nobackground

## Inference: Interval Estimation and Hypothesis Testing

<ol start="4">
<li> A useful function for comparing changes in paired binary response variables is McNemar's test. It is implemented in R via the <code>mcnemar.test()</code> function. Use the code below to create correlated binary data and assess if there is a change in proportions across the two correlated vectors of dichotomous data. State in words the conclusion you make from the observed sample of data. </li>  
</ol>


```r
suppressPackageStartupMessages(library(MASS))
set.seed(12345)
mu <- c(0,0.15)
Sigma <- matrix(c(1,0.8,0.8,1),ncol=2)
dat <- mvrnorm(n=100,mu=mu,Sigma=Sigma)
```


--- .nobackground

## Inference: Interval Estimation and Hypothesis Testing


```r
table(ifelse(dat[,1]>0.5,1,0),ifelse(dat[,2]>0.5,1,0))
```

```
##    
##      0  1
##   0 46 16
##   1  5 33
```

```r
mcnemar.test(ifelse(dat[,1]>0.5,1,0),ifelse(dat[,2]>0.5,1,0))
```

```
## 
## 	McNemar's Chi-squared test with continuity correction
## 
## data:  ifelse(dat[, 1] > 0.5, 1, 0) and ifelse(dat[, 2] > 0.5, 1, 0)
## McNemar's chi-squared = 4.762, df = 1, p-value = 0.0291
```








--- .segue .dark

## Regression Models in R


--- .nobackground

## Regression Models in R

[Regression models](http://en.wikipedia.org/wiki/Regression_analysis) (e.g. linear regression, logistic regression, Poisson regression, Cox PH regression, etc.) seek to describe the relationship between a single response variable and one or more covariates. More specifically, it focuses on describing how the response variable changes, as one or more covariates are changed (holding other fixed).

Typically, we are interested in the expectation function. So we are modelling how the conditional mean (or probability, or rate) changes as we vary covariate values.

$$ r(x) = E(Y|X) $$

Regression models sometimes have different goals which may include: identification of factors associated with a response (explanation), development of models for forecasting and prediction, or (more rarely) inferring causal relationship between response variables and covariates.

Again, [Knight](http://www.amazon.com/Mathematical-Statistics-Chapman-Statistical-Science/dp/158488178X) and [Wasserman](http://www.amazon.com/All-Statistics-Statistical-Inference-Springer/dp/0387402721) give sound introductions to regression modelling.


--- .nobackground

## Linear Regression

[Linear regression](http://en.wikipedia.org/wiki/Linear_regression) is a type of regression model with a specific set of assumptions and estimation methods. These include:
* Linearity
* Exogeneity
* Independence
* Homoskedasticity
* Invertability of the design matrix

Mathematically the model take the form:

$$ y_i = \beta_0 + \beta_1 x_{i1} + \cdots + \beta_p x_{ip} + \varepsilon_i
 = \mathbf{x}^{\rm T}_i\boldsymbol\beta + \varepsilon_i,
 \qquad i = 1, \ldots, n $$

Again, the linear model seeks to describe how the conditional mean of the response changes as certain covariates are changed. 



--- .nobackground

## GLM's (Linear, Logistic, Poisson, etc.)

[Generalized linear models](http://en.wikipedia.org/wiki/Generalized_linear_model) (GLM's) extend linear regression, allowing the response variable to be distirbuted according to a non-continuous, non-normal, probability model. 

GLM's are specified in terms of 3 components:
* A probability model for the response variable selected from the exponential family of distributions.
* A linear predictor: $\eta = \mathbf{x}^{\rm T}_i\boldsymbol\beta$
* A link function $g()$ such that: $E(Y)=\mu=g^{-1}(\eta)$ 

Intuitively, the linear predictor can take on any value on $\Re$. However, the mean of the probability distribution presumed to geenrate the data typically lies in some subset of $\Re$. The link function acts to map the linear predictor from $\Re$ to the a sensible range for a given probability model. Linear regression would fail to do this, and can make nonsensical predictions: e.g. probabilities outside the range of [0,1], negative rates of events, etc. 

Given a probability distirbution for the response variable and a link function, a variance function arises: $V(Y) = V(\mu) = V(g^{-1}(\mathbf{x}^{\rm T}_i\boldsymbol\beta))$.


--- .nobackground

## GLM's (Linear, Logistic, Poisson, etc.)

Below we tabulate some of the technical details associated with each GLM type model:

|  Model               |  Distribution | Support     | Link      | Link Function  | Inverse Link    |
|----------------------|---------------|-------------|-----------|----------------|----------------:|
| Linear Regression    |  Normal       | $\Re$       | Identity  | $\mathbf{x}^{\rm T}_i\boldsymbol\beta = \mu$ | $\mu = \mathbf{x}^{\rm T}_i\boldsymbol\beta$ | 
| Logistic Regression  |  Bernoulli    |  [0,1]      | Logit     | $\mathbf{x}^{\rm T}_i\boldsymbol\beta = ln(\frac{\mu}{1-\mu})$ | $\mu = \frac{exp(\mathbf{x}^{\rm T}_i\boldsymbol\beta)}{1 + exp(\mathbf{x}^{\rm T}_i\boldsymbol\beta)}$ |
| Poisson Regression   |  Poisson      |  $\Re^{+}$  | Log       | $\mathbf{x}^{\rm T}_i\boldsymbol\beta = ln(\mu)$ | $\mu = exp(\mathbf{x}^{\rm T}_i\boldsymbol\beta)$

<br/>
In a nutshell:
* The [linear regression model](http://en.wikipedia.org/wiki/Linear_regression) is useful for modelling a continuous normally distributed response variable.
* The [logistic regression model](http://en.wikipedia.org/wiki/Logistic_regression) is useful for modelling binary data.
* The [Poisson regression model](http://en.wikipedia.org/wiki/Poisson_regression) is useful for modelling count data. 



--- .nobackground

## Cox Proportion Hazard Regression Model

The [Cox PH model](http://en.wikipedia.org/wiki/Proportional_hazards_model) can be loosely viewed as an extension of a GLM. The Cox model is used to model the impact of covariates on the time to some event. 

In this case the response is not longer a scalar quantity for each individual. Rather the response is vector based, with one quantity denoting whether the event of interest occurred or not (i.e. the person may have been censored), and the second quantity denoting the time to event/censoring. Mathemtcially we can represent the response as $Y_i=(t_i,\delta_{i})$.

The model for the hazard rate at time t can be specified as:

$$ \lambda(t|X) = \lambda_0(t)\exp(\beta_1 x_{i1} + \cdots + \beta_p x_{ip}) = \lambda_0(t)\exp(\mathbf{x}^{\rm T}_i\boldsymbol\beta)$$

The proportional hazards assumption states that covariates have a multiplicative effect on the hazard rate, which is constant over t. Though the hazard rate itself may change (as a function of covariates), depending on the specification of the baseline hazard function. 



--- .nobackground

## Regression Models in R

R has elegant functionality for fitting regression models, checking model assumptions (model diagnostics), and for doing forecasting/prediction.

The main functions we will explore are: `lm()` and `glm()` which are shipped with base R, and also `coxph()` from the `survival` package. 

Classes are important when fitting regression models in R. Essentially, we will fit a model and store the returned list as an object. The object will have a certain class. As such, we are free to call base R generic function on these objects, and the result is very sensible output: e.g. `print()`, `summary()`, `plot()`, etc.

We can also call sensibly names extract functions on these objects and get back cool results: e.g. `coef()`, `vcov()`, `resid()`, `predict()`, etc.

A key function for regression modelling in R that we haven't really encountered is the model formula operator, `~`. Type `?"~"` into the console to learn more. Basically, you put your response variable on the LHS of the operator, and your covariates on the RHS of the operator, and you're off to the races.



--- .nobackground

## Linear Regression in R

In this example we going to work with the `ozone` dataset from the `faraway` package. We are going to attempt to investigate the relationship between ozone levels and various other meteorological variables(temperature, humidity, wind speed, etc.). Let's start by summarizing the data:


```r
suppressPackageStartupMessages(library(faraway))
dim(ozone)
```

```
## [1] 330  10
```

```r
names(ozone)
```

```
##  [1] "O3"       "vh"       "wind"     "humidity" "temp"     "ibh"     
##  [7] "dpg"      "ibt"      "vis"      "doy"
```



--- .nobackground

## Linear Regression in R


```r
summary(ozone,digits=2)
```

```
##        O3           vh            wind         humidity       temp   
##  Min.   : 1   Min.   :5320   Min.   : 0.0   Min.   :19   Min.   :25  
##  1st Qu.: 5   1st Qu.:5690   1st Qu.: 3.0   1st Qu.:47   1st Qu.:51  
##  Median :10   Median :5760   Median : 5.0   Median :64   Median :62  
##  Mean   :12   Mean   :5750   Mean   : 4.8   Mean   :58   Mean   :62  
##  3rd Qu.:17   3rd Qu.:5830   3rd Qu.: 6.0   3rd Qu.:73   3rd Qu.:72  
##  Max.   :38   Max.   :5950   Max.   :11.0   Max.   :93   Max.   :93  
##       ibh            dpg           ibt           vis           doy     
##  Min.   : 111   Min.   :-69   Min.   :-25   Min.   :  0   Min.   : 33  
##  1st Qu.: 878   1st Qu.: -9   1st Qu.:107   1st Qu.: 70   1st Qu.:120  
##  Median :2112   Median : 24   Median :168   Median :120   Median :206  
##  Mean   :2573   Mean   : 17   Mean   :161   Mean   :124   Mean   :209  
##  3rd Qu.:5000   3rd Qu.: 45   3rd Qu.:214   3rd Qu.:150   3rd Qu.:302  
##  Max.   :5000   Max.   :107   Max.   :332   Max.   :350   Max.   :390
```



--- .nobackground

## Linear Regression in R


```r
round(cor(ozone),digits=2)
```

```
##             O3    vh  wind humidity  temp   ibh   dpg   ibt   vis   doy
## O3        1.00  0.61  0.00     0.45  0.78 -0.59  0.21  0.75 -0.44  0.07
## vh        0.61  1.00 -0.23     0.07  0.81 -0.50 -0.15  0.85 -0.36  0.34
## wind      0.00 -0.23  1.00     0.22 -0.01  0.20  0.34 -0.16  0.13 -0.25
## humidity  0.45  0.07  0.22     1.00  0.34 -0.24  0.65  0.20 -0.40  0.04
## temp      0.78  0.81 -0.01     0.34  1.00 -0.53  0.19  0.86 -0.39  0.24
## ibh      -0.59 -0.50  0.20    -0.24 -0.53  1.00  0.04 -0.78  0.39  0.04
## dpg       0.21 -0.15  0.34     0.65  0.19  0.04  1.00 -0.10 -0.13 -0.15
## ibt       0.75  0.85 -0.16     0.20  0.86 -0.78 -0.10  1.00 -0.42  0.22
## vis      -0.44 -0.36  0.13    -0.40 -0.39  0.39 -0.13 -0.42  1.00 -0.22
## doy       0.07  0.34 -0.25     0.04  0.24  0.04 -0.15  0.22 -0.22  1.00
```


--- .nobackground

## Linear Regression in R

<img src="assets/fig/reg_plotpairs.png" title="plot of chunk reg_plotpairs" alt="plot of chunk reg_plotpairs" style="display: block; margin: auto;" />


--- .nobackground

## Linear Regression in R

It appears a number of factors are related to ozone concentrations (as would be expected, given what we know from atmospheric chemistry).


```r
o3mod <- lm(O3 ~ vh + temp + ibh + ibt,data=ozone)
class(o3mod)
```

```
## [1] "lm"
```

```r
print(o3mod)
```

```
## 
## Call:
## lm(formula = O3 ~ vh + temp + ibh + ibt, data = ozone)
## 
## Coefficients:
## (Intercept)           vh         temp          ibh          ibt  
##   60.298094    -0.012547     0.387684    -0.000915     0.012690
```


--- .nobackground

## Linear Regression in R


```r
summary(o3mod)
```

```
## 
## Call:
## lm(formula = O3 ~ vh + temp + ibh + ibt, data = ozone)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -11.775  -3.060  -0.241   2.939  13.065 
## 
## Coefficients:
##              Estimate Std. Error t value Pr(>|t|)    
## (Intercept) 60.298094  29.106105    2.07   0.0391 *  
## vh          -0.012547   0.005360   -2.34   0.0198 *  
## temp         0.387684   0.040005    9.69   <2e-16 ***
## ibh         -0.000915   0.000280   -3.27   0.0012 ** 
## ibt          0.012690   0.012836    0.99   0.3236    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 4.72 on 325 degrees of freedom
## Multiple R-squared:  0.658,	Adjusted R-squared:  0.654 
## F-statistic:  156 on 4 and 325 DF,  p-value: <2e-16
```



--- .nobackground

## Linear Regression in R

<img src="assets/fig/lin_diag.png" title="plot of chunk lin_diag" alt="plot of chunk lin_diag" style="display: block; margin: auto;" />


--- .nobackground

## Linear Regression in R

<img src="assets/fig/lin_hist.png" title="plot of chunk lin_hist" alt="plot of chunk lin_hist" style="display: block; margin: auto;" />



--- .nobackground

## Linear Regression in R

Can anyone interpret the final coefficient estimates?


```r
coef(o3mod)
```

```
## (Intercept)          vh        temp         ibh         ibt 
##  60.2980942  -0.0125475   0.3876843  -0.0009151   0.0126900
```

```r
confint(o3mod)
```

```
##                 2.5 %     97.5 %
## (Intercept)  3.037942  1.176e+02
## vh          -0.023093 -2.002e-03
## temp         0.308983  4.664e-01
## ibh         -0.001466 -3.642e-04
## ibt         -0.012562  3.794e-02
```


--- .nobackground

## Linear Regression in R

R has a function called `stepAIC()`. It is used to perform model selection based on the AIC criteria. It can perform: forward, backward and stepwise regression.

Missing data handling is always an issue in model selection. The default operation in R is to conduct estimate a model on the complete case dataset. In other words, cases with any missing response or covariate information are thrown away prior to estimation of the regression coefficients.
* The implication is that you are comparing measures of model fit on entirely different samples. Is this acceptable practice? I think not, others proceed (blindly) in spite of this shortcoming.


```r
step.o3mod <- stepAIC(lm(O3~vh+wind+humidity+temp+ibh+dpg+ibt+vis+doy,data=ozone))
```



--- .codemargin .outmargin .nobackground

## Linear Regression in R

The `predict()` function is useful for obtaining model based prediction for new observations and for forescating. 


```r
set.seed(13579)
newdat <- data.frame(vh=sample(ozone$vh,3),temp=sample(ozone$temp,3),ibh=sample(ozone$ibh,3),ibt=sample(ozone$ibt,3))
newdat
```

```
##     vh temp  ibh ibt
## 1 5490   58 3044  31
## 2 5850   69 3687 225
## 3 5600   64 5000  70
```

```r
predict(o3mod,newdat,interval="prediction")
```

```
##     fit   lwr   upr
## 1 11.51 1.931 21.08
## 2 13.13 3.736 22.52
## 3 11.16 1.737 20.58
```



--- .nobackground

## Logistic Regression in R

We are going to use the `infert` dataset from the `datasets` library. It considers whether a woman is infertile as a function of a number of maternal characteristics. The outcome `case` is an element of ${0,1}$. Our goal will be to estimate the probability of being infertile as a function of age, education, parity and number of induced/surgical abortions.  


```r
# Ignore the stratum variables (for this naive example)
infert1 <- infert[,1:6]
infert1$induced <- factor(infert1$induced)
infert1$spontaneous <- factor(infert1$spontaneous)
infert1$case <- factor(infert1$case)
dim(infert1)
```

```
## [1] 248   6
```



--- .nobackground

## Logistic Regression in R


```r
# Ignore the stratum variables (for this naive example)
summary(infert1, digits=2)
```

```
##    education        age         parity    induced case    spontaneous
##  0-5yrs : 12   Min.   :21   Min.   :1.0   0:143   0:165   0:141      
##  6-11yrs:120   1st Qu.:28   1st Qu.:1.0   1: 68   1: 83   1: 71      
##  12+ yrs:116   Median :31   Median :2.0   2: 37           2: 36      
##                Mean   :32   Mean   :2.1                              
##                3rd Qu.:35   3rd Qu.:3.0                              
##                Max.   :44   Max.   :6.0
```



--- .nobackground

## Logistic Regression in R

We fit a number of bivariate logistic regression models to investigate the relationship between infertility and the variables in this dataset. It looks like only spontaneous abortions are predictive of infertility in a bivariate sense.


```r
# Ignore the stratum variables (for this naive example)
m1 <- glm(case~education,data=infert1,family=binomial(link=logit))
m2 <- glm(case~age,data=infert1,family=binomial(link=logit))
m3 <- glm(case~parity,data=infert1,family=binomial(link=logit))
m4 <- glm(case~induced,data=infert1,family=binomial(link=logit))
m5 <- glm(case~spontaneous,data=infert1,family=binomial(link=logit))
```


--- .nobackground

## Logistic Regression in R


```r
logit.mod <- glm(case~parity+spontaneous+induced+age,data=infert1, family=binomial(link=logit))
logit.mod1 <- update(logit.mod, . ~ . -age)
anova(logit.mod,logit.mod1)
```

```
## Analysis of Deviance Table
## 
## Model 1: case ~ parity + spontaneous + induced + age
## Model 2: case ~ parity + spontaneous + induced
##   Resid. Df Resid. Dev Df Deviance
## 1       241        261            
## 2       242        264 -1    -3.03
```


--- .nobackground

## Logistic Regression in R


```r
summary(logit.mod1)
```

```
## 
## Call:
## glm(formula = case ~ parity + spontaneous + induced, family = binomial(link = logit), 
##     data = infert1)
## 
## Deviance Residuals: 
##    Min      1Q  Median      3Q     Max  
## -1.736  -0.876  -0.558   0.934   2.501  
## 
## Coefficients:
##              Estimate Std. Error z value Pr(>|z|)    
## (Intercept)    -1.129      0.343   -3.29  0.00098 ***
## parity         -0.651      0.179   -3.64  0.00028 ***
## spontaneous1    1.723      0.372    4.63  3.7e-06 ***
## spontaneous2    3.686      0.610    6.04  1.6e-09 ***
## induced1        1.020      0.395    2.58  0.00976 ** 
## induced2        2.200      0.580    3.79  0.00015 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## (Dispersion parameter for binomial family taken to be 1)
## 
##     Null deviance: 316.17  on 247  degrees of freedom
## Residual deviance: 263.94  on 242  degrees of freedom
## AIC: 275.9
## 
## Number of Fisher Scoring iterations: 4
```


--- .codemargin .outmargin .nobackground

## Logistic Regression in R

Does anyone want to interpret the estimated odds ratios?


```r
exp(coef(logit.mod1)[-1])
```

```
##       parity spontaneous1 spontaneous2     induced1     induced2 
##       0.5216       5.5988      39.8861       2.7737       9.0211
```

```r
exp(confint(logit.mod1)[-1,])
```

```
## Waiting for profiling to be done...
```

```
##                2.5 %   97.5 %
## parity        0.3607   0.7294
## spontaneous1  2.7447  11.8790
## spontaneous2 12.7709 141.6208
## induced1      1.2939   6.1294
## induced2      2.9464  29.0263
```


--- .nobackground

## Logistic Regression in R

Assessing GOF and explained variation in models with limitted dependent variables is more challenging than in the linear model. There are a number of methods that can be implmented:
* Deviance and Pearson $\chi^{2}$ indices of GOF (statistic divided by DF)
* Raw residuals, Pearson residuals, Deviance residuals, Studentized residuals, etc.
* Hosmer-Lemeshow and related GOF tests
* Various pseduo $R^2$ measures
* Raw accuracy measures and chance corrected accuracy (kappa)
* ROC Curves and C-indices
* Net reclassification indices and the integrated discrimination index
* Cross-validation and bootstrap methods

These all exist in user contributed R packages. Check them out if they are needed in your line of work.  



--- .nobackground

## Poisson Regression in R

We will use the `warpbreaks` dataset from the dataset package to investigate if the rate of warp breaks per loom as a function of 2 categorical predictors wool type and tension. 


```r
suppressPackageStartupMessages(library(datasets))
dim(warpbreaks)
```

```
## [1] 54  3
```



--- .nobackground

## Poisson Regression in R

Let's estimate the mean and variance of the number of warp breaks in each combination of wool type and tension. 


```r
suppressPackageStartupMessages(library(plyr))
ddply(warpbreaks, .(wool, tension), summarize, mean=mean(breaks), var=var(breaks))
```

```
## Error: argument "by" is missing, with no default
```



--- .nobackground

## Poisson Regression in R


```r
interaction.plot(warpbreaks$tension,warpbreaks$wool,warpbreaks$breaks,fun=mean,type="l", xlab="Tension",ylab="Mean Number Breaks",legend=FALSE)
legend("topright",c("A","B"),lty=c(2,1),bty="n")
```

<img src="assets/fig/regP_poisint.png" title="plot of chunk regP_poisint" alt="plot of chunk regP_poisint" style="display: block; margin: auto;" />


--- .nobackground

## Poisson Regression in R


```r
mod.int <- glm(breaks~wool+tension+wool*tension,data=warpbreaks,family=poisson(link=log))
mod.noint <- glm(breaks~wool+tension,data=warpbreaks,family=poisson(link=log))
anova(mod.noint,mod.int)
```

```
## Analysis of Deviance Table
## 
## Model 1: breaks ~ wool + tension
## Model 2: breaks ~ wool + tension + wool * tension
##   Resid. Df Resid. Dev Df Deviance
## 1        50        210            
## 2        48        182  2     28.1
```


--- .nobackground

## Poisson Regression in R

The Poisson model appears to be struggling with the issue of over-dispersion. i.e. The ratio of the Pearson/Deviance statistic over the DF is far greater than 1. We could remedy this with a quasi-Poisson model or by fitting a negative binomial model. The problem with overdisperion is that inference regarding the coefficients may be impacted by incorrectly estimated standard errors. 


```r
suppressPackageStartupMessages(library(MASS))
quasi.int <- glm(breaks~wool+tension+wool*tension,data=warpbreaks,family=quasipoisson(link=log))
nb.int <- glm.nb(breaks~wool+tension+wool*tension,data=warpbreaks)
```

The impact of the over-dispersion is most pronounced on the Wald test of significance for the interaction term between tension and wool type. 


--- .nobackground

## Poisson Regression in R

Again, there are a number of ways to assess model adequacy in Poisson regression models:
* Deviance and Pearson $\chi^{2}$ indices of GOF (statistic divided by DF)
* Raw residuals, Pearson residuals, Deviance residuals, Studentized residuals, etc.
* Various pseduo $R^2$ measures
* Comparison of observed counts for various integers versus model predicted values



--- .nobackground

## Cox Proportional Hazards Regression Model

Let us return to our favourite `pbc` dataset from the `survival` package. In this package there are two variables denoting time to death/censoring (`time`) as well as an indicator variable denoting whether a case experienced death over follow-up or was censored (`status`). 


```r
suppressPackageStartupMessages(library(survival))
pbc1 <- pbc[pbc$status!=1,]
```



--- .codemargin .outmargin .nobackground

## Cox Proportional Hazards Regression Model

Before starting, let's just plot the overall survival experience in this sample of patients using a non-parametric Kaplan-Meier estimator of the survival function.


```r
suppressPackageStartupMessages(library(rms))
survplot(npsurv(Surv(as.numeric(time)/365,status1==1) ~ 1, data=pbc), time.inc=2, type="kaplan-meier", conf="none", label=FALSE)
text(7,0.01,"Years Since Study Registration")
```

<img src="assets/fig/reg_km.png" title="plot of chunk reg_km" alt="plot of chunk reg_km" style="display: block; margin: auto;" />


--- .nobackground

## Cox Proportional Hazards Regression Model


```r
coxmod.trt <- coxph(Surv(as.numeric(time),status1==1) ~ trt==2, data=pbc)
summary(coxmod.trt)
```

```
## Call:
## coxph(formula = Surv(as.numeric(time), status1 == 1) ~ trt == 
##     2, data = pbc)
## 
##   n= 312, number of events= 168 
##    (106 observations deleted due to missingness)
## 
##                coef exp(coef) se(coef)   z Pr(>|z|)
## trt == 2TRUE 0.0466    1.0477   0.1551 0.3     0.76
## 
##              exp(coef) exp(-coef) lower .95 upper .95
## trt == 2TRUE      1.05      0.954     0.773      1.42
## 
## Concordance= 0.512  (se = 0.023 )
## Rsquare= 0   (max possible= 0.992 )
## Likelihood ratio test= 0.09  on 1 df,   p=0.764
## Wald test            = 0.09  on 1 df,   p=0.764
## Score (logrank) test = 0.09  on 1 df,   p=0.764
```



--- .nobackground

## Cox Proportional Hazards Regression Model


```r
coxmod.trt <- coxph(Surv(as.numeric(time),status1==1) ~ trt==2, data=pbc)
exp(coef(coxmod.trt))
```

```
## trt == 2TRUE 
##        1.048
```

```r
exp(confint(coxmod.trt))
```

```
##               2.5 % 97.5 %
## trt == 2TRUE 0.7731   1.42
```



--- .nobackground

## Cox Proportional Hazards Regression Model

Again, validating Cox PH models is likely a course in itself:
* Check proportional hazards
* Various residuals (Martingal, Schoenfeld, etc.)
* Time dependent C stats and extensions to AUC, etc.


--- .nobackground

## Regression Models in R

As you can see R has many useful functions for fitting linear models, GLM's (logistic and Poisson models) and semi-parametric time-to-event models (the Cox PH model).

The backbone of all of these models is the `~` model formula operator. Typically, you stick your response variable(s) one the LHS of the operator and your covariates on the RHS and you're off to model fitting and estimation.

The generic functions `print`, `summary`, `plot` are indispensible in model fitting and evaluation. You apply them to objects of known classes and R returns very useful/sensible output.

The ease at which R can fit these and other complex parametric, semi-parametric and non-parametric regression models can be both a blessing and a curse. I purposefully glossed over many important details (this is an R programming course, not a regression course). A thorough treatment of all of these topics likely fill 4+ graduate courses in statistics/biostatistics. Pick up a dense book before delving into model fitting/estimation and make sure you know what you are doing so you don't shoot yourself in the foot!!

--- .segue .dark

## Lab Session (30 minutes)


--- .nobackground

## Regression Models in R

1. Ignore the time variable in the `pbc` dataset. Fit a logistic regression model where death/transplant is the outcome. Determine the best possible fitting model for these data. How would you justify your proposed model?

2. Now consider time, fit a Cox PH regression model to outcome considering time and the censoring versus death/transplant indicator. What is the best possible fitting model to these data? Again, how would you justify your answer?

3. Why are the models from part 1 and part 2 the same or different? i.e. What are they doing differently? And do you expect different results when you fit these two models?




--- .segue .dark

## The End...Finally!!


--- .nobackground

## Acknowledgements

* Thanks to Dr. Teresa To for inviting me to give this lecture and giving me the opportunity to collect my thoughts about the R programming language in an organized manner. It was a learning experience for me, and I hope you too.

* Thanks to Ms. Devon Williams for organizing the workshop. It wouldn't be possible without all her hard work behind the scenes!!

* Thanks to Dr. Tom Wright for volunteering his time to help run the lab sessions. 

* Thanks to Dr. Eva Grunfeld, Dr. Paul Krueger and Dr. Rahim Moineddin for creating such a wonderful work environment for me and others in the Research program at the Department of Family and Community Medicine at the University of Toronto. The trust and autonomy they afford in me allows for these types of projects to occur.



--- .nobackground

## Acknowledgements

* Thanks to the R Core Development Team for providing and continuing such a great environment to conduct statistical research.
* Thanks to all the people at RStudio (the IDE I used when creating this presentation)
* Thanks to Hadley Wickham for his works on `reshape2`, `plyr` and other great packages.
* Thanks to Terry Therneau for his work on the `survival` package.
* Thanks to Yihui Xie for the `knitr` package.
* Thanks to Ramnath Vaidyanathan for `rCharts`...I love it!!
* And big thanks again to Ramnath Vaidyanathan for the `slidify` package...and hopefully the death of ugly slideshows!!

And all the other great R developers, contributors, authors, etc...thanks for helping me navigate my way with R!!!



