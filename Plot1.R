data<- read.table("exdata-data-household_power_consumption/household_power_consumption.txt", sep=";", header = T, stringsAsFactors = FALSE, dec=".")

data<- subset(data, data$Date %in% c("1/2/2007","2/2/2007"))

data$Global_active_power<- as.numeric(data$Global_active_power)

png("Plot_1.png", width = 480, height = 480)
hist(data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col="red")

dev.off()

