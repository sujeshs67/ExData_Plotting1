#This section loads the data
Sourcefile <- "household_power_consumption.txt"
data <- read.table(Sourcefile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
#This is to collect 2 days data for plot
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
#Plot
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("Plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()