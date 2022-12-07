Prediction of Spotify Track Popularity by Acoustic Features
========================================================
author: pcbarko-schen176-mettler3-yc62-gianghl2 (Patrick, Stephanie, Matt, Yongxin, Giang)
date: Dec 6, 2022
autosize: true


Introduction
========================================================
- Spotify is a popular music streaming service with rich metadata about tracks, artists, albums.
- Goals of project:
+ Curate a novel dataset by generating random song ids
+ Perform exploratory analysis on the data
+ Perform statistical modeling on the data


Data Sampling
========================================================

Data sampling based on Spotify API Search endpoint in three scripts

- Bash script
- R script
- Python script

Bash script for data sampling
========================================================




```r
# Use a combination of alphabetic and numeric characters to query responses.
# Extracted track ids from the response json.
# Deduplicated the track ids to obtain about 25k results.

get_track_audio_features(ids_list[1])
```

```
# A tibble: 1 × 18
  danceability energy   key loudness  mode speechiness acousticness
         <dbl>  <dbl> <int>    <dbl> <int>       <dbl>        <dbl>
1        0.171  0.121     7    -18.4     1      0.0425        0.976
# … with 11 more variables: instrumentalness <dbl>, liveness <dbl>,
#   valence <dbl>, tempo <dbl>, type <chr>, id <chr>, uri <chr>,
#   track_href <chr>, analysis_url <chr>, duration_ms <int>,
#   time_signature <int>
```


R script for data sampling
========================================================
-
-


Python script for data sampling
========================================================


Exploratory Analysis
========================================================


Statistical Modeling
========================================================




For more details on authoring R presentations please visit <https://support.rstudio.com/hc/en-us/articles/200486468>.
