source("loadData.R")

data <- loadData()

Sys.setlocale("LC_TIME", "en_US.UTF-8")
png(filename = "Rplot4.png",
    width = 480, height = 480, units = "px", pointsize = 12)

par(mfrow = c(2, 2))

with(data,
{
  plot(DateTime,
       as.numeric(Global_active_power),
       type="l",
       xlab="datetime",
       ylab="Global active power (kilowats)")
  plot(DateTime,
       as.numeric(Voltage),
       type="l",
       xlab="datetime",
       ylab="Voltage")
  plot(DateTime,
       as.numeric(Sub_metering_1),
       type="l",
       xlab="datetime",
       ylab="Energy sub metering (kilowats)")
  lines(DateTime, as.numeric(Sub_metering_2), col="red")
  lines(DateTime, as.numeric(Sub_metering_3), col="blue")
  legend("topright",
         lty=1,
         col = c("black","red","blue"), 
         legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_1"), bty="n")
  plot(DateTime,
       as.numeric(Global_reactive_power),
       type="l",
       xlab="datetime",
       ylab="Global reactive power")
})

dev.off();