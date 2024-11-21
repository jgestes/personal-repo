###Overweight Country Data
C = c(29, 13, 4, 0, 2, 1, 0, 1)
D = c("11.4 - 20.45", "20.45 - 29.45", "29.45 - 38.45", "38.45 - 47.75", "47.45 - 56.45", "56.45 - 65.45", "65.45 - 74.45", "74.45 - 83.45")
barplot(C, names.arg = D, xlab = "Percent of Population Overweight", ylab = "Number of Countries", col = "red", main = "Overweight Country Data")

##Sample Mean and SD
15.925*(0.58) + 24.95*(0.26) + 33.95*(0.08) + 42.95*(0) + 51.95*(0.04) + 60.95*(0.02) + 69.95*(0) + 78.95*(0.02) 
((15.925-23.3155)^2)*(0.58) + ((24.95-23.3155)^2)*(0.26) + ((33.95-23.3155)^2)*(0.08) + ((42.95-23.3155)^2)*(0) + ((51.95-23.3155)^2)*(0.04) + ((60.95-23.3155)^2)*(0.02) + ((69.95-23.3155)^2)*(0) + ((78.95-23.3155)^2)*(0.02) 
sqrt(164.4498)


##Simulation Data, Normal Distribution with Mean 5, SD 2, sample sizes 300 and 30
pop_mean = 5
pop_sd = 2

# For samples size 300
pop_mean = 5
pop_sd = 2
num_samp = 5000
samp_size = 300
x_bar <- vector("numeric", num_samp)

# Each x-bar is the mean of a random sample of size 50 drawn from a Normal(10, 5)
# We are generating 1000 X-bars (from 1000 samples) and storing them in the x-bar vector
for (i in 1:num_samp) {
  x_bar[i] = mean(rnorm(samp_size, pop_mean, pop_sd))
}

# Calculate the empirical mean
# Calculate the empirical standard deviation of x-bar (i.e., called standard error)
Exp_x_bar <- mean(x_bar)
stderr <- sd(x_bar)

writeLines(paste("\nThe Empirical Expected value of X-bar is: ",
                 round(Exp_x_bar,4),
                 "\nThe Theoretical Expected value of X-bar is: ",
                 pop_mean,
                 "\nThe Empirical Standard Error or standard deviation of X-bar is: ",
                 round(stderr,4),
                 "\nThe Theoretical Standard Error or standard deviation of X-bar is: ",
                 round(pop_sd/sqrt(samp_size),4)))

hist(x_bar, 
     main=paste("Histogram of Sampling Distribution of X-bar from sample size", samp_size, ""),
     xlab="X-bar", 
     border="blue", 
     col="green",
     xlim=c(4, 6),
     las=1, 
     breaks=20)

# For samples size 30
pop_mean = 5
pop_sd = 2
num_samp = 5000
samp_size = 30
x_bar <- vector("numeric", num_samp)

# Each x-bar is the mean of a random sample of size 50 drawn from a Normal(10, 5)
# We are generating 1000 X-bars (from 1000 samples) and storing them in the x-bar vector
for (i in 1:num_samp) {
  x_bar[i] = mean(rnorm(samp_size, pop_mean, pop_sd))
}

# Calculate the empirical mean
# Calculate the empirical standard deviation of x-bar (i.e., called standard error)
Exp_x_bar <- mean(x_bar)
stderr <- sd(x_bar)

writeLines(paste("\nThe Empirical Expected value of X-bar is: ",
                 round(Exp_x_bar,4),
                 "\nThe Theoretical Expected value of X-bar is: ",
                 pop_mean,
                 "\nThe Empirical Standard Error or standard deviation of X-bar is: ",
                 round(stderr,4),
                 "\nThe Theoretical Standard Error or standard deviation of X-bar is: ",
                 round(pop_sd/sqrt(samp_size),4)))

hist(x_bar, 
     main=paste("Histogram of Sampling Distribution of X-bar from sample size", samp_size, ""),
     xlab="X-bar", 
     border="blue", 
     col="green",
     xlim=c(3, 7),
     las=1, 
     breaks=20)

