source("loadData.R")

data <- loadData()

png(filename = "Rplot1.png",
    width = 480, height = 480, units = "px", pointsize = 12)

with(data,
{
  hist(Global_active_power,
       col=c("red"),
       xlab="Global active power (kilowats)",
       main="Global active power")
})

dev.off();