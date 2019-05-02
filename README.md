# Josephus-Problem
The well known Josephus Problem, coded in Fortran 95

# Description
A generalization of this problem is as follows. We suppose that every mth person will be executed from a group of size n, in which the pth person is the survivor. If there is an addition of x people to the circle, then the survivor is in the p + mx-th position if this is less than or equal to n + x. If x is the smallest value for which (p + mx) > (n + x), then the survivor is in position (p + mx) − (n + x).

# Working Method - Algorithm
The code works on a recursive function. If there is only one person in the circle, he is automatically the survivor. If that's not the case - suppose that we denote each person in the circle with an index. The starting person always has index 1. Every time we go around the circle, the even people in the even indices are eliminated. At the end, there is a sole survivor.

It does not matter if there are an even or an odd number of people to start off with - there must be a victor.
