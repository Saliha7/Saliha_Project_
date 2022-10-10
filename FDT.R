irisData = read.csv(url('https://gist.githubusercontent.com/curran/a08a1080b88344b0c8a7/raw/0e7a9b0a5d22642a06d3d5b9bcbad9890c8ee534/iris.csv'))
names(irisData)
FDT = function(a){
  absloutFrequency = table(a)
  relativeFrequency = round(prop.table(absloutFrequency)*100,2)
  cumlativeFrequency = cumsum(relativeFrequency)
  
  iris_FDT = cbind(absloutFrequency,relativeFrequency,cumlativeFrequency)
  
  
  return(iris_FDT)
}
FDT(irisData$sepal_width)
newCat = c ()
summary(irisData)
for(a in 1:length(irisData$petal_length) ) {
  if(irisData$sepal_width[a]<=2){
    newCat[a]="Small"
  }else if(irisData$sepal_width[a]>2 &  irisData$sepal_width[a]<=3){
    newCat[a]="medium "
  }else {
    newCat[a]="large"
  }
}
newVar = cbind(irisData$petal_length,newCat)
head(irisData)
View(newVar)
FDT(newCat)
