hist(as.numeric(as.character(required$Global_active_power)), col = "red", xlab = "Global Active Power (Kilowatts)", main = ("Global Active Power"))
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()