Predicting Song Popularity Using Pseudo Random Sampling of Spotify Catalog
========================================================
author: pcbarko-schen176-mettler3-yc62-gianghl2 (Patrick, Stephanie, Matt, Yongxin, Giang)
date: Dec 6, 2022
autosize: true


Introduction
========================================================
- Spotify is a popular music streaming service with rich metadata about tracks, artists, albums.
- Project's question: How can a track's popularity be predicted by its acoustic attributes?
- Goals of the project:
  + Curate a novel dataset by generating random song ids.
  + Perform exploratory analysis on the dataset
  + Perform statistical modeling (classification models, regression models) on the data where the popularity index is the
  response variable and the acoustic attributes are the explanatory variables.


Data Sampling
========================================================
Our approach
- Generate random song ids and use the Spotify API Search query to get responses.
- Extract audio features ("Danceability","Energy","Key","Loudness","Mode","Speachiness",
"Acousticness","Instrumentalness","Liveness","Valence","Tempo","Duration",
"Popularity_Quantized") to form the dataset
- Preprocess the dataset (merging, deduplication, removing NAs)

Data sampling with the Spotify API Search endpoint in three languages
- [Bash script to extract random song ids](https://github.com/illinois-stat447/fa22-prj-pcbarko-schen176--mettler3-yc62-gianghl2/blob/main/Old_Analysis/spotify_scraping.sh) (25k results) and [spotifyr to get the track audio features](https://github.com/illinois-stat447/fa22-prj-pcbarko-schen176--mettler3-yc62-gianghl2/blob/main/Old_Analysis/track_features_25k.R)
- [Sampling with R and Search Spotify](https://github.com/illinois-stat447/fa22-prj-pcbarko-schen176--mettler3-yc62-gianghl2/blob/main/Old_Analysis/Sampling_Using_SearchSpotify.R) (~88k results)
- [Python Spotify Crawler](https://github.com/illinois-stat447/fa22-prj-pcbarko-schen176--mettler3-yc62-gianghl2/blob/main/Old_Analysis/Use%20Python%20to%20get%20Spotify%20Data) (573,131 results)

Exploratory Analysis
========================================================


Statistical Modeling - Overall Results
========================================================

<div align="center"> Regression models </div>
<div align="center">
<img src="https://raw.githubusercontent.com/illinois-stat447/fa22-prj-pcbarko-schen176--mettler3-yc62-gianghl2/main/Final_Project/reg_summary.png" width=600 height=400>
</div>

<div align="center"> Classification models </div>
<div align="center">
<img src="https://raw.githubusercontent.com/illinois-stat447/fa22-prj-pcbarko-schen176--mettler3-yc62-gianghl2/main/Final_Project/cl_summary.png" width=600 height=400>
</div>


Statistical Modeling - Accuracy with Cross-Validation Plots for GBM
========================================================
<div align="center">
<img src="https://raw.githubusercontent.com/illinois-stat447/fa22-prj-pcbarko-schen176--mettler3-yc62-gianghl2/main/Final_Project/gbm_cl_int_depth_iter.png" width=800 height=500>
</div>

<div align="center">
<img src="https://raw.githubusercontent.com/illinois-stat447/fa22-prj-pcbarko-schen176--mettler3-yc62-gianghl2/main/Final_Project/gbm_reg_int_depth_iter.png" width=800 height=500>
</div>

Statistical Modeling - Accuracy with Cross-Validation Plots for SVM
========================================================
<div align="center">
<img src="https://raw.githubusercontent.com/illinois-stat447/fa22-prj-pcbarko-schen176--mettler3-yc62-gianghl2/main/Final_Project/svm_cl_cost.png" width=800 height=500>
</div>

<div align="center">
<img src="https://raw.githubusercontent.com/illinois-stat447/fa22-prj-pcbarko-schen176--mettler3-yc62-gianghl2/main/Final_Project/svm_reg_cost.png" width=800 height=500>
</div>

Statistical Modeling - Variable Importance
========================================================
<div align="center"> Regression models </div>
<div align="center">
<img src="https://raw.githubusercontent.com/illinois-stat447/fa22-prj-pcbarko-schen176--mettler3-yc62-gianghl2/main/Final_Project/rf_reg_varimp.png" width=600 height=400>
</div>

<div align="center"> Classification models </div>
<div align="center">
<img src="https://raw.githubusercontent.com/illinois-stat447/fa22-prj-pcbarko-schen176--mettler3-yc62-gianghl2/main/Final_Project/rf_cl_varimp.png" width=600 height=400>
</div>

Conclusion
========================================================
- Our data scraping techniques yielded a sizable dataset.
