library(tidyverse)
library(ggplot2)
library(ggthemes)
library(ggpubr)
library(ggExtra)
# plot a histogram from iris dataset
ggplot(iris, aes(x = Sepal.Length)) +
  geom_histogram(binwidth = 0.2, fill = "blue", color = "black") +
  theme_minimal() +
  labs(title = "Histogram of Sepal Length", x = "Sepal Length", y = "Frequency") +
  theme(plot.title = element_text(hjust = 0.5))