install.packages("spotifyr")
library(spotifyr)

Sys.setenv(SPOTIFY_CLIENT_ID = '7c83827741ee4cbc9bd117a9cf608a39')
Sys.setenv(SPOTIFY_CLIENT_SECRET = '9c2a651fdabd472892b873644f774b09')

access_token <- get_spotify_access_token()

setwd("/Users/gianghale/Documents/GitHub/fa22-prj-pcbarko-schen176--mettler3-yc62-gianghl2/Old_Data")
ids <- read.table("extracted_ids.txt")
ids <- apply(ids, MARGIN=1,FUN=toString)
ids_list <- as.list(strsplit(ids, " "))

# write track audio features to csv
lapply(ids_list, function(x) write.table(get_track_audio_features(x), 'track_features_25k.csv', append=TRUE,col.names = FALSE, sep=',' ))

