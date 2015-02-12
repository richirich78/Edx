install.packages("devtools")
install.packages ("Rtools")
library(devtools)
install_github("genomicsclass/dagdata")
install_github("ririzarr/rafalib")
dat<-read.csv("femaleMiceWeights.csv") # creating a new vector dat with the csv file attached to it
tab<-read.csv("msleep_ggplot2.csv")# another vector tab for msleep
class(tab)# If I want to find out the class of the vector in this case it is a dataframe
head(tab)# displays first few lines of the table
dim(tab)#gives dimensions- no. of obs and variables
colnam
es(tab)
tab$conservation# to extract particular col with specified name
tab$sleep_total
plot(tab$brainwt,tab$sleep_total)#plot extracted col in x and y (on the right)
plot(tab$brainwt,tab$sleep_total,log="x")
summary(tab$sleep_total)
tab[c(1,2),]# combine row 1 and 2- from dataset tab[c(1,2), _ ] means include all columns. If want to extract 
# specific column, specify column no. on RHS
tab[tab$sleep_total>18,]# similarly, sleep total >18 hrs but include all columns
tab$sleep_total[c(1,2)]# Combine row 1 and 2. No comma indicates exclusion of columns
mean(tab$sleep_total>18,)
mean(tab$sleep_total[c(22,37,43,62)]
     mean(tab$sleep_total[tab$sleep_total>18]) # finding mean from tab data set col sleep_total where 
     #sleep_total is  > 18h
     tab$sleep_total[which(tab$sleep_total>18)[1]]
     which(tab$sleep_total>18 & tab$sleep_rem<3)# which function extracts the ROW no. for specified within (). & can be used 
     # to combine 2 vectors/conditions
     sort(tab$sleep_total)# sort () will sort values in an ascending order
     order(tab$sleep_total)# order () arranges row numbers in order of ascending values. Output IS NOT VALUE
     #BUT ROW NO.
     tab$sleep_total[order(tab$sleep_total)]# oRDER() AS AN INDEX TO ORIGINAL VECTOR specifiesthe actual values assigned to 
     #rows
     tab$sleep_total[30]# gives value for row 30 in []
     rank(tab$sleep_total)# rank () gives rank to the assigned value of each row
     sort(tab$sleep_total)# sorts specified values in ascending order