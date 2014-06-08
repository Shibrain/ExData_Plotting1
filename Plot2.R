source('DataProcessor.R')
EPCData <- GetMyDataEPC()

png(filename = "plot2.png",width = 480, height = 480)
plot(EPCData$DateTime, EPCData$Global_active_power,type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
