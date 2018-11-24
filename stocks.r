library(quantmod)
install.packages("quantmod")
library(lubridate)
getSymbols("ICIL",from="2015-11-1")
setwd("C:\\Users\\Admin\\Desktop\\Stocks")
ICIL<-read.csv("08-11-2015-TO-06-11-2017ICILALLN.csv")
ICIL<-subset(ICIL,select = -c(Symbol,Prev.Close,Open.Price,High.Price,Low.Price,Last.Price,Average.Price,Total.Traded.Quantity,Turnover,No..of.Trades,Deliverable.Qty,X..Dly.Qt.to.Traded.Qty))
head(ICIL)
ICIL$Date<-dmy(ICIL$Date)
par(mfrow=c(1,1))
ICIL<-ts(ICIL$Close.Price,start = c(2015,11),end=c(2017,11),frequency = 730)
plot(ICIL)

###### FEB,MARCH,APRIL
MAY,JUNE,JULY,AUG --HIGH 
#SEP,OCT,NOV -LOW
DEC,JAN -HIGH


chartSeries(ICIL)
ICIL$Date<-strptime(ICIL$Date, format="%Y-%m-%d") 
dataxts<-xts(ICIL$Close.Price, order.by=ICIL$Date) 
chartSeries(dataxts,multi.col = TRUE) 
addMACD()
addBBands()



##########################################3

KITEX<-read.csv("08-11-2015-TO-06-11-2017KITEXALLN.csv")
KITEXL<-subset(KITEX,select = -c(Symbol,Prev.Close,Open.Price,High.Price,Low.Price,Last.Price,Average.Price,Total.Traded.Quantity,Turnover,No..of.Trades,Deliverable.Qty,X..Dly.Qt.to.Traded.Qty))
head(KITEXL)
KITEXL$Date<-dmy(KITEXL$Date)
par(mfrow=c(1,1))
KITEXL<-ts(KITEXL$Close.Price,start = c(2015,11),end=c(2017,11),frequency = 730)
plot(KITEXL)

#####
getSymbols("KITEX")

install.packages("Quandl")
library(Quandl)
ICIL_xts <- Quandl("ICIL", start_date = "2015-11-01", end_date = "2016-11-2",
                                             order = "asc", type = "xts")
class(ICIL)
chartSeries(ICIL)




wimplast<-read.csv("08-11-2015-TO-06-11-2017GREAVESCOTALLN.csv")
wimplast<-subset(wimplast,select = -c(Symbol,Prev.Close,Open.Price,High.Price,Low.Price,Last.Price,Average.Price,Total.Traded.Quantity,Turnover,No..of.Trades,Deliverable.Qty,X..Dly.Qt.to.Traded.Qty))
head(wimplast)
wimplast$Date<-dmy(wimplast$Date)
par(mfrow=c(1,1))
wimplast<-ts(wimplast$Close.Price,start = c(2015,11),frequency = 3330)
plot(wimplast)




ibrary(quantmod)
stocks <- c("ICIL", "KITEX")
stockEnv <- new.env()
symbols <- getSymbols(stocks, yahoo', env=stockEnv)




wimplast<-read.csv("08-11-2015-TO-06-11-2017GREAVESCOTALLN.csv")
KITEXL<-subset(KITEX,select = -c(Symbol,Prev.Close,Open.Price,High.Price,Low.Price,Last.Price,Average.Price,Total.Traded.Quantity,Turnover,No..of.Trades,Deliverable.Qty,X..Dly.Qt.to.Traded.Qty))
head(KITEXL)
KITEXL$Date<-dmy(KITEXL$Date)
par(mfrow=c(1,1))
KITEXL<-ts(KITEXL$Close.Price,start = c(2015,11),end=c(2017,11),frequency = 730)
plot(KITEXL)


wimplast<-read.csv("08-11-2015-TO-06-11-2017GREAVESCOTALLN.csv")