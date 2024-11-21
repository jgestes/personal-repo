##Work for Question 1
prob=0.35
dbinom(0, 10, prob, log = FALSE)
dbinom(1, 10, prob, log = FALSE)
dbinom(2, 10, prob, log = FALSE)
dbinom(3, 10, prob, log = FALSE)
dbinom(4, 10, prob, log = FALSE)
dbinom(5, 10, prob, log = FALSE)
dbinom(6, 10, prob, log = FALSE)
dbinom(7, 10, prob, log = FALSE)
dbinom(8, 10, prob, log = FALSE)
dbinom(9, 10, prob, log = FALSE)
dbinom(10, 10, prob, log = FALSE)

##Expected Value
0*(0.01346274) + 1*(0.07249169) + 2*(0.175653) + 3*(0.2522196) + 4*(0.2376685) + 5*(0.1535704) + 6*(0.0689098) + 7*(0.02120302) + 8*(0.004281378) + 9*(0.0005123017) + 10*(2.758547e-05) 

##6 or 7 orders placed
0.0689098 + 0.02120302

##At most 3 orders
0.01346274 + 0.07249169 + 0.175653 + 0.2522196
pbinom(3,10,prob, log = FALSE)