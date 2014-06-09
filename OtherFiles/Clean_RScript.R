#####################
## Module 1 Code
#####################

## Addition
1 + 1
## Exponentiation followed by multiplication (BEDMAS)
4*5^2
## Area of a circle of radius r=2
pi*2^2
## Natural logarithm of 1 multiplied by exponential (function) evaluated at 0
log(1)*exp(0)
## Factorial of 5
factorial(5)


## Addition
a <- 1
b <- 1
a + b


## Area of a circle of radius in the set r=(1,2,3)
radius <- c(1,2,3)
area <- pi*radius^2
cat(area, sep="\n")


## Descriptive stats and plots
a <- c(1,2,3,4,5)
mean(a)
median(a)
var(a)
sd(a)
summary(a)
range(a)
min(a)
max(a)
table(a)
prop.table(table(a))
pie(table(a))

## More bivariate descriptive stats
a <- c(1,2,3,4,5)
b <- c(1,2,3,4,5)
cor(a,b)
plot(a,b,type="b")


#####################
## Module 2 Code
#####################

## Numerical vectors
a <- c(1.2, 2.3)
a
typeof(a)
mode(a)
storage.mode(a)

## Integer vectors
a <- c(1L, 2L, 1:3)
a
typeof(a)
mode(a)
storage.mode(a)

## Logical vectors
a <- c(TRUE, FALSE, TRUE, TRUE, F, rep(T, 2))
a
typeof(a)
mode(a)
storage.mode(a)

## Character vectors
a <- c(letters[1:3], LETTERS[24:26], "chris")
a
typeof(a)
mode(a)
storage.mode(a)

## Creating vectors
numvec1 <- c(1,2,3)
numvec1
numvec2 <- seq(from=1, to=3, by=1)
numvec2
numvec3 <- 1:3
numvec3

## Vector conversion
vec1 <- c(T,F,T,F)
as.numeric(vec1)
vec2 <- c(letters[1:3])
as.numeric(vec2)
vec3 <- c(-2.5,-1.2,0,1L,2.1)
as.logical(vec3)
as.character(vec3)
as.integer(vec3)

typeof(c(1.2,1L))
c(0,T,1,F)
c(1,"chris",2,"dog")


## Special data types in R
a <- c(1,2,3,4,5,NA)
is.na(a)
mean(a)
mean(a, na.rm=TRUE)
0/0
1/0
-1/0
a <- c(1,2,3)
is.null(a)
as.null(a)
is.null(a)


## Vector indexing
a <- c(1:5,NA)
length(a)
a[1]
a[is.na(a)==FALSE]
a[c(1,2,6)]

a <- c(first=1, second=2, third=3)
a
a[c("first","third")]


## Vector recycling
a <- 1:3
b <- 4:6
a
b
a+b

a <- 1:3
b <- 4:5
a
b
a+b


## Matrices in R
a <- matrix(1:9, ncol=3, nrow=3, byrow=TRUE)
names(a)
rownames(a)
colnames(a)

colnames(a) <- paste0("COL",1:3) 
rownames(a) <- paste0("ROW",1:3)
typeof(a)
str(a)
attributes(a)


a <- matrix(LETTERS[seq(1,26,3)], ncol=3, nrow=3)
colnames(a) <- paste0("COL",1:3)
rownames(a) <- paste0("ROW",1:3)
a
typeof(a)


a <- matrix(sample(c(T,F),size=9,replace=TRUE), ncol=3, nrow=3)
colnames(a) <- paste0("COL",1:3)
rownames(a) <- paste0("ROW",1:3)
a
typeof(a)


a1 <- c(1,1,1)
a2 <- c(2,2,2)
a3 <- c(3,3,3)
mat <- cbind(a1,a2,a3)
colnames(mat) <- paste0("COL",1:3)
rownames(mat) <- paste0("ROW",1:3)
mat


## Indexing/Filtering matrices
set.seed(12345)
a <- matrix(rnorm(9), ncol=3, nrow=3)
colnames(a) <- paste0("COL",1:3)
rownames(a) <- paste0("ROW",1:3)
a
a[2:3,1:2]


## Lists in R
a <- list("R",rnorm(5),sample(c(T,F),4,replace=TRUE))
a
typeof(a)

a <- list(software="R",ran.num=rnorm(5),log.val=c(T,F,T))
a$software
a[1]
a[[1]]


a <- list(software="R",ran.num=rnorm(5),log.val=c(T,F,T))
a$log.val[2]
a[[3]][2]
a[3][2]


