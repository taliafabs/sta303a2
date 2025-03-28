# ```{r, fig.cap="There has been an overall decline in deaths overtime, since the highest levels were seen around 1980. The red line trend shows there are seasonal variations in the number of deaths in the month. The points in black appear to be modeled well by the trend in red"}
# #3 
# # First prediction: using March as the month
# newdata$month <- "Mar"
# predx <- predict(model1, newdata)
# 
# # Second prediction: using the actual month of each date
# newdata$month <- format(newdata$date, "%b")
# predy <- predict(model1, newdata)
# 
# # Plot original data
# plot(
#   x$date, x$killed, 
#   cex = 0.2, log = "y", 
#   xlab = "Year", ylab = "Number of Deaths"
# )
# 
# # Add predicted lines to the plot
# matlines(
#   newdata$date, exp(cbind(predx, predy)), 
#   lty = 1
# )
# ```