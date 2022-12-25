#Y: is the number of customers entering a website, Y~Pois(lambda)
#Lambda in {1,3,5,10}
#Compute the probability of Y for each lambda, plot them and compare them.

#Scatter Plot of Customers Entering in the Website. 
#Sequence 0, 100. Lambda 5.  
x_dpois <- seq(0, 100, by = 1)
y_dpois <- dpois(x_dpois, lambda = 5)
x_dpois
y_dpois=as.data.frame(y_dpois)
y_dpois
head(y_dpois)
colnames(y_dpois)=c("probability")
x_dpois=as.data.frame(x_dpois)
head(x_dpois)
fdtp=cbind(x_dpois,y_dpois)
head(fdtp)
colnames(x_dpois)=c("sequence")
scatter.smooth(x=fdtp$sequence,y=fdtp$probability)
library(ggplot2)
g0=ggplot(fdtp,aes(x=sequence,y=probability))
g0+geom_point(color="red",shape=20, size=2)+
  theme_classic()+
  geom_vline(xintercept = 5, linetype='dashed')
#This graph demonstrates that from 1 to 10, a high number of customers are entering the website, and that number of customers is highest in the fifth sequence. 
#And the probability of entering customers in the fifth sequence is also high. 

#Scatter Plot of Customers Entering in the Website. 
#Sequence 0, 100. Lambda 3.   
n_dpois <- seq(0, 100, by = 1)
t_dpois <- dpois(n_dpois, lambda = 3)
n_dpois
t_dpois=as.data.frame(t_dpois)
t_dpois
head(t_dpois)
colnames(t_dpois)=c("probability")
n_dpois=as.data.frame(n_dpois)
head(n_dpois)
fdts=cbind(n_dpois,t_dpois)
head(fdts)
colnames(fdts)=c("sequence")
head(fdts)
scatter.smooth(x=fdts$,y=fdts$probability)
library(ggplot2)
g1=ggplot(fdts,aes(x=sequence,y=probability))
g1+geom_point(color="blue",shape=20, size=3)+
  theme_classic()+
  geom_vline(xintercept = 3, linetype='dashed') 
#In this graph, it can be seen that from 1 to 10, a high number of customers are visiting the website, and that number increases in the third sequence. 
#Furthermore, there is a high probability that customers will enter during the third sequence.

#Scatter Plot of Customers Entering in the Website. 
#Sequence 0, 100. Lambda 1.   
h_dpois <- seq(0, 100, by = 1)
f_dpois <- dpois(h_dpois, lambda = 1)
h_dpois <- seq(0, 100, by = 1)
f_dpois <- dpois(h_dpois, lambda = 5)
h_dpois
f_dpois=as.data.frame(f_dpois)
f_dpois
head(f_dpois)
colnames(f_dpois)=c("probability")
h_dpois=as.data.frame(h_dpois)
head(h_dpois)
fdtb=cbind(h_dpois,f_dpois)
head(fdtb)
colnames(h_dpois)=c("sequence")
scatter.smooth(x=fdtp$sequence,y=fdtp$probability)
library(ggplot2)
g2=ggplot(fdtp,aes(x=sequence,y=probability))
g2+geom_point(color="purple",shape=20, size=3)+
  theme_classic()+
  geom_vline(xintercept = 4.5, linetype='dashed')
#This graph shows that between the numbers 1 and 14, a significant percentage of consumers check the website, and that percentage increases in the 4.5 sequence. 
#Additionally, there is a high probability that customers will enter during the 4.5 sequence.

#Scatter Plot of Customers Entering in the Website. 
#Sequence 0, 100. Lambda 10.   
a_dpois <- seq(0, 100, by = 1)
s_dpois <- dpois(a_dpois, lambda = 10)
a_dpois
s_dpois=as.data.frame(s_dpois)
s_dpois
head(s_dpois)
colnames(s_dpois)=c("probability")
a_dpois=as.data.frame(a_dpois)
head(a_dpois)
fdty=cbind(a_dpois,s_dpois)
head(fdty)
colnames(a_dpois)=c("sequence")
scatter.smooth(x=fdtp$sequence,y=fdtp$probability)
library(ggplot2)
g0=ggplot(fdtp,aes(x=sequence,y=probability))
g0+geom_point(color="magenta",shape=20, size=2)+
  theme_classic()+
  geom_vline(xintercept = 4.5, linetype='dashed')
#This graph shows that a lot of visitors are coming to the website from 1 to 10, and that number is largest in the 4.5 sequence. 
#Additionally, there is a high probability that customers will enter during the 4.5 sequence.