## Recursive lists
a <- list(visit=1, procedure=list(shots=list(type="flu", done=T)))
a
is.recursive(a)

a <- list(visit=1, procedure=list(shots=list(type="flu", done=T)))
a[[2]][[1]][2]


## Unlisting
a <- list("R",rnorm(5),c(T,F,T))
unlist(a)


## Data frames in R
a <- data.frame(c1=c(1,2,3),c2=c(T,F,T),c3=rnorm(3))
a

a <- as.data.frame(list(c1=c(1,2,3),c2=c(T,F,T),c3=rnorm(3)))
a
class(a)

c1=c(1,2,3)
c2=c(T,F,T)
c3=rnorm(3)
a <- as.data.frame(cbind(c1,c2,c3))
a
class(a)


## Datasets packages
head(cars)
tail(cars, n=2L)
str(cars)
class(cars)
dim(cars)
names(cars)
cars[1:3,2]
cars[c(1,2,3),"dist"]
cars$dist[1:3]
class(cars$dist)
sapply(cars,class)
for (i in 1:dim(cars)[2]) { print(c(names(cars[i]), class(cars[,i]))) }
summary(cars)
plot(cars)


## Arrays in R
a <- array(1:18, dim=c(3,3,2))
a

a <- array(1:18, dim=c(3,3,2))
a[,,1]
a[1,,]


## Factors in R
set.seed(1234)
a <- factor(sample(c("A","B","C"),size=10,replace=TRUE))
a
class(a)
levels(a)

set.seed(1234)
a <- factor(sample(c("A","B","C"),size=10,replace=TRUE), labels=c("Lab A", "Lab B", "Lab C"))
levels(a)
nlevels(a)

set.seed(1234)
a <- factor(sample(c("A","B","C"),size=10,replace=TRUE))
table(a)
prop.table(table(a))

a <- factor(c("M","M","M"),levels=c("M","F"),labels=c("Male","Female"))
table(a)

a <- factor(c("F","F","M"),levels=c("M","F"),labels=c("Male","Female"),ordered=TRUE)
class(a)
table(a)

set.seed(1234)
x <- rnorm(10000)
factor.x <- cut(x,breaks=quantile(x,probs=seq(0,1,0.25)),include.lowest=TRUE)
table(factor.x)
prop.table(table(factor.x))


## Dates in R
datetime.today <- Sys.time()
datetime.today
class(datetime.today)

date.today <- Sys.Date()
date.today

strftime(date.today, "%B")
strftime(date.today, "%D")
strftime(date.today, "%Y")
weekdays(date.today)







#####################
## Module 3 Code
#####################

## If statements (conditional logic)
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

curve(expr=(x^2 + 4*x + 5), from=-9, to=5)


## ifelse
set.seed(1234)
a <- rnorm(10)
round(a,digits=2)
table(factor(ifelse(a < -0.5, 0, ifelse(a < 0, 1, 2)),level=c(0,1,2)))
table(cut(a,breaks=c(min(a),-0.5,0,max(a)),include.lowest=TRUE))


## for loops
Fibonacci <- numeric(11)
Fibonacci[1] <- 1
Fibonacci[2] <- 1
for (i in 3:12) {
  Fibonacci[i] <- Fibonacci[i-2] + Fibonacci[i-1]
}
show(Fibonacci)


## For loop 
x.list <- seq(1,7,by=2)
sum.x <- 0
for (x in x.list) {
  sum.x <- sum.x + x
  cat("The current value of the loop is", x, sep="\n")
  cat("The current value of the cumulative sum is", sum.x, sep="\n")  
}


## While loop
F <- c(1,1)
n <- 2
while (F[n] <= 100) {
  cat("n = ", n, " F[n] =", F[n], "\n")
  n <- n +1
  F[n] <- F[n-1] + F[n-2]
}

## While loop
x <- x0 <- 3
f <- x^3 + 2*x^2 - 7
tol <- 0.00001
while(abs(f) > tol) {
  f.prime <- 3*x^2 + 4*x
  x <- x - (f/f.prime)
  f <- x^3 + 2*x^2 - 7
}
show(x) 

curve(expr=(x^3 + 3*x^2 - 7), from=-9, to=5)
abline(v=x,col="red")


## apply family
suppressPackageStartupMessages(library(datasets))
apply(cars,2,class)
apply(cars,2,mean)

sapply(cars,mean)
lapply(cars,mean)

tapply(cars$speed,ifelse(cars$dist>20,0,1),mean)
by(cars$speed,ifelse(cars$dist>20,0,1),mean)
aggregate(cars$speed,list(ifelse(cars$dist>20,0,1)),mean)



