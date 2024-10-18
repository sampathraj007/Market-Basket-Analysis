#Load Required Library
install.packages("arules")
library(arules)

install.packages("arulesViz")
library(arulesViz)

install.packages("RColorBrewer")
library(RColorBrewer)

#Load the Dataset
data('Groceries')

#Applying the Apriori Algorithm
rules <- apriori(Groceries, parameter = list(supp = 0.01, conf = 0.2))

#Using Inspect funtion
inspect(rules[1:10])

par("mar")
par(mar = c(5, 4, 4, 2) + 0.1)
windows(width = 10, height = 7)
#Using itemFrequencyplot()
arules::itemFrequencyPlot(Groceries, topN = 20, 
                          col = brewer.pal(8, 'Pastel2'),
                          main = 'Relative Item Frequency Plot',
                          type = "relative",
                          ylab = "Item Frequency (Relative)")
