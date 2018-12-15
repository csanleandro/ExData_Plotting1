library(lubridate)
library(dplyr)

#First: download data
zipF <- "electricity_data.zip"
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",destfile=zipF)
unzip(zipF,exdir=".")

#Read the data
my_data <- read.csv("household_power_consumption.txt",stringsAsFactors = FALSE,
                    sep=";",header=TRUE,na.strings="?") %>% 
  subset(Date %in% c("1/2/2007","2/2/2007"))

my_data$Date <- dmy(my_data$Date)
my_data$Time <- strptime(paste(as.character.Date(my_data$Date, format="%d/%m/%y"),my_data$Time), 
                         format="%d/%m/%y %H:%M:%S")

