##Number 1
#A is Male, B is Female
xA = 24
nA = 57
xB = 8
nB = 24
pprime_A = xA/nA
pprime_B = xB/nB
pc = (xA + xB)/(nA + nB)
std_err <- sqrt(pc*(1-pc)*((1/nA)+(1/nB)))
print(std_err)
z_statistic <- (pprime_A - pprime_B)/std_err
print(z_statistic)

# upper-tailed test
(p_value <- (1- pnorm(z_statistic,0,1)))

## Number 2
eleven <- c(17.3, 17.4, 19.3, 16.0, 17.6, 15.4, 19.2, 18.5, 18.2, 16.5, 20.7, 14.7, 15.5)
twelve <- c(16.4, 13.7, 16.1, 15.5, 18.2, 13.5, 18.7, 18.7, 18.8, 16.9, 22.4, 12.3, 17.3)
xd <- eleven - twelve
x_bar_d <-mean(xd)
std_err <- sd(xd)/sqrt(length(xd))
print(x_bar_d)
print(std_err)
t_statistic <- x_bar_d/std_err
print(t_statistic)
deg_free <- length(xd) - 1
print(deg_free)
# Upper-tailed test
(p_value <- (1 - pt(t_statistic,deg_free)))

#Using t.test
t.test(eleven, twelve, paired=TRUE, alternative = "greater")

