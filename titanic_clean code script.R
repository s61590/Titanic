library(stringr)
library(readr)
library(dplyr)
library(tidyverse)
library(tidyr)
df<-read_csv("titanic_original.csv")

df<-mutate(df, embarked=if_else(is.na(embarked), "S", embarked))
mean(df$age, trim=0, na.rm=TRUE)
df<-mutate(df, age=if_else(is.na(age), 29.8, age))
df<-mutate(df, boat=if_else(is.na(boat), 'NA', boat))
df<-mutate(df, has_cabin_number = if_else(is.na(cabin), 0, 1))


