data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")

data$Date <- as.Date(strptime(data$Date, "%d/%m/%Y"))
data$Time <- strptime(data$Time, "%H:%M:%S")

# Load the necessary packages
library(ggplot2)

# Read the data
data <- read.csv("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")

# Subset the data for the relevant dates
data <- subset(data, as.Date(data$Date, "%d/%m/%Y") %in% c("2007-02-01", "2007-02-02"))

# Convert Date and Time variables to appropriate classes
data$DateTime <- as.POSIXct(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")

# Create the plot
plot
