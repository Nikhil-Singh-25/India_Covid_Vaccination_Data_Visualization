install.packages("ggplot2") #install package "ggplot2"
library(ggplot2) #importing library "ggplot2"
a = file.choose() #choosing the dataset
b = read.csv(a) #reading the dataset
View(b) #Viewing the dataset
options(scipen = 999) #Adjusting the values
ggplot(data = b, aes(x = date, y = total_vaccinations)) + #Plotting Chart
  geom_bar(stat = "identity", fill = "Dark Green") + #Plotting bar chart
  geom_line(size = 1.5, color="Red", group = 1) + #Plotting line on the chart
  labs(title = "India Covid Data", #Title for the chart
       subtitle = "15-01-2021 to 30-01-2021", #Subtitle for the chart
       x = "Date", y = "Total_Vaccinations") #Assigning axis names