#####################
## Module 4 Code
#####################

## sd function
sd

formals(sd)
body(sd)
environment(sd)

body(var)


## hello world
hello.world <- function(){
  paste(c("Hello World"))
}
hello.world()

hello.world <- function(){paste(c("Hello World"))}
formals(hello.world)
body(hello.world)
environment(hello.world)


## Factorial
fact.func <- function(n) {
  return(prod(1:n))
}
fact.func(5)
factorial(5)


## mean function 
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

my.mean(0:10)
mean(0:10)


## Plot function
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



#####################
## Module 5 Code
#####################

## state names
suppressPackageStartupMessages(library(datasets))
state.name
length(state.name)
table(nchar(state.name))
head(toupper(state.name),n=3)
head(tolower(state.name),n=3)

## string function
upper.state.name <- toupper(state.name)
first.letter <- substr(upper.state.name,1,1)
rest.letters <- character(length(upper.state.name))
for (i in 1:length(upper.state.name)) {
  rest.letters[i] <- tolower(substr(upper.state.name[i],2,nchar(upper.state.name[i])))
}
state.name.again <- paste0(first.letter,rest.letters)
head(state.name.again,n=3)


## paste
paste(1:5, LETTERS[1:5])
paste(1:5, LETTERS[1:5], sep="-")
paste(1:5, LETTERS[1:5], sep="&")

a <- c("cat","god","dog")
paste(a, collapse=" ")
paste(a, collapse=" & ")

## pattern matching grep
state.a <- grep(pattern="[aA]",state.name)
state.name[state.a]
length(state.a)/length(state.name)

state.wheel <- grep(pattern="[rRsStTlLnNeE]",state.name)
state.name[state.wheel]

## pattern manipulation gsub
phones <- c("416-967-1111","674-5551212", "4169941234")
phones1 <- gsub(pattern="-",replacement="",phones)
phones
phones1


## REGEX
a <- c("cat", "99cat", "99Z", "9Z9")
grep(pattern="[0-9][0-9][a-zA-Z]+",a)
grepl(pattern="[0-9][0-9][a-zA-Z]+",a)

a <- c("cat", "99cat", "99Z", "9Z9")
grep(pattern="[0-9][0-9][a-zA-Z]+",a, value=TRUE)
a[grep(pattern="[0-9][0-9][a-zA-Z]+",a)]
a[which(grepl(pattern="[0-9][0-9][a-zA-Z]+",a))]

a <-  c("99cat", "99Z")
regexpr(pattern="[0-9][0-9][a-zA-Z]+",a)
b <- c("99cat 99cat", "99Z")
regexpr(pattern="[0-9][0-9][a-zA-Z]+",b)

b <- c("99cat 99CAT", "67a")
bval <- gregexpr(pattern="[0-9][0-9][a-zA-Z]+",b)
bval

b <- c("99cat 99CAT")
bval <- gregexpr(pattern="[0-9][0-9][a-zA-Z]+",b)
for (i in 1:length(bval[[1]])){
  cat(paste0("Match", " ", i, ":"), substr(b,bval[[1]][i],bval[[1]][i] + attr(bval[[1]],"match.length")[i] - 1), sep="\n")
}

a <- c("This is an intro to R workshop. I hope ur learning lots!")
strsplit(a,split="")
strsplit(a,split=" ")

a <- c("This is an intro to R workshop. I hope ur learning lots!")
strsplit(a,split="[ .!]")


#####################
## Module 6 Code
#####################

## Indexing/filtering
a <- 1:10
## Extract elements greater than 5
a[a>5]
## Extract elements 3,6,9
a[seq(from=3,to=9,by=3)]
## Extract elements divisible by 4
a[a!=4]

## comparison operators
a <- rep(1L,5)
b <- 1:5
a == b
a >= b
identical(a,a)
all.equal(a,b)


## Data manipulation
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


## Set theory
a <- c("A","B","C")
b <- c("C","D","E")
intersect(a,b)
union(a,b)
setdiff(a,b)
setequal(a,b)

xor(0,0)
xor(1,0)
xor(-1,9)
xor(c(TRUE,FALSE,TRUE,FALSE),c(TRUE,TRUE,FALSE,FALSE))


## data manipulation
set.seed(12345)
df <- data.frame(X=c(1:5),Y=c(LETTERS[1:5]),Z=rnorm(5))
df1 <- df[df$X %in% c(1,3),]
df2 <- df[df$X==1 & df$Y=="A",]
df3 <- df[df$X==1 | df$Z > 0,]
df4 <- df[(df$X==1 & df$Z>0) | (df$Z<0),]

