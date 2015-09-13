source("ExData_Plotting1/readTheData.R")

png(filename="ExData_Plotting1/plot2.png", width=480, height=480)
plot(household_power_consumption$DateTime, household_power_consumption$Global_active_power, type='l', xlab='', ylab='Global Active Power (kilowatts)')
dev.off()