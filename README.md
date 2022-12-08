# fa22-prj-pcbarko-schen176--mettler3-yc62-gianghl2

**This is the repository for the Fall 2022 STAT447 group project for:**

- Patrick Barko pcbarko
- Stephanie Chen schen176
- Matt Mettler mettler3
- Giang Ha Le gianghl2
- Yongxin Cai yc62

Spotify is an audio streaming service used by *hundreds of millions* of people. For this group project, we sought to model the popularity of songs based on several acoustic and sonic attributes. There are several published Spotify datasets, but these are several years old. Our **fist objective** was to create a new, *updated* dataset of Spotify songs. We accomplished this using python and R scripts to generate random song IDs and using these to search the Spotify API. Our **second objective** was to model the use song popularity (dependent variable) from acoustic attributes (independent variables). Others have attempted to model popularity from the acoustic attributes and genre, but most used *linear models that did not perform well*. We used alternative approaches to modeling/predicting song popualrity from acoustic attributes and compared them. 

We were successful in generating a new spotify database of 579,131 unique songs including various metadata: track ID, artist, a popularity index, and several acoustic/sonic features. Exploratory analysis included principal component analysis and correlation analysis between popularity and acoustic/sonic attributes and among the different acoustic/sonic attributes. We modeled song popularity from the acoustic/sonic attributes using regression and classification models. We found that random forest models performed best with our data and that liner models had comparably poor performance. 

In completing this project, our group developed several new capabilities including generating random alphanumeric strings to query the Spotify API, cleaning a very large dataset (scanning for duplicated, etc.), interactive plots and tables using Shiny, and comparing performance of several different models. 

Code and results for the final project, the presentation slides are located in the "Final_Project" directory, and intermediate versions are located in the "Old_Analysis" and "Old_Data" directories. The pdf version of the report "Final_Project_Final_Version.pdf" does not contain interactive plots in the exploratory data analysis section. To view the interactive plots, the file "Final_Project_Final_Version.Rmd" needs to be rendered as HTML (this will take a few minutes due to the large dataset).

Our presentation recording can be found in [this Zoom sharable link](https://illinois.zoom.us/rec/share/wgnldplAVJ11KXBDpZqj_iaggfZTFVcBZxsaJJAXLqCjPNkaHFvC40NBdPi3-f9e.Ly11BeAL20kEPCLA 
) or [Mediaspace](https://mediaspace.illinois.edu/media/t/1_mo51579s) or [Box](https://uofi.box.com/s/ukrucds8tv3i4kt2srkleohk1dxb6wmw)




