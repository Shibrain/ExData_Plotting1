source('DataProcessor.R')
EPCDate <- GetMyDataEPC()

png(filename = "plot1.png",width = 480, height = 480)
hist(EPCData$Global_active_power,main="Global Active Power",col="red",xlab="Global Active Power (kilowatts)")
dev.off()


