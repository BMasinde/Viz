# Libraries
library(plotly)

# Read in data
aegypti <- read.csv("aegypti_albopictus.csv", header = TRUE, sep = ",")

# Mapbox access token
Sys.setenv('MAPBOX_TOKEN' = 'pk.eyJ1IjoiYnJpbWEiLCJhIjoiY2ptYm5pbXZ6MDd1czNwcW10OHN4Y2theSJ9.SNmXpvkIL14Wn1ebhRr_ug')

# map_box
mosq_dist <- plot_mapbox(aegypti, x= ~X, y =~Y, mode)

df = read.csv('https://raw.githubusercontent.com/bcdunbar/datasets/master/meteorites_subset.csv')

                         