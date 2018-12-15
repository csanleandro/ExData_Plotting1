# Read the file
source("lee_fichero.R")

#plot2
plot(my_data$Time,my_data$Global_active_power,pch=NA, lty="solid",ylab="Global Active Power (kilowatts)",xlab="")
lines(my_data$Time,my_data$Global_active_power, lty="solid")

#to PNG
dev.copy(png,file="plot2.png",width=480, height=480)
dev.off()
