source("ExData_Plotting1/readTheData.R")

png(filename="ExData_Plotting1/plot1.png", width=480, height=480)
with(household_power_consumption, hist(Global_active_power, col='red', xlab='Global Active Power (kilowatts)', main='Global Active Power', breaks=12))
dev.off()