a <- c(1,2,2,3.5,4,5.8,6)
sort(a)
rank(a)
duplicated(a)
unique(a)

set.seed(12345)
df <- data.frame(X=c(1,2,1,2,1),Y=c(2,7,3,6,5),Z=rnorm(5))
df[order(-df[,"X"],df[,"Y"]),]
df[with(df, order(-X,Y)),]

set.seed(12345)
a <- data.frame(ID=c(1:5),Za=rnorm(5))
b <- data.frame(ID=c(5:1),Zb=rnorm(5))
ab <- merge(x=a,y=b,by.x="ID",by.y="ID")
ab

a <- as.data.frame(matrix(1:9,ncol=3))
t(stack(a))

df <- data.frame(X=c(1,2,1,2,1),Z=rnorm(5))
split(df$Z,df$X)
lapply(split(df$Z,df$X),mean)






#####################
## Module 7 Code
#####################

## Summarization
summary(iris[,-5])

iris.setosa <- iris[iris$Species=="setosa",-5]
iris.versicolor <- iris[iris$Species=="versicolor",-5]
iris.virginica <- iris[iris$Species=="virginica",-5]
mean.setosa <- colMeans(iris.setosa)
mean.versicolor <- colMeans(iris.versicolor)
mean.virginica <- colMeans(iris.virginica)
mean.iris <- rbind(mean.setosa,mean.versicolor,mean.virginica)
rownames(mean.iris) <- c("setosa","versicolor","virginica")
mean.iris


mean.iris.loop <- NULL
for (species in unique(iris$Species)) {
  iris.sub <- iris[iris$Species==species,]
  mean.iris.sub <- colMeans(iris.sub[,-5])
  mean.iris.loop <- rbind(mean.iris.loop,mean.iris.sub)
}
rownames(mean.iris.loop) <- c("setosa","versicolor","virginica")
mean.iris.loop


install.packages(plyr,quiet=TRUE)
suppressPackageStartupMessages(library(plyr))
ddply(iris,~Species,function(x) colMeans(x[,-which(colnames(x)=="Species")]))


suppressPackageStartupMessages(library(plyr))
suppressPackageStartupMessages(library(mlmRev))
ddply(Exam,.(sex,type),summarise,mean.exam=mean(normexam,na.rm=TRUE))


suppressPackageStartupMessages(library(plyr))
suppressPackageStartupMessages(library(mlmRev))
dlply(Exam,.(sex),summarise,sixnumsum=summary(normexam))[[1]]


suppressPackageStartupMessages(library(mlmRev))
chris.summary <- function(x){
  mean.x <- mean(x,na.rm=TRUE)
  sd.x <- sd(x, na.rm=TRUE)
  summary.data <- data.frame(mean.x=mean.x,sd.x=sd.x)
  return(summary.data)
}
daply(Exam,.(sex),summarise,chris.summary(normexam))


## Reshaping data
df.long <- data.frame(id=c(1,1,2,2),term=c(1,2,1,2),math=c(50,60,40,80),english=c(50,60,30,90))
df.long

suppressPackageStartupMessages(library(reshape2))
df.long <- data.frame(id=c(1,1,2,2),term=c(1,2,1,2),math=c(50,60,40,80),english=c(50,60,30,90))
melt(df.long,id.vars=c("id","term"),measured=c("math","english"))


suppressPackageStartupMessages(library(reshape2))
df.long <- data.frame(id=c(1,1,2,2),term=c(1,2,1,2),math=c(50,60,40,80),english=c(50,60,30,90))
melt.df.long <- melt(df.long,id.vars=c("id","term"),measured=c("math","english"))
melt.df.wide <- dcast(melt.df.long,id ~ ...)
melt.df.wide


suppressPackageStartupMessages(library(reshape2))
df.long <- data.frame(id=c(1,1,2,2),term=c(1,2,1,2),math=c(50,60,40,80),english=c(50,60,30,90))
melt.df.long <- melt(df.long,id.vars=c("id","term"),measured=c("math","english"))
df.wide <- dcast(melt.df.long,id ~ ...)
melt.df.wide <- melt(df.wide,id.vars=c("id"),measured=c("1_math","2_math","1_english","2_english"))
melt.df.wide$term <- ifelse(substr(melt.df.wide$variable,1,1)=="1",1,2)
melt.df.wide$variable <- gsub(pattern="[1-2_]",replacement="",x=as.character(melt.df.wide$variable))
back.to.long <- dcast(melt.df.wide,id + term ~ ...)
back.to.long







