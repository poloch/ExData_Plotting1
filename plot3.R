source("loadData.R")

data <- loadData()

Sys.setlocale("LC_TIME", "en_US.UTF-8")
png(filename = "Rplot3.png",
    width = 480, height = 480, units = "px", pointsize = 12)

with(data,
{
  plot(DateTime,
       as.numeric(Sub_metering_1),
       type="l",
       xlab="",
       ylab="Energy sub metering (kilowats)")
  lines(DateTime, as.numeric(Sub_metering_2), col="red")
  lines(DateTime, as.numeric(Sub_metering_3), col="blue")
  legend("topright",
         lty=1,
         col = c("black","red","blue"), 
         legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_1"))
})

dev.off();