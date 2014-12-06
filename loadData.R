loadData <- function() {
#  data <- read.csv2(gzfile("extract_household_power_consumption.csv.gz"),colClasses=rep("character",9))

  library(sqldf)
  extract <- read.csv2.sql(unzip("exdata%2Fdata%2Fhousehold_power_consumption.zip",
                                 "household_power_consumption.txt"),
                           sql="select * from file where Date like '%/2/2007'")
  data <- extract[ (extract$Date=='1/2/2007') | (extract$Date=='2/2/2007') , ]
  
  data$DateTime <- strptime(paste(data$Date,' ',data$Time), format="%d/%m/%Y %H:%M:%S")  
    
  return(data)
}
