source("loadData.R")

#' load data if necessary
if (!is.data.frame(df)) {
  df <- loadData()
}

#' Set english locale
Sys.setlocale("LC_TIME","en_US.UTF8")

#' Plot 4
print("Writing to figure/plot4.png .")
png("figure/plot4.png")

#' 2x2 layout
par(mfrow = c(2, 2))

#' Global Active Power
with(
  df, plot(
    DateTime,
    Global_active_power,
    type = "l",
    xlab = "",
    ylab = "Global Active Power"
  )
)

#' Voltage
with(df, plot(
  DateTime,
  Voltage,
  type = "l",
  xlab = "datetime",
  ylab = "Voltage"
))


#' Energy Sub Metering
with(df, {
  plot(
    DateTime,
    Sub_metering_1,
    type = "l",
    xlab = "",
    ylab = "Energy sub metering"
  )
  lines(DateTime,
        Sub_metering_2,
        type = "l",
        col = "red")
  lines(DateTime,
        Sub_metering_3,
        type = "l",
        col = "blue")
  legend(
    "topright",
    col = c("black", "red", "blue"),
    legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
    lty = 1,
    bty = "n"
  )
})

#' Global Reactive Power
with(
  df, plot(
    DateTime,
    Global_reactive_power,
    type = "l",
    xlab = "datetime",
    ylab = "Global Reactive Power"
  )
)


#' switch graphics device off
dev.off()

#' reset layout
par(mfrow = c(1,1))
