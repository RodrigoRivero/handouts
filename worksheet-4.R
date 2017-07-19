## Tidy data concept

counts_df <- data.frame(
  day = c("Monday", "Tuesday", "Wednesday"),
  wolf = c(2, 1, 3),
  hare = c(4, 4, 4),
  fox = c(4, 4, 4)
)

## Reshaping multiple columns in category/value pairs

library(tidyr)
counts_gather <- gather(counts_df,
                        key = "species",
                        value = "count",
                        wolf:fox)
counts_gather <- counts_gather[-8,]
counts_spread <- spread(counts_gather,
                        key = species,
                        value = count)

## Exercise 1

...

## Read comma-separated-value (CSV) files

animals <- read.csv('data/animals.csv' )
str(animals)

library(dplyr)
library(RPostgreSQL)

con <- dbConnect(PostgreSQL(), host = 'localhost', dbname = 'portal')
animals_db <- tbl(con, 'animals')
animals <- collect(animals_db)
dbDisconnect(con)

## Subsetting and sorting

library(dplyr)
animals_1990_winter <- filter(animals,
                              year == 1990,
                              month %in% 1:3)

animals_1990_winter <- select(animals_1990_winter, -year)

sorted <- arrange(animals_1990_winter,
              desc(species_id), weight)

## Exercise 2

...

## Grouping and aggregation

animals_1990_winter_gb <- group_by(...)

counts_1990_winter <- summarize(..., count = n())

## Exercise 3

dms <- filter( animals, species_id == "DM")
dms <- group_by(animals_dm, month)
sol3 <- summarize(dms, avg_wgt = mean(weight, na.rm = TRUE),
                  avg_hfl = mean(hindfoot_length, na.rm = TRUE))

## Pivot tables through aggregate and spread

animals_1990_winter_gb <- group_by(animals_1990_winter, ...)
counts_by_month <- ...(animals_1990_winter_gb, ...)
pivot <- ...

## Transformation of variables

prop_1990_winter <- mutate(...,
                           ...)

## Exercise 4

...

## Chainning with pipes

prop_1990_winter_piped <- animals %>%
  filter(year == 1990, month %in% 1:3)
  ... # select all columns but year
  ... # group by species_id
  ... # summarize with counts
  ... # mutate into proportions
