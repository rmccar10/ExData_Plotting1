# Plot 1: Shows histogram of global active power (kilowatts) with
# main-heading title ("Global Active Power"), ylab="Frequency",
# xlab = "Global Active Power (kilowatts)"

# First try it out by printing to screen:
hist(as.numeric(as.character(df$Global_active_power)),col="red",main="Global Active Power",ylab="Frequency",xlab="Global Active Power (kilowatts)",cex.main=0.75,cex.lab=0.75,cex.axis=0.75)

# Now print to png device:
dev.copy(png,file="plot1.png",width=480,height=480)
dev.off()
cat("plot1.png has been saved in", getwd())