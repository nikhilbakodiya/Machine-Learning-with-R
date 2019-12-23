#Timeseries
sales=c(12,34,56,76,45,45,56,45,45,5,45,45,34,456,576,6,78,56)
sales.timeseries=ts(sales,start=c(2012,1),frequency = 12)
print(sales.timeseries)

sales.timeseries=ts(sales,start=c(2012,1),frequency = 4)
print(sales.timeseries)

#Display start, end, frequency of time series
start(sales.timeseries)
end(sales.timeseries)
frequency(sales.timeseries)

#Plot a line chart
plot(sales.timeseries,type="o",pch=20,col='blue')

#Create a subset of the sales series
sales.subset=window(sales.timeseries,start=c(2012,3),end=c(2012,7))
print(sales.subset)

#Forecast (moving average)
install.packages("forecast")
library(forecast)
newsales.timeseries=c(12,34,45,56,234,45,56,56,34,345,456,567,456,34,534,534,56,456,456,36,346,456,45,34)
par(mfrow=c(3,1))
plot(ma(newsales.timeseries,1),type="o",pch=20,col='red',main='Time')
plot(ma(newsales.timeseries,3),type="o",pch=20,col='blue',main='Time')
plot(ma(newsales.timeseries,5),type="o",pch=20,col='green',main='Time')

#
Nile
par(mfrow=c(3,1))
plot(ma(Nile,1),type="o",pch=20,col='red',main='Time')
plot(ma(Nile,5),type="o",pch=20,col='blue',main='Time')
plot(ma(Nile,10),type="o",pch=20,col='green',main='Time')
