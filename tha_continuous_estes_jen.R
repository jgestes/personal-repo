## Criminal Trial 

crimnorm = rnorm(1000000,21,7)
hist(crimnorm, breaks = 25,
     col = "#70022E", 
     main = "Normal Distribution Sample",
     xlab = "Outcome",
     ylab = "Proportion")


#At least 14 days
trial1 = 1-pnorm(14,21,7)
paste0("The probability that the trial takes at least 14 days is ",
       trial1,)
   
## 60 percent of trials
percent = round(qnorm(0.6, 21,7))
paste0("Sixty percent of trials of this type are completed within " , percent , " days.") 

 
#Middle 50% of Data
mid1 = round(qnorm(0.25, 21, 7))
mid2 = round(qnorm(0.75, 21, 7))
paste0("The middle 50% of trials of this type take from ", mid1, " days to ", mid2, " days.")

#Between 1 and 3 days
Less1 = pnorm(1,21,7)
More3 = 1-pnorm(3,21,7)
bt13 = 1-Less1-More3

paste0("The probability that the given trial takes between 1 to 3 days is ", bt13, ".") 

##Customer Billing
##Probability 4 or less late-paying customers
pbinom(4,200,0.04)

ppois(4,8)

pnorm(8,2.771281)

##Find probability that the 5th customer will be the first late-paying customer? 
fifth = dgeom(4,0.04)
paste0("The probability that the 5th customer will be the first late paying customer is ", fifth, ".") 





