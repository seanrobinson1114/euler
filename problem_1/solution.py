# Multiples of 3 and 5 
# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6,and 9
# The sum of these multiples is 23 
# Find the sum of all the multiples of 3 or 5 below 1000
# @author seanmr

# imports
import numpy as np

# generate array from 3 to 999
vals = range(3, 1000)

# filter out values that aren't multiples of 3 or 5
multiples = filter(lambda val: not(val % 3) or not(val % 5), vals)

# print sum of list
print(np.sum(list(multiples)))