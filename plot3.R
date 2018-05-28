setwd("C://EPC")
dataset <- read.table ("./household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", stringsAsFactors=F)
data <- dataset[dataset$Date %in% c("1/2/2007","2/2/2007"),]
png(filename="plot3.png", width=480, height=480, units="px")
plot(strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S"), data$Sub_metering_1, type="l", col="black", ylab="Energy sub metering", xlab="")
lines(strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S"),data$Sub_metering_2, type="l", col="red")
lines(strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S"), data$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2, col=c("black","red","blue"))
dev.off()
