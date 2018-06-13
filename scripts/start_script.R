library(tidyverse)
library(lubridate)
download.file("https://ndownloader.figshare.com/files/2292169", "data/portal_data_joined.csv")
surveys <- read.csv("data/portal_data_joined.csv")
str(surveys)
summary(surveys)
lvls <- factor(c("high", "medium", "low"), levels=c("low", "medium", "high"))
plot(surveys$sex)
plot(surveys$taxa)
sex <- surveys$sex
levels(surveys$sex)[1] <- "undetermined"
levels(surveys$sex)
levels(surveys$sex)[2:3] <- c("female","male")
surveys$sex <- factor(surveys$sex, levels=c( "female", "male","undetermined"))
plot(surveys$sex)
summary(surveys$sex)

### working with dates
my_date <- ymd("2015-01-01")
#or
my_date <- ymd(paste("2015","1","1", sep = "-"))
surveys$date <- ymd(paste(surveys$year, surveys$month, surveys$day, sep = "-"))
is_missing_date <- is.na(surveys$date)
date_columns <- c("year", "month", "day")
missing_dates <- surveys[is_missing_date, date_columns]
head(missing_dates)

