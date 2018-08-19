#source_url devtools

ipak <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg)) 
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}

#Get the Tidyverse

#tidy_pack <- c("devtools", "tidyverse", "stringr", "plyr", "lubridate")

ipak("tidyverse")

#Retrieve from dockerfile:
#Replace leading white spaces with nothing
#Replace whitespace + \ with ",
#Switch to grep mode and replace \n with empty space

course_packages <- c("GISTools", "OpenStreetMap", "NeuralNetTools", "NeuralNetTools", "RColorBrewer", "RedditExtractoR", "Rfacebook", "XML", "arules", "catdata", "cluster", "corrplot", "devtools", "dplyr", "fitdistrplus", "gapminder", "ggmap", "ggplot2", "ggraph", "ggrepel", "ggvis", "googleVis", "graphTweets", "gsheet", "gtrendsR", "gutenbergr", "httr", "imputeTS", "igraph", "jpeg", "jsonlite", "lubridate", "magrittr", "maps", "nnet", "pageviews", "plotly", "quanteda", "raster", "recommenderlab", "reshape2", "rpart", "rtweet", "rworldmap", "shiny", "spatstat", "swirl", "tidytext", "tm", "tmap", "topicmodels", "twitteR", "wikipediatrend", "wordcloud", "xts", "MASS", "mlogit", "caret", "survival")

ipak(course_packages)

#Source packages

install.packages("h2o", type="source", repos=(c("http://h2o-release.s3.amazonaws.com/h2o/latest_stable_R")))


list.of.packages <- c("Rgraphviz", "gtrendsR", "likert", "forecast", "pageviews", "AnomalyDetection", "gganimate", "gtrendsR", "qdapDictionaries", "qdapRegex", "qdapTools", "qdap")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) {
  require(devtools)
  install_github("jbryer/likert")
  install_github("robjhyndman/forecast")
  install_github("ironholds/pageviews")
  install_github("twitter/AnomalyDetection")
  install_github("dgrtwo/gganimate")
  install_github("PMassicotte/gtrendsR")
  install_github("trinker/qdapDictionaries")
  install_github("trinker/qdapRegex")
  install_github("trinker/qdapTools")
  #install_github("trinker/qdap")   
  install_github("goto4711/scaddh")
  source("https://bioconductor.org/biocLite.R")
  biocLite("Rgraphviz")
}

ipak('qdap')

rm(list=ls())
.rs.restartR()
