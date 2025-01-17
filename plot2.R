

header <- read.table('household_power_consumption.txt', nrows = 1, header = FALSE, sep =';', stringsAsFactors = FALSE)
powerdata<- read.table('household_power_consumption.txt', skip = 2, header = FALSE, sep =';')
colnames( powerdata ) <- unlist(header)
data<-subset(powerdata,powerdata$Date=="1/2/2007" | powerdata$Date =="2/2/2007")

data$DateTime <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(1:nrow(data),as.numeric(data$Global_active_power),type='l', xlab="",ylab="Global Active Power (kilowatts)",xaxt="n")
axis(1,at = c(1,1440,2880), labels=c('Thu','Fri','Sat'))
dev.off()


