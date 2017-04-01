# Krishna Mohan RBasics
getwd()
install.packages("MASS", repos = "http://cran.us.r-project.org")
#install.packages("rmarkdown")
library(MASS)
#library(rmarkdown)
#library(knitr)
R.Version()
input.data=Cars93
head(input.data)
head(input.data, 15)
tail(input.data, 15)
str(input.data)
names(input.data)
x=3
x
y = x+5
y
m= "Money"
m
z=c("Kohli", "Dhoni", "Ashwin")
z
v1=c(1:10)
v1
class(v1)
str(v1)
v2=c(1*pi, 2*pi, 3*pi)  # Computed vector
v2
class(v2) 

## 3/26/2017

# Compare vectors
v.a = c(1,1,4,5,3,2)

dfb=data.frame(v.a)
dfb
dfc=subset(dfb, v.a>2)
dfc

v.b = c(4,1,5,5,1,7)


v3 = c("Intro", "to", "R")

v.a==v.b

#vector arithmetic
v.a+v.b

mean(v.a)

# Lists
l1=list(2,'m', z)
l1
class(l1)



# Factors
factor(v.a)
wday= c("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun")
factor(wday)

# Ordered Factors


# dataframes

df=data.frame(v.a, v.b, v3)
df

sub.df.C=df$v.a>3
sub.df.C

str(df)
df$v.a
str(df$v.a)
str(df$v3)

# Adding new column to dataframe
newcol=c("Time", "to", "Add", "A", "Column", "now" )

cbind(df, newcol)

nrow(df); ncol(df)
dim((df))


# subsetting dataframe

df[,1:2]

# sorting dataframe
v.a
dfva = data.frame(v.a)
dfva


# Data Visualization
# X-axis          Height of bar represents        Common Name
#==============================================================
# Continuous      Count                           Histogram
# Continuous      Value                           Bar Graph
# Discrete        Count                           Bar Graph
# Discrete        Value                           Bar Graph

head(input.data)

install.packages("ggplot2")
library(ggplot2)

hist(input.data$Horsepower, col=rainbow(7))
price.colors=ifelse(input.data$Price>25,"blue", "red")
barplot(input.data$Price, col=price.colors)
plot(input.data$Horsepower, input.data$Price, main="Horsepower vs Price", xlab="HorsePower", ylab = "Price($)")

qplot(Cylinders, MPG.city, data=input.data)
qplot(input.data$MPG.city, input.data$Price)
qplot(input.data$Cylinders)
barplot(table(input.data$Cylinders))


ggplot(input.data, aes(x=Price)) + geom_histogram(binwidth = 2)
ggplot(input.data, aes(x=Price)) + geom_density()
head(input.data, nrow=15)
#vec = c(22, 46, "Large", "Small", FALSE)
#vec = c(22, 46, "Large", "Small", FALSE)
install.packages("dplyr"); library(dplyr)
help("subset")
