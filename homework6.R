
getwd()

mov<-read.csv("Section6-Homework-Data.csv")
head(mov)
summary(mov)

#activate ggplot2
install.packages("ggplot2")
library(ggplot2)

ggplot(data=mov, aes(x=Day.of.Week))+ geom_bar()

#filter #1 for the data frame

filt<- (mov$Genre =="action") | (mov$Genre =="adventure") |(mov$Genre =="animation") |(mov$Genre =="comedy") | (mov$Genre =="drama")
#filter #2 
filt2<- mov$Studio %in% c("Buena Vista Studios", "WB","Fox", "Universal", "Sony", "Paramount Pictures")
filt
filt2
mov2<- mov[filt & filt2,]
mov2


p <-ggplot(data=mov2, aes(x=Genre, y=Gross...US))
p

p+geom_point()
p+geom_boxplot()

q<-p+ geom_jitter(aes(size=Budget...mill., colour=Studio)) + geom_boxplot(alpha=0.7, outlier.colour=NA)
q

q<- q+ xlab("Genre")+ ylab("Gross % US") + ggtitle("Domestic Gross % by Genre")
q

q<- q+ theme( axis.title.x = element_text(colour="blue",size=30), axis.title.y = element_text(colour="blue",size=30), axis.text.x = element_text(size=20),axis.text.y = element_text(size=20), plot.title= element_text(size = 40),
                             legend.title= element_text(size=20),legend.text= element_text(size=20), )
q

q$labels$size<- "Budget $M"
q
