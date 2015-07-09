loadData <- function() {
  if (!file.exists("household_power_consumption.txt")) {
    print("File household_power_consumption.txt not found, exiting!")
    quit()
  }
  all_data <- read.csv(
    file = "household_power_consumption.txt",
    sep = ";",
    header = TRUE,
    na.strings = c("?"),
    colClasses = c(rep("character", 2), rep("numeric",7))
  )
  #' Select relevant time frame
  data <-
    all_data[all_data$Date == "1/2/2007" |
               all_data$Date == "2/2/2007",]
  #' add DateTime column
  data <-
    cbind(DateTime = as.POSIXct(paste(data$Date, data$Time), format = "%d/%m/%Y %T"),
          data[3:ncol(data)])
  data
}
