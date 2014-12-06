loadData <- function() {
  data <- read.csv2(gzfile("extract_household_power_consumption.csv.gz"),colClasses=rep("character",9))
  data$DateTime <- strptime(paste(data$Date,' ',data$Time), format="%d/%m/%Y %H:%M:%S")  
    
  return(data)
}
