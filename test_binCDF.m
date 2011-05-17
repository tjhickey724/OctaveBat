% Test the binomial cumulative distribution function by comparing it to matlab's built in binomial cumulative distribution function.

printf("successes: at most 2, sample size: 5, probability 0\n")

myResult = binCDF(2,5,0)
trueResult = binocdf(2,5,0)


printf("\n\nsuccesses: at most 2, sample size: 5, probability 0.3\n")

myResult = binCDF(2,5,0.3)
trueResult = binocdf(2,5,0.3)


printf("\n\nsuccesses: at most 2, sample size: 5, probability 0.6\n")

myResult = binCDF(2,5,0.6)
trueResult = binocdf(2,5,0.6)


printf("\n\nsuccesses: at most 2, sample size: 5, probability 1\n")

myResult = binCDF(2,5,1)
trueResult = binocdf(2,5,1)




printf("\n\n\n\nsuccesses: at most 5, sample size: 5, probability 0\n")

myResult = binCDF(5,5,0)
trueResult = binocdf(5,5,0)


printf("\n\nsuccesses: at most 5, sample size: 5, probability 0.3\n")

myResult = binCDF(5,5,0.3)
trueResult = binocdf(5,5,0.3)


printf("\n\nsuccesses: at most 5, sample size: 5, probability 0.6\n")

myResult = binCDF(5,5,0.6)
trueResult = binocdf(5,5,0.6)


printf("\n\nsuccesses: at most 5, sample size: 5, probability 1\n")

myResult = binCDF(5,5,1)
trueResult = binocdf(5,5,1)




printf("\n\n\n\nsuccesses: none, sample size: 5, probability 0\n")

myResult = binCDF(5,5,0)
trueResult = binocdf(5,5,0)


printf("\n\nsuccesses: none, sample size: 5, probability 0.3\n")

myResult = binCDF(5,5,0.3)
trueResult = binocdf(5,5,0.3)


printf("\n\nsuccesses: none, sample size: 5, probability 0.6\n")

myResult = binCDF(5,5,0.6)
trueResult = binocdf(5,5,0.6)


printf("\n\nsuccesses: none, sample size: 5, probability 1\n")

myResult = binCDF(5,5,1)
trueResult = binocdf(5,5,1)