#####################
## Module 8 Code
#####################

## Random Numbers
set.seed(12345)
X <- rexp(10000,rate=0.5)
mean(X)
var(X)


par(mfrow=c(2,2))
hist(rexp(10,rate=2))
hist(rexp(100,rate=2))
hist(rexp(1000,rate=2))
hist(rexp(10000,rate=2))
par(mfrow=c(1,1))


set.seed(12345)
X <- rexp(10000,rate=0.5)
hplot <- hist(X, xlab="Support", ylab="Frequency", main="Histogram Example", xlim=c(0,10))
Xfit <- seq(min(X),max(X),length=100)
Yfit <- dexp(Xfit, rate=mean(X))
Yfit1 <- Yfit*diff(hplot$mids[1:2])*length(X) 
lines(Xfit,Yfit1,col="red",lwd=3)


## Compare t-test and wilcoxon
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


## Sampling
set.seed(4567)
ID <- paste0(LETTERS[1:10],1:10)
trt <- sample(ID,5,replace=FALSE)
con <- setdiff(ID,trt)
trt
con


set.seed(13579)
allocate <- rbinom(10,1,0.5)
allocate





#####################
## Module 9 Code
#####################

## read.table (and variants)
X <- read.table("/Users/chris/Documents/Rlecture/DataExamples/VAlung.txt",header=TRUE,sep="\t")
dim(X)
head(X, n=2)

X <- read.csv("/Users/chris/Documents/Rlecture/DataExamples/VAlung.csv",header=TRUE)
head(X, n=2)
X <- read.table("/Users/chris/Documents/Rlecture/DataExamples/VAlung.csv",header=TRUE, sep=",")
head(X, n=2)


## XLConnect
suppressPackageStartupMessages(library(XLConnect))
## .xls file extension
X <- loadWorkbook("/Users/chris/Documents/Rlecture/DataExamples/VAlung.xls")
Y <- readWorksheet(X, sheet = "VAlung", header = TRUE)
head(Y,n=1)
## .xlsx file extension
A <- loadWorkbook("/Users/chris/Documents/Rlecture/DataExamples/VAlung.xlsx")
B <- readWorksheet(A, sheet = "VAlung", header = TRUE)
head(B,n=1)


## xlsx
suppressPackageStartupMessages(library(xlsx))
## .xlsx file extension
A <- read.xlsx("/Users/chris/Documents/Rlecture/DataExamples/VAlung.xlsx", sheetName="VAlung")
head(A,n=1)


## foreign
suppressPackageStartupMessages(library(foreign))
stata <- read.dta("/Users/chris/Documents/Rlecture/DataExamples/VAlung.dta")
head(stata, n=1)

suppressPackageStartupMessages(library(foreign))
spss <- read.spss("/Users/chris/Documents/Rlecture/DataExamples/valung.sav",to.data.frame=TRUE)
head(spss, n=1)


## write.csv
suppressPackageStartupMessages(library(datasets))
head(cars,2)
write.csv(x=cars, file="/Users/chris/Documents/Rlecture/DataExamples/cars.csv", row.names=FALSE)


## url
valungurl <- url("http://biostat.mc.vanderbilt.edu/wiki/pub/Main/DataSets/valung.csv")
X <- read.csv(valungurl,header=TRUE)
head(X,n=2)




#####################
## Module 10 Code
#####################

## Pie
set.seed(123)
a <- sample(LETTERS[1:3],10,replace=TRUE)
table(a)
pie(table(a))

## Barplot
suppressPackageStartupMessages(library(datasets))
VADeaths

barplot(VADeaths,beside=TRUE,col=rainbow(5),ylab="Death Rate",xlab="Population Sub-Group",ylim=c(0,100),cex.names=0.7)
legend("topright",legend=c("50-54","55-59","60-64","65-69","70-74"),col=rainbow(5),fill=rainbow(5),bty="n")

suppressPackageStartupMessages(library(lattice))
suppressPackageStartupMessages(library(reshape2))
aa <- melt(VADeaths,id.vars=colnames(VADeaths),value.name="Death.Rate")
barchart(Death.Rate ~ Var2, group=Var1, data=aa, ylim=c(0,100), ylab="Death Rate", xlab="Population Sub-Group", auto.key=TRUE)

suppressPackageStartupMessages(library(ggplot2))
ggplot(aa, aes(x=Var2,y=Death.Rate,fill=Var1)) + geom_bar(position=position_dodge(),colour="black",stat="identity")  + xlab("Population Sub-Groups") + ylab("Death Rate") + scale_y_continuous(limits=c(0,100),expand = c(0,0)) + theme_bw()


