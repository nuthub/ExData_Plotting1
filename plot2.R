source("loadData.R")

#' load data if necessary
if (!is.data.frame(df)) {
  df <- loadData()
}

#' Set english locale
Sys.setlocale("LC_TIME","en_US.UTF8")

#' Plot 2
print("Writing to figures/plot2.png .")
png("figure/plot2.png")

with(
  df, plot(
    DateTime,
    Global_active_power,
    type = "l",
    xlab = "",
    ylab = "Global Active Power (kilowatts)"
  )
)

#' switch graphics device off
dev.off()
