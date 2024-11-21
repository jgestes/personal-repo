install.packages("dplyr")
install.packages("ggplot2")

##Setting working directory
workingdirectory = "~/Desktop/advanced-data-manipulation-ice-jgestes"
setwd(workingdirectory)

##Opening File in R
file.exists("data/car.test.frame.txt")
cardata = read.table("data/car.test.frame.txt", header=T, sep="\t")

##Select the columns `Price`, `Country`, and `Weight`.
library(dplyr)
cardata %>% 
  select(Price, Country, Weight)
##As new dataframe
(car1 = select(cardata, Price, Country, Weight))
##Select columns that end in the letter `y`. Use the regex `y$`.
cardata %>% 
  select(ends_with('y'))
##As new dataframe
(car2 = select(cardata, ends_with('y')))
##Sort your data descending using the columns `Mileage`, `Price`, `Country`.
##One way to do this, by mileage
(car3 = select(cardata, Mileage, Price, Country))  %>% 
  arrange(car3, desc(Mileage))
##Another way to do this, descending by all
cardata %>% 
  arrange(desc(Mileage), desc(Price), desc(Country))

##Select compact cars that have a reliability greater than and equal to 4.
cardata %>% 
  filter(Type == "Compact" & Reliability >= 4)
##As new dataframe
car4 = cardata %>% 
  filter(Type == "Compact" & Reliability >= 4)

##Find compact cars that have a reliability greater than and equal to 3 from Japan, but not from the US
cardata %>% 
  filter(Type == "Compact" & Reliability >= 3 & Country== "Japan")
##As new dataframe
car5 = cardata %>% 
  filter(Type == "Compact" & Reliability >= 3 & Country== "Japan")

##How many cars are manufactured with the label `Japan/USA`?
count(cardata, Country== "Japan/USA")
##How many cars are manufactured in the US or Japan?
count(cardata, Country== "Japan" | Country== "USA")
##How many cars are manufactured in the US or Japan with a reliability greater than and equal to 4?
count(cardata, (Country== "Japan" | Country== "USA") & Reliability>= 4)

##Save the columns Country and Weight as a new datafame named car_dataTwo
car_dataTwo = select(cardata, Country, Weight)
##Rename these two columns in the new dataframe. Change `Country` to `Origin` and `Weight` to `Mass`.
(car_dataTwo = car_dataTwo %>%
    rename(Origin = Country, Mass = Weight))

