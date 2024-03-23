library(tidyverse)
library(nycflights13)


flights_plains <- left_join (flights, planes, by = "tailnum")

View(flights_plains)

# make a plot of flight_plains using only columns arr_delay and seats
p1 <- plot(flights_plains$seats, flights_plains$arr_delay, xlab = "Seats", ylab = "Arrival Delay", main = "Arrival Delay vs Seats")

View(p1)