## Dotcharts
dotchart(VADeaths, xlab="Death Rate")

dotplot(Var1~Death.Rate|Var2,data=aa,layout=c(1,5),xlab="Death Rate",ylab="Population Sub-Group")

ggplot(aa, aes(x=Death.Rate,y=Var1)) + geom_point(size=2) + facet_grid(Var2~.)


## Histogram
set.seed(1234)
a <- data.frame(a=rnorm(1000))
hist(a$a,xlab="Support",main="Histogram of Normal RVs",xlim=c(-4,4),ylim=c(0,250))

histogram(~a,data=a,xlab="Support",main="Histogram of Normal RVs",xlim=c(-4,4),ylim=c(0,250),type="count",col="white",breaks=15)

ggplot(a, aes(x=a)) + geom_histogram(binwidth=0.5,, colour="black", fill="white") + theme_bw() + xlab("Support")


## Density Curves
plot(density(a$a),type="l",col="red",lwd=2,xlab="Support",main="KDE Normal RVs")

densityplot(~a,data=a,xlab="Support",main="KDE Normal RVs",col="red",lwd=2,plot.points="rug")

ggplot(a, aes(x=a)) + geom_line(stat="density", colour="red", lwd=2, lty=2) + theme_bw() + xlab("Support")


## Box plots
boxplot(a$a,ylab="Support")

a$f <- factor(rep(1,length(a$a)))
bwplot(a~f,data=a,ylab="Support",xlab="",label=c(""))

ggplot(a,aes(y=a, x=f)) + geom_boxplot()


## Scatter plot
suppressPackageStartupMessages(library(MASS))
a <- mvrnorm(100,mu=c(0,0),Sigma=matrix(c(1,0.85,0.85,1),ncol=2))
a <- as.data.frame(a)
names(a) <- c("x","y")
plot(a,main="X-Y Scatter plot MVN data",xlim=c(-3,3),ylim=c(-3,3))

xyplot(y~x,data=a,main="X-Y Scatter plot MVN data",xlim=c(-3,3),ylim=c(-3,3))

ggplot(a, aes(x=x,y=y)) + geom_point()


## 2D Density Estimator
twoD <- with(a,MASS:::kde2d(x,y))
filled.contour(twoD)

a <- as.data.frame(cbind(expand.grid(twoD$x,twoD$y),c(twoD$z)))
names(a) <- c("x","y","z")
contourplot(z~x*y,data=a,cut=20,region=TRUE,xlab="X",ylab="Y",main="2D KDE of MVN data")

ggplot(a, aes(x=x,y=y)) + geom_contour(aes(z=z),data=a)


## Time Series Line Graphs
suppressPackageStartupMessages(library(datasets))
class(AirPassengers)
plot(AirPassengers)

ap <- melt(AirPassengers)
apd <- seq.Date(from=as.Date("1949/1/1"),by="month",length.out=144)
air <- data.frame(ap=ap,apd=apd)
xyplot(value~apd,data=air,type="l")

ggplot(air, aes(x=apd,y=value)) + geom_line()


## Longitudinal Plots
suppressPackageStartupMessages(library(datasets))
with(Loblolly, interaction.plot(x.factor=age,trace.factor=Seed,response=height))

xyplot(height~age, data=Loblolly, group=Seed,type="l")

ggplot(Loblolly, aes(y=height,x=age,group=Seed)) + geom_line()


## Plotting Math Functions
curve(factorial(x-1),from=1,to=50,n=50,log="y")

a <- data.frame(x=1:50,y=factorial(1:50))
xyplot(y~x,data=a,type="l",scales=list(y=list(log="e")))

ggplot(a, aes(x=x,y=y)) + geom_line() + scale_y_log10()


## Scatter Plot Matrices
suppressPackageStartupMessages(library(faraway))
plot(ozone[,1:9])
pairs(ozone[,1:9])

suppressPackageStartupMessages(library(lattice))
splom(ozone[1:9])


## Plotting Correlation Matrices
cormat <- cor(scale(ozone[,1:9]))
round(cormat,digits=2)
suppressPackageStartupMessages(library(corrplot))
corrplot(cormat)


## Maps
suppressPackageStartupMessages(library(maps))
suppressPackageStartupMessages(library(mapproj))
states_map <- map_data("state")
ggplot(states_map, aes(x=long,y=lat,group=group)) + geom_path() + coord_map("mercator") + theme_bw()


