
# asignment 2

baseball <- read.csv("baseball-2016.csv", sep = ",", header = TRUE)

myplot <-function(df, y_string){
  ggplot(df, aes_string(x = "V2", y = y_string, color = "League"))+
    geom_point()+
    geom_vline(xintercept = 0, color = "black")+
    geom_hline(yintercept = 0, color = "black")
}

myplot(d4, "Runs.per.game")
