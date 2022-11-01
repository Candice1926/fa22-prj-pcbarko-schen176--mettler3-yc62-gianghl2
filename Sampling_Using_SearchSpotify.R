rm(list = ls(all.names = TRUE))
devtools::install_github('charlie86/spotifyr')
library(spotifyr)
library(MASS)
library(tidyverse)
library(dplyr)
library(stringi)
library(parallel)
library(data.table)
library(foreach)
Sys.setenv(SPOTIFY_CLIENT_ID = '')
Sys.setenv(SPOTIFY_CLIENT_SECRET = '')



# function ran inside mylist function to get audio features of sampled tracks
spot_id_track_check<-function(x) get_track_audio_features(x)  

mylist<-function(x){
  xL<-c()
  st_char<-stri_rand_strings(2, x, pattern = "[A-Za-z0-9]")## generate random strings to sample from spotify search
  xL<-foreach(i=st_char) %do% {  
    #search track returns tracks from spotify API
    search_spotify(
      i,
      type = "track",
      market = NULL,
      limit = 50,
      offset=0,
      include_external = NULL,
      include_meta_info = FALSE)
    
  }
  xt<-xL
  # bind 
  sp_s<-bind_rows(xt, .id = "column_label")
  x_id<-sp_s$id
  
  ## get audio track features
  sp_f<-spot_id_track_check(x_id)  
  
  ## return two dataframes,track information and audio features 
  return(list(sp_s,sp_f))
}
sp_feat<-mylist(x)

### Replicate function to get large dataset of spotify tracks
x<-replicate(n=200, mclapply(3,function(x){mylist(x)},mc.cores = 48))

# remove NA
sp_f2<-x[!(is.na(x ))]

## Beind and seperate dataframes to then reincorporate into one dataframe
sp_s1<-bind_rows(x[1:200],.id = "column_label")
sp_s2<-sp_s1[!(is.na(sp_s1$explicit )),]
sp_s2<-sp_s2[,1:30]


sp_f2<-sp_s1[(is.na(sp_s1$explicit)),]
sp_f2<-sp_f2[,31:44]

sp_all<-cbind(sp_s2,sp_f2)

sp_s2[3,]
sp_f2[3,]
SP_ALL<-sp_all

#########################################
#Check if all track id's are unique, if not second line removes duplicates
length(unique(SP_ALL$id))
sp_all_unique<-SP_ALL[!duplicated(SP_ALL[8]),]

#######################################
