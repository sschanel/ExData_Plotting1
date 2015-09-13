# common file for reading the household_power_consumption data

if (!exists('household_power_consumption')) {
    household_power_consumption <- read.table('household_power_consumption.txt', header=T, sep=';', na.strings='?')
    household_power_consumption <- household_power_consumption[which(household_power_consumption$Date=='1/2/2007' | household_power_consumption$Date=='2/2/2007'),]
    household_power_consumption$DateTime <- strptime(paste(household_power_consumption$Date, household_power_consumption$Time), '%d/%m/%Y %H:%M:%S')        
}
