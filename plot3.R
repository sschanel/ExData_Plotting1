source("ExData_Plotting1/readTheData.R")

png(filename="ExData_Plotting1/plot3.png", width=480, height=480)
plot(household_power_consumption$DateTime, household_power_consumption$Sub_metering_1, type='l', xlab='', ylab='Energy sub metering')
lines(household_power_consumption$DateTime, household_power_consumption$Sub_metering_2, type='l', col='red')
lines(household_power_consumption$DateTime, household_power_consumption$Sub_metering_3, type='l', col='blue')
legend('topright', lty=1, col=c('black','red','blue'), legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
dev.off()