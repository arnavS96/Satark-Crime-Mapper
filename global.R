
library(tidyr)  # loads dplyr, tidyr, ggplot2 packages
library(dplyr)
library(ggplot2)
library(sf)         # simple features package - vector
library(raster)     # raster
library(plotly)     # makes ggplot objects interactive
library(mapview)    # quick interactive viewing of spatial objects
library(leaflet) 

lon_crime<-read.csv("lon_crime.csv")
crimedata<- lon_crime[, c("Month", "Longitude", "Latitude", "Crime.type")]
crimedata1<-cbind(crimedata,lat,lng)
crimedata1<-crimedata1[,-c(2,3)]
crime_names<-as.character(unique(crimedata1$Crime.type))