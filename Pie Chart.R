install.packages("wooldridge")
library(wooldridge)
xdata=saving
head(xdata)
names(xdata)
summary(xdata$sav)
catxdata=c()
for(k in 1:length(xdata$sav)){if(xdata$sav[k]<3){catxdata[k]="smallsav"}else if(xdata$sav[k]>=3&xdata$sav[k]<7){catxdata[k]="mediumsav"}else {catxdata[k]="largesav"}}
savAmount=cbind(xdata$sav)
View(savAmount)
install.packages("ggplot2")
library(ggplot2)
head(xdata$sav)
fdtsav=table(xdata$sav)
fdtsav=as.data.frame(fdtsav)
fdtsav
colnames(fdtsav)=c("sav","Count")
xdata=ggplot(fdtsav, aes(x="", y=Count, fill=sav))
xdata=g0+geom_col()+
  coord_polar(theta = "y")+
  theme_void()+
  theme(plot.title = element_text(colour = "green",
                                  size = 14, 
                                  face = "bold", 
                                  hjust = .5))+
  ggtitle('sav Distribution of employees')+
  geom_text(aes(label=Count), 
            position = position_stack(vjust = .5))+
  scale_fill_manual(values = c('#EC754A', '#BE2A3E'))+
  theme(legend.position = 'bottom')
ggsave('savDist.png')
xdata