crimes <- data.frame(state=tolower(rownames(USArrests)),USArrests)
crime_map <- merge(states_map,crimes,by.x="region",by.y="state")
ggplot(crimes, aes(map_id=state,fill=Assault)) + geom_map(map=states_map, colour="black") + scale_fill_gradient2(low ="#559999", mid="grey90", high="#BB650B", midpoint=median(crimes$Assault)) + expand_limits(x=states_map$long, y=states_map$lat) + coord_map("polyconic") + theme_bw()




#####################
## Module 11 Code
#####################

## Summary/Descriptive stats
suppressPackageStartupMessages(library(survival))
dim(pbc)
sum(is.na(pbc$bili))
with(pbc,mean(bili))
with(pbc,median(bili))
sd(pbc$bili)
var(pbc$bili)
quantile(pbc$bili,probs=seq(0.05,0.95,0.10))
min(pbc$bili)
max(pbc$bili)
range(pbc$bili)

boxplot(pbc$bili, ylim=c(0,30), ylab="Bilirubin Levels", main="Boxplot of Bilirubin Levels")
hist(pbc$bili, xlab="Bilirubin Levels", main="Histogram of bilirubin levels", ylim=c(0,300),breaks=seq(0,30,2.5))
plot(density(pbc$bili,from=0,to=max(pbc$bili)), xlab="Bilirubin Levels", ylab="Density", main="KDE of Bilirubin Levels",ylim=c(0,0.4))

with(pbc,table(ascites))
table(pbc$stage)

with(pbc,table(ascites,stage))
prop.table(table(pbc$ascites,pbc$stage),margin=1)


## Epi measures associations
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


## Correlation
plot(pbc$bili, pbc$copper, xlim=c(0,30),ylim=c(0,600),xlab="Bilirubin",ylab="Copper",main="Bivariate Relationship Between Bilirubin and Copper")

cor(pbc$bili, pbc$copper, use="pairwise", method="k")
cor(pbc$bili, pbc$copper, use="pairwise", method="s")
cor(pbc$bili, pbc$copper, use="pairwise", method="p")








#####################
## Module 12 Code
#####################

## Point estimation (Poisson MLE)
set.seed(990099)
x <- rpois(100,5)

pmll <- function(lambda, x) {
  sumx <- sum(x)
  sum_log_xfact <- sum(log(factorial(x)))
  n <- length(x)
  pmll <- n*lambda - sumx*log(lambda) + sum_log_xfact
  pmll
}

mom_lambda <- mean(x)
min_lambda <- nlm(pmll, mom_lambda, hessian=TRUE, x=x)

sumx <- sum(x)
sum_log_xfact <- sum(log(factorial(x)))
n <- length(x)
lambda <- seq(from=0, to=10, by=0.1)
ll_surf <- n*lambda - sumx*log(lambda) + sum_log_xfact

plot(lambda,ll_surf, type="b", xlab="Lambda", ylab="Minus Log Likelihood", main="Plot of Minus Log Likelihood Surface as a Function of Lambda")
abline(v=min_lambda$estimate, col="red")



## Single proportion
suppressPackageStartupMessages(library(survival))
prop.test(table(pbc$status1),p=0.50,correct=FALSE)
chisq.test(table(pbc$status1))
binom.test(x=sum(pbc$status1),n=length(pbc$status1),p=0.5)


## Single mean
t.test(pbc$bili,mu=5,paired=FALSE,conf.level=0.90)
wilcox.test(pbc$bili,mu=5,paired=FALSE,conf.int=TRUE,conf.level=0.90)


## Contingency tables
prop.table(table(pbc$sex,pbc$status1),margin=1)
chisq.test(table(pbc$sex,pbc$status1))
fisher.test(table(pbc$sex,pbc$status1))


## Two means (location parms)
t.test(pbc$bili~pbc$sex)
wilcox.test(pbc$bili~pbc$sex,conf.int=TRUE,conf.level=0.95)

boxplot(pbc$bili~pbc$sex,xlab="Gender",ylab="Bilirubin Levels",ylim=c(0,30))
plot(density(pbc$bili[pbc$sex=="m"],from=0),type="l",col="black",ylab="Density",xlab="Bilirubin Levels",xlim=c(0,30),ylim=c(0,0.40),main="")
lines(density(pbc$bili[pbc$sex=="f"],from=0),type="l",col="red")

by(pbc$bili,pbc$sex,summary)


## R*C tables
prop.table(table(pbc$status1,pbc$stage),margin=1)
chisq.test(table(pbc$status1,pbc$stage))
fisher.test(table(pbc$status1,pbc$stage))
prop.trend.test(table(pbc$status1,pbc$stage)[1,],table(pbc$stage))


