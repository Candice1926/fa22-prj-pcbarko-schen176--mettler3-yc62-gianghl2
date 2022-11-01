
rm(list = ls(all.names = TRUE))
library(tidyverse)
library(dplyr)
library(data.table)

### practice data,3 character first sample, 4 character second sample
data<-readRDS("~/Desktop/Spotify_Practice_Data.RDS")
data1<-read.csv("~/Desktop/alltracks.csv")
data2<-read.csv("~/Desktop/alltracks1.csv")
data1$Character<-3
data2$Character<-4



### Check if datasets are unique from practice data
data1<-data1%>%
  mutate(unique = id %in% c(data$TrackID))

data2<-data2%>%
  mutate(unique = id %in% c(data$TrackID))

Unique_tracks1<-data1[which(data1$unique==FALSE),]
Unique_tracks2<-data2[which(data2$unique==FALSE),]
Unique_TRACKS1<-rbind(Unique_tracks1,Unique_tracks2)
length(unique(Unique_TRACKS1$id))

Unique_TRACKS<-Unique_TRACKS1[!duplicated(Unique_TRACKS1[8]),]
### Data has 42576 unique ID's 
length(unique(Unique_TRACKS1$id))

write.csv(Unique_TRACKS,"Combine_UniqueTracks.csv")



