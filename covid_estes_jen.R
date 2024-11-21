##Setting Working Directory
workingdirectory = "~/Desktop/advanced-data-manipulation-tha-jgestes"
setwd(workingdirectory)

##Opening Data
file.exists("data/scraped_data.txt")
datafile = read.table("data/scraped_data.txt", header=T, sep="\t")
library(dplyr)

## Rename Columns
datafile = datafile %>%
  rename(jobs_lvl_1000 = jobs_lvl, jobs_month = jobs_mth, unemploy_rate = unemp_rate, unemploy_mil = unemp_mil, employ_pop = emp_pop, 
         infl_rate_perc = infl_rate, snp500_mean_lvl = snp500_mean, public_debt_tril = public_debt)

##Data Wrangling and Manipulation
##Calculate the mean of `jobs_lvl_1000`
datafile %>%
  summarise(mean(jobs_lvl_1000))
##Calculate the median of `jobs_lvl_1000`
datafile %>%
  summarise(median(jobs_lvl_1000))

##Select all columns that start with a *j* (i.e., `(^j)`) **or** contain an *a* (i.e., `(a)`). 
##Save it as a new data frame named `jobs_data_alt`. Output the columns to the terminal. (1 pt.)
jobs_data_alt = datafile %>%
  select(starts_with("j") | contains("a"))
print(jobs_data_alt)

##Using your newly created data frame `jobs_data_alt`, select months in which `jobs_lvl_1000` was greater than 135,000. (1 pt.)
jobs_data_alt = jobs_data_alt %>%
filter(jobs_lvl_1000 > 135000)


##columns that start with a *j* or contain an *a* and select months in which `jobs_lvl_1000` was greater than 135,000
jobs_data_alt2 = datafile %>%
  select(starts_with('j') | contains("a") ) %>%
  filter (jobs_lvl_1000 > 135000)
print(jobs_data_alt2)

##Using Piping columns that end with the letter *l* or contain the letter *o*.  rows in which `snp500_mean_lvl` is greater than or equal to 3000
jobs_data_alt3 = datafile  %>%
  select(ends_with("l") | contains("o")) %>%
  filter(snp500_mean_lvl >= 3000)
print(jobs_data_alt3)

##Mean and Median of jobs_lvl_1000
##Mean
jobs_data_alt3 %>%
  summarise(mean(jobs_lvl_1000))
##Median
jobs_data_alt3 %>%
  summarise(median(jobs_lvl_1000))


  