## ANOVA (and KW test)
by(pbc$bili,pbc$edema,summary)
oneway.test(pbc$bili~pbc$edema)
kruskal.test(pbc$bili~pbc$edema)


## Correlation coefficient
set.seed(54673)
x <- rnorm(5)
y <- rnorm(5)
cor.test(x,y)





#####################
## Module 13 Code
#####################

## Linear regression
suppressPackageStartupMessages(library(faraway))
dim(ozone)
names(ozone)
summary(ozone,digits=2)
round(cor(ozone),digits=2)
plot(ozone)

o3mod <- lm(O3 ~ vh + temp + ibh + ibt,data=ozone)
class(o3mod)
print(o3mod)
summary(o3mod)

par(mfrow=c(2,2))
plot(o3mod)
par(mfrow=c(1,1))

hist(resid(o3mod),xlab="Residuals",xlim=c(floor(min(resid(o3mod))-2),ceiling(max(resid(o3mod))+2)),ylim=c(0,70),main="")

coef(o3mod)
confint(o3mod)

## Stepwise linear regression
step.o3mod <- stepAIC(lm(O3~vh+wind+humidity+temp+ibh+dpg+ibt+vis+doy,data=ozone))

## Linear prediction
set.seed(13579)
newdat <- data.frame(vh=sample(ozone$vh,3),temp=sample(ozone$temp,3),ibh=sample(ozone$ibh,3),ibt=sample(ozone$ibt,3))
newdat
predict(o3mod,newdat,interval="prediction")



## Logistic regression
infert1 <- infert[,1:6]
infert1$induced <- factor(infert1$induced)
infert1$spontaneous <- factor(infert1$spontaneous)
infert1$case <- factor(infert1$case)
dim(infert1)

summary(infert1, digits=2)

## Lots of bivariate logistic models
m1 <- glm(case~education,data=infert1,family=binomial(link=logit))
m2 <- glm(case~age,data=infert1,family=binomial(link=logit))
m3 <- glm(case~parity,data=infert1,family=binomial(link=logit))
m4 <- glm(case~induced,data=infert1,family=binomial(link=logit))
m5 <- glm(case~spontaneous,data=infert1,family=binomial(link=logit))

## LRT for two nested GLM's
logit.mod <- glm(case~parity+spontaneous+induced+age,data=infert1, family=binomial(link=logit))
logit.mod1 <- update(logit.mod, . ~ . -age)
anova(logit.mod,logit.mod1)

summary(logit.mod1)

exp(coef(logit.mod1)[-1])
exp(confint(logit.mod1)[-1,])



## Poisson regression
suppressPackageStartupMessages(library(datasets))
dim(warpbreaks)

suppressPackageStartupMessages(library(plyr))
ddply(warpbreaks, .(wool, tension), summarize, mean=mean(breaks), var=var(breaks))

interaction.plot(warpbreaks$tension,warpbreaks$wool,warpbreaks$breaks,fun=mean,type="l", xlab="Tension",ylab="Mean Number Breaks",legend=FALSE)
legend("topright",c("A","B"),lty=c(2,1),bty="n")

## some models
mod.int <- glm(breaks~wool+tension+wool*tension,data=warpbreaks,family=poisson(link=log))
mod.noint <- glm(breaks~wool+tension,data=warpbreaks,family=poisson(link=log))
anova(mod.noint,mod.int)

## quasi poisson model and neg bin reg model
suppressPackageStartupMessages(library(MASS))
quasi.int <- glm(breaks~wool+tension+wool*tension,data=warpbreaks,family=quasipoisson(link=log))
nb.int <- glm.nb(breaks~wool+tension+wool*tension,data=warpbreaks)



## Cox PH models
suppressPackageStartupMessages(library(survival))
pbc1 <- pbc[pbc$status!=1,]

## KM curve
suppressPackageStartupMessages(library(rms))
survplot(npsurv(Surv(as.numeric(time)/365,status1==1) ~ 1, data=pbc), time.inc=2, type="kaplan-meier", conf="none", label=FALSE)
text(7,0.01,"Years Since Study Registration")

## cox model
coxmod.trt <- coxph(Surv(as.numeric(time),status1==1) ~ trt==2, data=pbc)
summary(coxmod.trt)

coxmod.trt <- coxph(Surv(as.numeric(time),status1==1) ~ trt==2, data=pbc)
exp(coef(coxmod.trt))
exp(confint(coxmod.trt))







