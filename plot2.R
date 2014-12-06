source("loadData.R")

data <- loadData()

Sys.setlocale("LC_TIME", "en_US.UTF-8")
png(filename = "Rplot2.png",
    width = 480, height = 480, units = "px", pointsize = 12)

with(data,
{
  plot(DateTime,
       as.numeric(Global_active_power),
       type="l",
       xlab="",
       ylab="Global active power (kilowats)")
})

dev.off();