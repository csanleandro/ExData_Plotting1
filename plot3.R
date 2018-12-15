# Read the file
source("lee_fichero.R")

#plot3
plot(my_data$Time, my_data$Sub_metering_1, pch=NA, lty="solid",ylab="Energy sub meteting",xlab="")
lines(my_data$Time,my_data$Sub_metering_1,lty="solid",col="black")
lines(my_data$Time,my_data$Sub_metering_2,lty="solid",col="red")
lines(my_data$Time,my_data$Sub_metering_3,lty="solid",col="blue")
legend('topright', legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3") , 
       lty=1, col = c("black","blue", "red"), #,cex=.75
       y.intersp=0.75)

#to PNG
dev.copy(png,file="plot3.png",width=480, height=480)
dev.off()
