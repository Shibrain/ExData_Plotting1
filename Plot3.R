source('DataProcessor.R')
EPCData <- GetMyDataEPC()

png(filename = "plot3.png",width = 480, height = 480)
plot(EPCData$DateTime,EPCData$Sub_metering_1, xlab="", ylab = "Energy sub metering", type="l", cex.axis=.7, cex.main=.7, cex.lab=.7)
lines(EPCData$DateTime, EPCData$Sub_metering_2, col="red")
lines(EPCData$DateTime, EPCData$Sub_metering_3, col="blue")
legend("topright", lty=1, col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), cex=.7, y.intersp=.7)
dev.off()


