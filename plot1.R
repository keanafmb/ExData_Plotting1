
header <- read.table('household_power_consumption.txt', nrows = 1, header = FALSE, sep =';', stringsAsFactors = FALSE)
powerdata<- read.table('household_power_consumption.txt', skip = 2, header = FALSE, sep =';')
colnames( powerdata ) <- unlist(header)
data<-subset(powerdata,powerdata$Date=="1/2/2007" | powerdata$Date =="2/2/2007")

#Plot1
png("plot1.png",width=480, height=480)
hist(as.numeric(data$Global_active_power),col="red",xlab="Global Active Power(kilowatts)",main="Global Active Power")
dev.off()

