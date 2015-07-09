source("loadData.R")

#' load data if necessary
if(!is.data.frame(df)) {
  df <- loadData()
}

#' Plot 1
print("Writing to figure/plot1.png .")
png("figure/plot1.png")

hist(
  df$Global_active_power,
  main = "Global Active Power",
  xlab = "Global Active Power (kilowatts)",
  ylab = "Frequency",
  col = "red"
)

#' switch graphics device off
dev.off()
