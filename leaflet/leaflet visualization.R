# Define latitude and longitude randomly 
rand_lng <- function(n=10) rnorm(n, -93.65, 0.01)
rand_lat <- function(n=10) rnorm(n, 42.0285, 0.01)
library(leaflet)
m <- leaflet() %>% addTiles()
m %>% clearBounds()
m %>% addPopups(rand_lng(), rand_lat(), "Popping up")
m %>% addMarkers(rand_lng(), rand_lat())



# Define latitude and longitude randomly 
rand_lng <- function(n=10) rnorm(n, -93.65, 0.01)
rand_lat <- function(n=10) rnorm(n, 42.0285, 0.01)
library(leaflet)
m <- leaflet() %>% addTiles()
m %>% clearBounds()
m %>% addPopups(rand_lng(), rand_lat(), "Popping up")
m %>% addMarkers(rand_lng(), rand_lat())
m %>% addMarkers(rand_lng(), rand_lat(), popup= paste("A Letter", 
                                                      sample(LETTERS, 10)))
m %>% addCircles(rand_lng(40), rand_lat(40), radius = runif(40,40, 140))
