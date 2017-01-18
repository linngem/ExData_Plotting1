dataFile <- "C:\\Users\\RY50303\\Documents\\R\\Exploratory Data Analysis _COURSERA\\exdata-33758-extras\\datasets\\231\\data\\household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData2 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
# Convert dates and times
datetime <- strptime(paste(subSetData2$Date, subSetData2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData2$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
