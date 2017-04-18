# As with other products, Specialty faces the decision of how many Weather Teddy units to order for the coming holiday season. 
# Members of the management team suggested order quantities of 15,000, 18,000, 24,000, or 28,000 units. The wide range of order 
# quantities suggested indicates considerable disagreement concerning the market potential. The product management team asks you 
# for an analysis of the stock-out probabilities for various order quantities, an estimate of the profit potential, and to help 
# make an order quantity recommendation. Specialty expects to sell Weather Teddy for $24 based on a cost of $16 per unit. 
# If inventory remains after the holiday season, Specialty will sell all surplus inventory for $5 per unit. After reviewing the 
# sales history of similar products, Specialty’s senior sales forecaster predicted an expected demand of 20,000 units with 
# a .95 probability that demand would be between 10,000 units and 30,000 units.     

# Managerial Report  
# Prepare a managerial report that addresses the following issues and recommends an order quantity for the 
# Weather Teddy product. Use R programming to obtain the solution.  
# 1. Use the sales forecaster’s prediction to describe a normal probability distribution that can be used to 
# approximate the demand distribution. Sketch the distribution and show its mean and standard deviation.  

rm(list = ls())
set.seed(0); mu= 20000; stddev = 5000
X = as.integer(rnorm(100000, mean = mu, sd=stddev)) ; mean(X); sd(X)
hist(X, main = "Speciality Toys Normal distribution")
hist(X, main = "Speciality Toys Normal Density", probability = TRUE)
lines(density(X), col="blue")




Y = pnorm(x, mean = mu, sd = stddev)



  
  
  
# 2. Compute the probability of a stock-out for the order quantities suggested by members of the management team.  
# Members of the management team suggested order quantities of 15,000, 18,000, 24,000, or 28,000 units.

cat("Probability of Stock-out for the quantity 15000 is", toString(100*pnorm(15000, mean=20000, sd=5000)), "percent")
cat("Probability of Stock-out for the quantity 18000 is", toString(100*pnorm(18000, mean=20000, sd=5000)), "percent")
cat("Probability of Stock-out for the quantity 24000 is", toString(100*pnorm(24000, mean=20000, sd=5000)), "percent")
cat("Probability of Stock-out for the quantity 28000 is", toString(100*pnorm(28000, mean=20000, sd=5000)), "percent")



# 3. Compute the projected profit for the order quantities suggested by the management team under three 
# scenarios: worst case in which sales 10,000 units, most likely case in which sales 20,000 units, and 
# best case in which sales 30,000 units.  
# (Case Problem from “Statistics for Business and Economics” –Anderson, Sweeney, and Williams Adapted for Classroom Discussion) 

# scenario: If the order quantity is 15000, here is how the profits would look in all scenarios of sales 10k, 20k, 30k.

Holiday_Sale_Price = 24
Clearance_Sale_Price = 5
Order_Cost_per_unit = 16

Worst_TotalSales = 10000; 
Likely_TotalSales = 20000; 
Best_TotalSales = 30000

# Lets examine the profit if the invetory order stands at 15k in all 3 cases.

Sales10k_Worstcase = 10000 * Holiday_Sale_Price + 5000 * Clearance_Sale_Price - 15000*Order_Cost_per_unit
Sales10k_Worstcase #Surplus inventory 5000 units sold as clearance here


Sales20k_Likelycase = 15000 * Holiday_Sale_Price - 15000*Order_Cost_per_unit
Sales20k_Likelycase # Insufficient Inventory order placed


Sales30k_Bestcase = 15000 * Holiday_Sale_Price - 15000*Order_Cost_per_unit
Sales30k_Bestcase # Insufficient Inventory order placed


Profit_Order_15k = rbind(Sales10k_Worstcase, Sales20k_Likelycase, Sales30k_Bestcase)
colnames(Profit_Order_15k) = "Profit_Order_15k"
Profit_Order_15k


# Lets examine the profit if the invetory order stands at 18k in all 3 cases.

Sales10k_Worstcase = 10000 * Holiday_Sale_Price + 8000 * Clearance_Sale_Price - 18000*Order_Cost_per_unit
Sales10k_Worstcase #Surplus inventory 8000 units sold as clearance here


Sales20k_Likelycase = 18000 * Holiday_Sale_Price - 18000*Order_Cost_per_unit
Sales20k_Likelycase # Insufficient Inventory order placed


Sales30k_Bestcase = 18000 * Holiday_Sale_Price - 18000*Order_Cost_per_unit
Sales30k_Bestcase # Insufficient Inventory order placed


Profit_Order_18k = rbind(Sales10k_Worstcase, Sales20k_Likelycase, Sales30k_Bestcase)
colnames(Profit_Order_18k) = "Profit_Order_18k"
Profit_Order_18k


# Lets examine the profit if the invetory order stands at 24k in all 3 cases.

Sales10k_Worstcase = 10000 * Holiday_Sale_Price + 14000 * Clearance_Sale_Price - 24000*Order_Cost_per_unit
Sales10k_Worstcase #Surplus inventory 14000 units sold as clearance here


Sales20k_Likelycase = 20000 * Holiday_Sale_Price + 4000 * Clearance_Sale_Price - 24000*Order_Cost_per_unit
Sales20k_Likelycase #Surplus inventory 4000 units sold as clearance here


Sales30k_Bestcase = 24000 * Holiday_Sale_Price - 24000*Order_Cost_per_unit
Sales30k_Bestcase # Insufficient Inventory order placed


Profit_Order_24k = rbind(Sales10k_Worstcase, Sales20k_Likelycase, Sales30k_Bestcase)
colnames(Profit_Order_24k) = "Profit_Order_24k"
Profit_Order_24k

# Lets examine the profit if the invetory order stands at 28k in all 3 cases.

Sales10k_Worstcase = 10000 * Holiday_Sale_Price + 18000 * Clearance_Sale_Price - 28000*Order_Cost_per_unit
Sales10k_Worstcase #Surplus inventory 18000 units sold as clearance here


Sales20k_Likelycase = 20000 * Holiday_Sale_Price + 8000 * Clearance_Sale_Price - 28000*Order_Cost_per_unit
Sales20k_Likelycase #Surplus inventory 8000 units sold as clearance here


Sales30k_Bestcase = 28000 * Holiday_Sale_Price - 28000*Order_Cost_per_unit
Sales30k_Bestcase # Insufficient Inventory order placed


Profit_Order_28k = rbind(Sales10k_Worstcase, Sales20k_Likelycase, Sales30k_Bestcase)
colnames(Profit_Order_28k) = "Profit_Order_28k"
Profit_Order_28k

Profit = cbind(Profit_Order_15k, Profit_Order_18k, Profit_Order_24k, Profit_Order_28k); Profit

# Conclusion
# Optimistic order quantity lies between 20k to 24k as per the "Profit" matrix 