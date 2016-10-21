columnlines <- c("black", "red", "blue")
labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plot(required$SetTime, required$Sub_metering_1, type="l", col=columnlines[1], xlab="", ylab="Energy sub metering")
lines(required$SetTime, required$Sub_metering_2, col=columnlines[2])
lines(required$SetTime, required$Sub_metering_3, col=columnlines[3])
legend("topright", legend=labels, col=columnlines, lty="solid")
dev.copy(png, file="plot3.png", width=480, height=480)
dev.off