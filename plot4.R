# Plot 4: This plot has 4 panels: upper left, same line 
# plot as plot 2; lower left, same plot as plot 3; upper
# right, lineplot of xlab="datetime" and ylab="Voltage"; 
# lower right, lineplot of datetime vs. Global reactive
# power.

# First print to screen:
par(mfcol=c(2,2))
# Subplot 1: 
plot(df$Time, as.numeric(as.character((df$Global_active_power))),type="l",ylab="Global Active Power",xlab="",cex.lab=0.75,cex.axis=0.75)
# Subplot 2: 
plot(df$Time, as.numeric(as.character((df$Sub_metering_1))),type="l",col="black",xlab="",ylab="Energy sub metering",cex.lab=0.75,cex.axis=0.75)
lines(df$Time, as.numeric(as.character((df$Sub_metering_2))),col="red")
lines(df$Time, as.numeric(as.character((df$Sub_metering_3))),col="blue")
#Subplot 3: 
plot(df$Time,as.numeric(as.character(df$Voltage)),type="l",xlab="datetime",ylab="Voltage",cex.lab=0.75,cex.axis=0.75)
# Subplot 4: 
plot(df$Time,as.numeric(as.character(df$Global_reactive_power)),type="l",xlab="datetime",ylab="Global_reactive_power",ylim=c(0.0,0.5),cex.lab=0.75,cex.axis=0.75)

# Now print to png:
dev.copy(png,file="plot4.png",width=480,height=480)
dev.off()
cat("plot4.png has been saved in", getwd())