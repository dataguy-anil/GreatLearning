# Dr. PKV
# Descriptive Statistics - Summary Stats

mydata = read.csv("C:\\Users\\anil_\\Downloads\\Learning\\GreatLakes\\20170325\\Health.csv", header = TRUE)

head(mydata)
mydata
names(mydata)
# attach(mydata)
summary(mydata) # Produces absurd stats on Nurse column

num_data = mydata[, 2:5]
attach(num_data)
summary(num_data) # Produces 5-number stats used for box-plot

freq = table(as.vector(Work))
Mode=names(freq)[freq==max(freq)]
Mode
# Mode is incorrectly reported by Excel; R figures the data to be Two-bell curve
by(num_data, INDICES = Hospital, FUN = summary)
hist(Work, col = "Green")
hist(Pay, col = "Blue")
hist(Promotion, col = "Black")
range(Work)
slab=seq(60, 95, by=5)
WorkClass=cut(Work, slab)
FreqDis = table(WorkClass)
FreqDis
data.frame(FreqDis)
barplot(FreqDis, space = 0, main = "Freq Dis", xlab = "Buckets", ylab = "Count", col = "Purple")
Table = table(Hospital, WorkClass)
plot(Table)
boxplot(Work, horizontal = TRUE, col = "yellow")
boxplot(Work,Pay,Promotion,horizontal=TRUE, col=c("Red", "Yellow", "Green"))
boxplot(Work~Hospital, horizontal=TRUE)