source('DataProcessor.R')
EPCData <- GetMyDataEPC()


png(filename = "plot4.png",width = 480, height = 480)
par(mfrow = c(2,2))
plot(EPCData$DateTime, EPCData$Global_active_power,type="l", xlab= "", ylab="Global Active Power")

plot(EPCData$DateTime, EPCData$Voltage,type="l", xlab= "datetime", ylab="Voltage")

plot(EPCData$DateTime,EPCData$Sub_metering_1, xlab="", ylab = "Energy sub metering", type="l", cex.axis=.7, cex.main=.7, cex.lab=.7)
lines(EPCData$DateTime, EPCData$Sub_metering_2, col="red")
lines(EPCData$DateTime, EPCData$Sub_metering_3, col="blue")
legend("topright", lty=1, col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), cex=.7, y.intersp=.7)

plot(EPCData$DateTime, EPCData$Global_reactive_power,type="l", xlab="datetime",ylab="Global ReActive Power ")
dev.off()