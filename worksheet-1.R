## The Editor

vals <- seq(1,50)

vals <- seq(from = 1,
            to = 50)

## Vectors

counts <- c( 2, 6, 4, 6)

## Exercise 2

...

## Factors

education <- factor(c("college", "highschool", "college", "middle"),
                 levels = c("middle", "highschool", "college"))

education <- factor(
  c("college", "highschool", "college", "middle"),
  levels = c("middle", "highschool", "college"),
  ordered = TRUE)

## Data Frames

df <- data.frame(education, counts)

## Exercise 3

species <- c("polystichum", "asplenium", "octarine")
abund <- c( 100, 90, 75)
data <- data.frame(species, abund)

## Load data into R

plots <- read.csv('data/plots.csv')


## Exercise 4

animals <- read.csv('data/animals.csv', stringsAsFactors = FALSE, na.strings = '')
animals$sex <- factor(animals$sex)

## Names

names(df) <- c("ed", "ct")

## Subsetting ranges

days <- c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday")
weekdays <- days[2:6]
weekends <- days[c(1,7)]
days[-4]
...

## Exercise 5
?seq
weekdays <- days[c(-1,-7)]
mWF <- days[seq(from = 2, to = 6, by = 2)]

## Exercise 6
education <- factor(
  c("college", "highschool", "college", "middle"),
  levels = c("middle", "highschool", "college"),
  ordered = TRUE)
counts <- c(4, 3, 7, 5)
df <- data.frame(education, counts)
names(df) <- c('ed', 'ct')
df[3, 'ed']
df[c(-1,-4), "ed"]


## Base plotting

plot(animals$hindfoot_length, animals$weight)

## Histograms

hist(animals$weight)

## Boxplots

boxplot(log(weight)~year, data = animals)

## Anatomy of a function

first <- function(dat) {
  result <- dat[1,]
  return(result)
}
first(df)
first(counts)
## Flow control

if (...) {
    ...
} else {
    ...
}

first <- function(dat) {
    if (is.vector(dat)) {
        result <- dat[1]
    } else {
        result <- dat[1,1 ]
    }
  return(result)
}

first(df)
first(counts)
## Exercise 7

first <- function(dat) {
  if (is.vector(dat)) {
    result <- dat[1]
  } else if(is.matrix(dat)) {
    result <- dat[1,1]
  } else {
    result <- dat[1, ]
  }
  return(result)
}


## Distributions and statistics

samp <- ...


x <- rnorm(..., mean = .., sd = ...)
y <- r...(n = 100, size = 50, ...)

fit <- ...

## Exercise 8

...

