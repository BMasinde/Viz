library(ggplot2)
library(plotly)
# d4

myplot=list()

p <- function(dataset){
  j<-1
  for (i in 4:ncol(dataset) ){
    print(i)
    myplot[[j]] <- ggplot(dataset, aes_string(colnames(dataset)[3], colnames(dataset)[i],color="League"))+
    geom_point()

    j<-j+1

  }
  
  grid.arrange(grobs=myplot)
   # return(myplot)
}

p(d4)
