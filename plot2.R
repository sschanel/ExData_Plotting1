source("ExData_Plotting1/readTheData.R") # reads the data into household_power_consumption

# start a png file
png(filename="ExData_Plotting1/plot2.png", width=480, height=480)

# plot datetime vs global_active_power
plot(household_power_consumption$DateTime, household_power_consumption$Global_active_power, type='l', xlab='', ylab='Global Active Power (kilowatts)')

# close the device, creating the png file
dev.off()