#Olive
library("ggplot2")
library(plotly)
olive <- read.csv("olive.csv")

View(olive)

p_o <- ggplot(olive, aes(x=olive$oleic, y=olive$palmitic, color = olive$linolenic)) + geom_point()
p_o

olive$linolenic2 <- cut_interval(olive$linolenic, n=4)

View(olive)

p_o2 <- ggplot(olive, aes(x=olive$oleic, y=olive$palmitic, color = olive$linolenic2)) + 
  geom_point()

p_o2

palmetic_vs_oleic <- ggplot(olive, aes(palmitic, oleic)) +
  geom_point(aes(color=linolenic2, size=linolenic2)) +
  geom_spoke(aes(angle=as.numeric(linolenic2),radius=as.numeric(linolenic2)))

palmetic_vs_oleic

oleic_vs_eicosenoic <- ggplot(olive, aes(x=olive$oleic, y=olive$eicosenoic, color = olive$Region)) + 
  geom_point()
oleic_vs_eicosenoic

oleic_vs_eicosenoic <- ggplot(olive, aes(x=oleic, y = eicosenoic, color = as.factor(Region)))+
  geom_point()

oleic_vs_eicosenoic

#question 4
olive$linoleic2 <- cut_interval(olive$linoleic, n=3)
olive$palmitic2 <- cut_interval(olive$palmitic, n=3)
olive$palmitoleic2 <- cut_interval(olive$palmitoleic, n=3)
View(olive)

oleic_vs_eicosenoic1 <- ggplot(olive, aes(x=oleic, y=eicosenoic)) + 
  geom_point(aes(color=linoleic2, size=palmitoleic2, shape=palmitic2))
oleic_vs_eicosenoic1

#question 5
oleic_vs_eicosenoic2 <- ggplot(olive, aes(x=oleic, y=eicosenoic)) + 
  geom_point(aes(color=Region, size=palmitoleic2, shape=palmitic2))
oleic_vs_eicosenoic2

#question 6 plotly
plot_ly(data = olive, labels=~Area, type = 'pie', showlegend = F) %>%
  layout(title = 'Proportion of Oils from different regions',
        xaxis = list(showgrid = F, zeroline = F, showticklables = F),
         yaxis = list(showgrid = F, zeroline = F, showticklables = F))
 


# Create a shareable link to your chart
# Set up API credentials: https://plot.ly/r/getting-started
chart_link = api_create(p, filename="pie-basic")
chart_link



