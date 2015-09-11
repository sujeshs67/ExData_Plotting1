#This section loads the data
Sourcefile <- "household_power_consumption.txt"
data <- read.table(Sourcefile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
#This is to collect 2 days data for plot
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
#str(subSetData)
#Plot 1
GlobalActivePower <- as.numeric(subSetData$Global_active_power)
png("Plot1.png", width=480, height=480)
hist(GlobalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()