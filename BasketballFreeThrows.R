myplot <- function(data, rows=1:10)
{
  Data <-data[rows, , drop =F]
  matplot(t(Data), type= "b", pch=15:18, col=c(1:4,6))
  legend( "bottomleft", inset = 0.01, legend = Players[rows], col= c(1:4,6), pch= 15:18, horiz = F)
}

myplot(FreeThrows)
myplot(FreeThrowsAttempts)


#1 Free throw attempts per Game
myplot(FreeThrowsAttempts/ Games)

#2 Free throw Accuracy
myplot(FreeThrows/FreeThrowsAttempts)

#3 Player playing style excluding Free Throws
myplot((Points - FreeThrows)/FieldGoals)
