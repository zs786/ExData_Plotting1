household <- read.table("C:\\Users\\hanane\\Desktop\\R files\\household_power_consumption.txt", header = TRUE, sep = ";")
required <- subset(household, as.Date(household$Date, format= "%d/%m/%Y") > "2007-01-31" & as.Date(household$Date, format = "%d/%m/%Y") < '2007-02-03')
SetTime <-strptime(paste(required$Date, required$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
required <- cbind(SetTime, required)