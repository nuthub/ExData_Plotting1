source("loadData.R")

#' load data if necessary
if (!is.data.frame(df)) {
  df <- loadData()
}

#' Set english locale
Sys.setlocale("LC_TIME","en_US.UTF8")

#' Plot 3
print("Writing to figure/plot3.png .")
png("figure/plot3.png")

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
    bty = "o"
  )
})

#' switch graphics device off
dev.off()
