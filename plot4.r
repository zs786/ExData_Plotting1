par(mfrow=c(2,2))
plot(required$SetTime, required$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power")
plot(required$SetTime, required$Voltage, type="l", col="black", xlab="datettime", ylab="Voltage")
columnlines <- c("black", "red", "blue")
labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plot(required$SetTime, required$Sub_metering_1, type="l", col=columnlines[1], xlab="", ylab="Energy sub metering")
lines(required$SetTime, required$Sub_metering_2, col=columnlines[2])
lines(required$SetTime, required$Sub_metering_3, col=columnlines[3])
legend("topright", legend=labels, col=columnlines, lty="solid")
plot(required$SetTime, required$Global_reactive_power, type="l", col="black", xlab="datettime", ylab="Global_Reactive_Power")
dev.copy(png, file="plot4.png", width=480, height=480)
dev.off