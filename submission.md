---
editor_options: 
  markdown: 
    wrap: 72
---

# Random Variables and Probability THA

### Wholesaler Supplies

1\. In words, define the random variable X. (0.5 pts.)

Let X be the random variable of the number of orders that are placed
with the wholesaler on a given day.

2.  List the values that X may take on. (0.5 pts.)

    The random variable X can take on the values:
    X(0,1,2,3,4,5,6,7,8,9,10)

3.  Give the distribution of X. (0.5 pts.)

I treated this problem as a binomial distribution with 10 "trials" and a
success being if the store places an order with the retailer. See the R
script "Estes_Jen_RV" for the math for finding the respective
probabilities.

| X | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 |
|----|----|----|----|----|----|----|----|----|----|----|----|
| P(X) | 0.01346274 | 0.07249169 | 0.175653 | 0.2522196 | 0.2376685 | 0.1535704 | 0.0689098 | 0.02120302 | 0.004281378 | 0.0005123017 | 2.758547e-05 |

4.  How many are orders are expected to be placed on a given day? (0.5
    pts.)

Simple way: E(X)= np= 10(0.35)= 3.5, but checking this answer using the
longer expected value formula:

E(X)= X\*P(X)= 0*(0.01346274) + 1*(0.07249169) + 2*(0.175653) +
3*(0.2522196) + 4*(0.2376685) + 5*(0.1535704) + 6*(0.0689098) +
7*(0.02120302) + 8*(0.004281378) + 9*(0.0005123017) +
10\*(2.758547e-05)= 3.5

Both ways give the solution of the expected orders to be placed on a
given day as 3.5.

5.  Find the probability that 6 or 7 orders are placed on a given day.
    (1 pt.)

Since X=6 and X=7 can't both happen (ie: on any given day, a certain
number of orders is placed so they are mutually exclusive) so using the
idea, P(A U B) = P(A) + P(B):

P(X=6 U X=7) = P(X=6) + P(X=7): 0.0689098 + 0.02120302= 0.09011282

So, the probability that 6 or 7 orders are placed on a given day is
0.09011282

6.  Find the probability that at most 3 orders are placed on a given
    day. (1 pt.)

P(X\<=3) = P(X=0) + P(X=1) + P(X=2) + P(X=3) = 0.01346274 + 0.07249169 +
0.175653 + 0.2522196 = 0.513827

Can also check this answer using the pbinom function in R, which is
done. The same answer of 0.513827 is found. So, the probability that at
most 3 orders are placed on a given day is 0.513827.

7.  Based on numerical values, would you be surprised if there were 10
    orders placed on a given day? Justify your answer numerically. (1
    pt.)

Yes, I would be surprised if there were 10 orders placed on a given day
because the probability of this happening is 2.758547e-05, which is very
close to 0. This requires all 10 stores to place an order, and the
probability of this happening is the lowest compared to the events shown
in the distribution of X.

### Wholesaler Supplies Using R

1.  Find the probability that at least 4 orders will be placed on a
    given day.

    The probability that at least 4 orders will be placed on a given day
    is 0.4862.

2.  There is a 40% chance that at least how many orders will be placed
    on a given day?

    1.  What percentile does this represent?

    There is a 40% chance that at least 4 orders will be placed on a
    given day, and this represents the 75th percentile because 75.14955%
    of data points in the distribution fall below the value of 4. This
    can be found by adding the probabilities for the values X\<=4.

3.  There is a 10% chance that at most how many orders will be placed on
    a given day?

    1.  What percentile does this represent?

    There is a 10% chance that 2 orders at most will be placed on any
    given day, and this represents the 26th percentile because 26.16074%
    of data points in the distribution fall below the value of 2. This
    can be found by adding the probabilities for the values X\<=2.

4.  Show the table of probabilities and cumulative probabilities.

| X | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 |
|----|----|----|----|----|----|----|----|----|----|----|----|
| Probability of (X) | 0.0135 | 0.0725 | 0.1757 | 0.2522 | 0.2377 | 0.1536 | 0.0689 | 0.0212 | 0.0043 | 5e-04 | 0 |
| Cumulative Probability of (X) | 0.0135 | 0.086 | 0.2616 | 0.5138 | 0.7515 | 0.9051 | 0.974 | 0.9952 | 0.9995 | 1 | 1 |

1.  What is the empirical mean and the empirical standard deviation?

    "The Expected Value (empirical mean) is 3.5", and "The Empirical
    standard deviation is 1.5083".

2.  Show the histogram of the pmf and cdf. Link to the saved image in
    [submission.md](/submission.md)

Below is a screen capture of the pmf:

![screenshot of pmf](assets/pmf.png)

Below is a screen capture of the cdf:

![screenshot of cdf](assets/cdf.png)
