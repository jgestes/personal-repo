workingdirectory = "~/Desktop/discrete-probability-distributions-tha-jgestes"
setwd(workingdirectory)

## Wholesaler of supplies

# Probability table
dbinom(0:20,20,0.45)
sum(dbinom(0:5,20,0.45))
outcome_probs = table(binomsample)/length(binomsample)
print(outcome_probs)

orderSizeMax <- 20
prob <- 0.45
result <- vector("numeric", orderSizeMax+1)
cum_result <- vector("numeric", orderSizeMax+1)
xPx <- vector("numeric", orderSizeMax+1)
x2Px <- vector("numeric", orderSizeMax+1)
rv_binom <-vector("numeric", 5)

# Each vector's index goes from 1 to 11. For example result[1] will hold probability when x = 0; result[11] will hold probability x = 10
for (i in 0:orderSizeMax) {
  result[i+1] <- dbinom(i, orderSizeMax, prob)
  cum_result[i+1] <- pbinom(i, orderSizeMax, prob)
  print(paste("X = ",i, "probability = ",round(result[i+1],4), 
              "cumumlative probability = ", round(cum_result[i+1],4), sep = " "))
}


## 8 or 9 orders
##P(X=8) + P(X=9)
dbinom(8,20,0.45)
dbinom(9,20,0.45)

paste0(dbinom(8,20,0.45) + dbinom(9,20,0.45))

## At most 5 orders are placed
(pbinom(5,20,0.45))

## 10 orders placed
dbinom(10,20,0.45)
## 20 orders placed
dbinom(20,20,0.45)

## At least 4 orders are placed
## Need P(X>=4)
1-round(pbinom(3,20,0.45, log = FALSE), 4)

##percentile1
perc1 = qbinom(0.6, 20, 0.45)
perc1

##percentile 2
rm(list = ls())
##Empirical Mean and SD
##Binomial Number 4
n = 20
p = 0.45


##Finding empirical/sample mean and SD
binomsample = rbinom(0:20,20,0.45)
empirical_mean = n*p
sample_mean = mean(binomsample)
paste0("The empirical mean is ",
       empirical_mean,
       ", while the sample mean is ",
       sample_mean,
       ".")
empirical_sd = sqrt(n*p*(1-p))
sample_sd = sd(binomsample)
paste0("The empirical standard deviation is ",
       empirical_sd,
       ", while the sample standard deviation is ",
       sample_sd,
       ".")

##Graphing
orderSizeMax <- 20
prob <- 0.45
result <- vector("numeric", orderSizeMax+1)
cum_result <- vector("numeric", orderSizeMax+1)
xPx <- vector("numeric", orderSizeMax+1)
x2Px <- vector("numeric", orderSizeMax+1)
rv_binom <-vector("numeric", 5)

# Each vector's index goes from 1 to 11. For example result[1] will hold probability when x = 0; result[11] will hold probability x = 10
for (i in 0:orderSizeMax) {
  result[i+1] <- dbinom(i, orderSizeMax, prob)
  cum_result[i+1] <- pbinom(i, orderSizeMax, prob)
  print(paste("X = ",i, "probability = ",round(result[i+1],4), 
              "cumumlative probability = ", round(cum_result[i+1],4), sep = " "))
}

# Checking the Empirical mean vs Theoretical mean = np and 
# Checking the Empirical variance vs Theoretical variance = np(1-p) 
# Checking the Empirical standard deviation vs Theoretical standard deviation = sqrt(np(1-p))
for (i in 0:orderSizeMax) {
  xPx[i+1] <- i*result[i+1]
  x2Px[i+1] <- i*xPx[i+1]
}

# Mean = sum of xPx
Exp_val = sum(xPx)
print(paste("The Expected Value (empirical mean) is",round(Exp_val, 4), sep = " "))

# Var = sum of X2Px - (sum(xPx)^2)
varian = sum(x2Px) - Exp_val*Exp_val
print(paste("The Empirical Variance is",round(varian, 4), sep = " "))
print(paste("The Empirical standard deviation is",round(sqrt(varian), 4), sep = " "))

# Plot the pmf 
len_result <- length(result)
indx = len_result - 1

plot((0:indx),result[1:len_result],                #--x-axis, y-axis
     type = "h",                                   #--type is histogram
     main = "Binomial Probability Plot 20 trials", #--Main title
     sub = "Probability of Success p = 0.45",      #--sub-title
     xlab = "# Success",                           #--X-Label
     ylab = "Probability Mass",                    #--Y-label
     col  = "blue",                                #--color of pillars
     col.lab ="red",                               #-- color of X and Y labels
     lwd=10)                                       #--width of pillars
#=rm(list = ls()) 
text((0:indx), result[1:len_result],               #-- adding text legend to pillars;x-axis;y-axis
     round(result[1:len_result], 4),               #-- value shown in pillars
     cex=0.6,                                      #-- size expansion for text font
     pos=4,                                        #-- 4 indicates show to right of pillar (choose 1,2,3,4)
     col="red")                                    #-- color of text

# Plot the cdf
len_result <- length(result)
indx = len_result - 1
plot((0:indx),cum_result[1:len_result], 
     type = "h", 
     main = "Binomial Cumulative Probability Plot 20 trials", 
     sub = "Cumulative Probability of Success p = 0.45", 
     xlab = "# Success", ylab = "Probability Mass", 
     col  = "blue", 
     col.lab ="red", 
     lwd=10)
text((0:indx), cum_result[1:len_result], round(cum_result[1:len_result], 4), cex=0.6, pos=4, col="red")
#



