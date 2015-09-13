source("ExData_Plotting1/readTheData.R") # reads the data into household_power_consumption

# start a png file
png(filename="ExData_Plotting1/plot1.png", width=480, height=480)

# create histogram
with(household_power_consumption, hist(Global_active_power, col='red', xlab='Global Active Power (kilowatts)', main='Global Active Power'))

# close the device, creating the png file
dev.off()