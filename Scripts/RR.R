library(kernlab)
library(rmarkdown)
data(spam)
set.seed(3435)
trainIndicator = rbinom(4601, size = 1, prob = 0.5)

trainSpam = spam[trainIndicator == 1, ]
testSpam = spam[trainIndicator == 0, ]
str(trainSpam$type)
table(trainSpam$type)

plot(x = trainSpam$type, y = log10(trainSpam$capitalAve))