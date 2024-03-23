library(tidyverse)
library(rvest)


scraped_strings <- read_html("https://www.nzz.ch/") %>% 
  html_elements(css = "a") %>%
  html_attr("href")

scraped_strings <- str_c("https://www.nzz.ch", scraped_strings[10:12])

total_scraped_text <- vector("list", length = length(scraped_strings))

for (i in 1:length(scraped_strings)) {
  
  total_scraped_text[[i]] <- read_html(scraped_strings[i]) %>%
  html_elements(css = "p") %>%
  html_text()
  
}

print(total_scraped_text)
