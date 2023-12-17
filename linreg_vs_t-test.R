library(tidyverse)

set.seed(1)

groupA <- rnorm(100, 6, 10)
groupB <- rnorm(100, 5, 5) # unequal means and variances

df_A <- data.frame(y=groupA, x='A')
df_B <- data.frame(y=groupB, x='B')

df <- rbind(df_A, df_B)

# t-test

ttest_results <- t.test(x=groupB, y=groupA)

ttest_results

# linear regression

linreg_results <- lm(y ~ x , data=df)

summary(linreg_results)