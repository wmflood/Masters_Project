library(ggplot2)
library(dplyr)
library(raster)
library(rgdal)

#creating a multispectral ndvi as a stand in until I have time to play with the
#hyperspectral data.

band4 = raster("LC09_L2SP_175084_20220117_20220119_02_T1_SR_B4.TIF")
band5 = raster("LC09_L2SP_175084_20220117_20220119_02_T1_SR_B5.TIF")
ndvi = (band5 - band4)/(band5 + band4)

plot(ndvi, col = rev(terrain.colors(10)), main = 'Landsat-NDVI')

#reading in a release from GitHub
