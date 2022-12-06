
rm(list = ls(all.names = TRUE))
library(tidyverse)
library(dplyr)
library(data.table)

### practice data,3 character first sample, 4 character second sample
data<-readRDS("~/Desktop/Spotify_Practice_Data.RDS")
data2<-read.csv("~/Desktop/Spot_tracks_2.csv")
data3<-read.csv("~/Desktop/Spot_tracks_3.csv")
data4<-read.csv("~/Desktop/Spot_tracks_4.csv")


data2$Character_search<-2
### Check if datasets are unique from practice data
data2<-data2%>%
  mutate(unique = TrackID %in% c(data$TrackID))

data3<-data3%>%
  mutate(unique = TrackID %in% c(data$TrackID))

data4<-data4%>%
  mutate(unique = TrackID %in% c(data$TrackID))



Unique_tracks2<-data2[which(data2$unique==FALSE),]
Unique_tracks3<-data3[which(data3$unique==FALSE),]
Unique_tracks4<-data4[which(data4$unique==FALSE),]
Unique_TRACKS1<-rbind(Unique_tracks2,Unique_tracks3,Unique_tracks4)
length(unique(Unique_TRACKS1$TrackID))

Unique_TRACKS<-Unique_TRACKS1[!duplicated(Unique_TRACKS1[4]),]
### Data has 39050 unique ID's 
length(unique(Unique_TRACKS$TrackID))

Unique_TRACKS <- Unique_TRACKS %>% 
  mutate(Popularity_Quantized = cut(Popularity, breaks=c(0, 25, 50, 75, 100), include.lowest = TRUE)) 
  


Un_tracks<-Unique_TRACKS[,c("TrackID","SongName","Artist","Popularity","Danceability",
    "Energy","Key","Loudness","Mode","Speachiness",
    "Acousticness","Instrumentalness","Liveness","Valence","Tempo","Duration","Popularity_Quantized")]

## Combined dataset
un_tracks<-rbind(Un_tracks,data)

## 88816 unique ID's 49766 from sample data & 39050 from our own sample
length(unique(un_tracks$TrackID))

write.csv(un_tracks,"Combine_UniqueTracks.csv")



