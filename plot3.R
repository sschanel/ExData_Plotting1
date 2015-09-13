source("ExData_Plotting1/readTheData.R") # reads the data into household_power_consumption

# start a png file
png(filename="ExData_Plotting1/plot3.png", width=480, height=480)

# plot datetime vs all sub_metering
plot(household_power_consumption$DateTime, household_power_consumption$Sub_metering_1, type='l', xlab='', ylab='Energy sub metering')
lines(household_power_consumption$DateTime, household_power_consumption$Sub_metering_2, type='l', col='red')
lines(household_power_consumption$DateTime, household_power_consumption$Sub_metering_3, type='l', col='blue')

# with a helpful legend
legend('topright', lty=1, col=c('black','red','blue'), legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))

# close the device, creating the png file
dev.off()