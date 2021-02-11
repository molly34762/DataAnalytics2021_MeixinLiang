EPI_data <- read.csv('2010EPI_data.csv')
#View(EPI_data)
#
attach(EPI_data) 	# sets the default object
#fix(EPI_data) 	# launches a simple data editor
EPI_data 			# prints out values EPI_data$EPI
tf <- is.na(EPI_data) # records True values if the value is NA
E <- EPI_data[!tf] # filters out NA values, new array

#other data
GRUMP_data <- read.csv("GPW3_GRUMP_SummaryInformation_2010.csv")

summary(EPI_data) 	# stats
fivenum(EPI_data,na.rm=TRUE)
help(stem)
stem(EPI_data)		 # stem and leaf plot
help(hist)
hist(EPI_data)
hist(EPI_data, seq(30., 95., 1.0), prob=TRUE)
help(lines)
lines(density(EPI_data,na.rm=TRUE,bw=1.)) # or try bw=�???oSJ�???�
help(rug)
rug(EPI_data) 

#Cumulative Density Function
plot(ecdf(EPI_data), do.points=FALSE, verticals=TRUE) 
#Quantile-Quantile?
par(pty="s") 
qqnorm(EPI_data); qqline(EPI_data)
#Simulated data from t-distribution:
x <- rt(250, df = 5)
qqnorm(x); qqline(x)
#Make a Q-Q plot against the generating distribution by: x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)

help(distributions)

#Landlock
EPILand<-EPI[!Landlock]
Eland <- EPILand[!is.na(EPILand)]
#
hist(ELand)
hist(ELand, seq(30., 95., 1.0), prob=TRUE)

