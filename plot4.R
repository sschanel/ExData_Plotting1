source("ExData_Plotting1/readTheData.R") # reads the data into household_power_consumption

# start a png file
png(filename="ExData_Plotting1/plot4.png", width=480, height=480)

# 2 rows, 2 columns
par(mfrow=c(2,2))

# first plot datetime vs Global_active_power
plot(household_power_consumption$DateTime, household_power_consumption$Global_active_power, type='l', xlab='', ylab='Global Active Power')

# second plot datetime vs Voltags
plot(household_power_consumption$DateTime, household_power_consumption$Voltage, type='l', xlab='datetime', ylab='Voltage')

# third plot datetime vs all sub_metering
plot(household_power_consumption$DateTime, household_power_consumption$Sub_metering_1, type='l', xlab='', ylab='Energy sub metering')
lines(household_power_consumption$DateTime, household_power_consumption$Sub_metering_2, type='l', col='red')
lines(household_power_consumption$DateTime, household_power_consumption$Sub_metering_3, type='l', col='blue')

# with a legend
legend('topright', lty=1, bty='n', col=c('black','red','blue'), legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))

# fourth plot datetime vs Global_reactive_power
plot(household_power_consumption$DateTime, household_power_consumption$Global_reactive_power, type='l', xlab='datetime', ylab='Global_reactive_power')

# close the device, creating the png file
dev.off()