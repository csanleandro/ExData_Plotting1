# Read the file
source("lee_fichero.R")

#plot4
par(mfrow=c(2,2),mar=c(4.4,4.5,3.9,1))
with(my_data,{
  #num1
  plot(my_data$Time,my_data$Global_active_power,pch=NA, lty="solid",ylab="Global Active Power",xlab="")
  lines(my_data$Time,my_data$Global_active_power, lty="solid")
  #num2
  plot(my_data$Time,my_data$Voltage,pch=NA, lty="solid",ylab="Voltage",xlab="datetime")
  lines(my_data$Time,my_data$Voltage, lty="solid")
  #num3
  plot(my_data$Time, my_data$Sub_metering_1, pch=NA, lty="solid",ylab="Energy sub meteting",xlab="")
  lines(my_data$Time,my_data$Sub_metering_1,lty="solid",col="black")
  lines(my_data$Time,my_data$Sub_metering_2,lty="solid",col="red")
  lines(my_data$Time,my_data$Sub_metering_3,lty="solid",col="blue")
  legend('topright', legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3") , 
        lty=1, col = c("black","blue", "red"), bty="n", y.intersp=0.75)
  #num4
  plot(my_data$Time,my_data$Global_reactive_power,pch=NA, lty="solid",ylab="Global_reactive_power",xlab="datetime")
  lines(my_data$Time,my_data$Global_reactive_power, lty="solid")
})
#a PNG
dev.copy(png,file="plot4.png",width=480, height=480)
dev.off()
