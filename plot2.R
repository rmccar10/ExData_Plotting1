# Plot 2: This looks like a line plot with ylab="Global Active Power 
# (kilowatts)" and no xlab, but plotted for Thu, Fri, Sat on the x
# axis:

# First, print to screen:
plot(df$Time, as.numeric(as.character((df$Global_active_power))),type="l",ylab="Global Active Power (kilowatts)",xlab="",cex.lab=0.75,cex.axis=0.75)

# Now print to png device:
dev.copy(png,file="plot2.png",width=480,height=480)
dev.off()
cat("plot2.png has been saved in", getwd())