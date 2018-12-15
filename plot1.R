# Read the file
source("lee_fichero.R")

#Plot 1:
hist(my_data$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency")

#to PNG
dev.copy(png,file="plot1.png",width=480, height=480)
dev.off()
