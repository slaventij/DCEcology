library(tidyverse)

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
levels(surveys$sex)[2] <- "female"
levels(surveys$sex)[3] <- "male"
plot(surveys$sex)
