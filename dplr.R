install.packages("dplyr")
library(dplyr)
ysaving=read.csv("saving.csv")
head(ysaving)
unique(ysaving$educ)
feduc=filter(ysaving,educ==16)
feduc
#education and age
edunage=filter(feduc,(educ=="16"|educ=="17")& age=="33")
unique(ysaving$educ)
filter(ysaving,size %in% c(3,5))
filter(ysaving,sav %in% c("1200","1017"))
names(ysaving)
head(arrange(ysaving,(size)))
head(arrange(ysavineg,age))
#data manipulation with dplyr package
names(ysaving)
select(ysaving,c(cons,size,sav))
select(ysaving,age,black)
select(ysaving,educ:age)
select(ysaving,-(black:educ))
#data manipulation with dplyr package
names(ysaving)
ysaving=rename(ysaving,inc=cons)
head(ysaving)
#data manipulation with dplyr package
head(ysaving)
head(mutate(ysaving,sav=educ))
#data manipulation with dplyr package
summarise(ysaving,mean(age),mean(educ))
educ=group_by(ysaving,age)
#data manipulation with dplyr package
educ=pull(ysaving,inc)
#data manipulation with dplyr package
dim(ysaving)
sampledblack=sample_n(ysaving,100)
head(sampledblack)
