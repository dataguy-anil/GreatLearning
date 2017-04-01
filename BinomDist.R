# Binomial Distribution

Success = c(0:7)
Prob_Success = dbinom(Success, 7, 0.6, FALSE)
data.frame(Success, Prob_Success)

Cumulative = pbinom(Success, 7, 0.6, TRUE, FALSE)
data.frame(Success, Prob_Success, Cumulative)



# Poisson Distribution
# If on avearge, 6 customers arrive every two minutes at a bank during the busy hours of working, 
# a) What is the probability that exactly 4 customers in a given minute ??
# b) What is the probability that more than 3 customers will arrive in a given minute ??

Lambda = 6/2 # 6 Customers every two minutes
Prob_4_Cust = dpois(4, Lambda)
Prob_4_Cust
Prob_Gt3_Cust = ppois(3, Lambda, lower.tail = FALSE)
Prob_Gt3_Cust



# Normal Distribution - Bell Curve - Mean=Median=Mode
# 68% of data points will be within mu+/-u
# 95% of data points will be within mu+/-2u
# 99.7% of data points will be within mu+/-3u
# If the tails are extended for normal distribution, they will never meet the horizontal axis.
# Normal Probability Density Function -- what is it?
# Continuous variable .. need to look for density



# Mean weight of cereal pack is 0.295kg with St.Deviation is 0.025kg
mu=0.295
sigma=0.025
# pnom, qnom
Prob_LT0.28=pnorm(0.28,mean=mu,sigma)
Prob_LT0.28
Prob_LT0.35=pnorm(0.35,mean=mu,sigma, lower.tail = FALSE)
Prob_LT0.35
Prob_LT0.34_GT0.26=-pnorm(0.26,mean=mu,sigma)+pnorm(0.34,mean=mu,sigma)
Prob_LT0.34_GT0.26

# Whats the weight of packs has got 90pc more than mean??
qnorm(mean=mu, sd=sigma, 0.10)