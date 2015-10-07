# Plot 3: This looks like a line plot from Thu to Sat, plotting
# "Energy sub metering" on the y axis with Sub_metering_1 coded black,
# Sub_metering_2 coded red, Sub_metering_3 coded blue; legend in top
# right corner:
class(df$Sub_metering_1) #factor

# First, print to screen:
plot(df$Time, as.numeric(as.character((df$Sub_metering_1))),type="l",col="black",xlab="",ylab="Energy sub metering",cex.lab=0.75,cex.axis=0.75)
# Add lines to this plot for Sub_metering_2,3:
lines(df$Time, as.numeric(as.character((df$Sub_metering_2))),col="red")
lines(df$Time, as.numeric(as.character((df$Sub_metering_3))),col="blue")
# Now make the legend in upper-right corner:
legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), lwd=c(1,1),cex=0.6)

# Now print to png device:
dev.copy(png,file="plot3.png",width=480,height=480)
dev.off()
cat("plot3.png has been saved in", getwd())