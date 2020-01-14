install.packages("rvest")
library(rvest)
#Checking the library working hours
url <- 'https://library.ucf.edu/ask/#tab_Call'

#Reading the HTML code from the website
webpage <- read_html(url)
data_html <- html_nodes(webpage,'p')

#Converting the  data to text
data <- html_text(data_html)

#Let's have a look at the data
head(data)
