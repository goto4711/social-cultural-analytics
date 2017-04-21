#source_url devtools

ipak <- function(pkg){
    new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
    if (length(new.pkg)) 
        install.packages(new.pkg, dependencies = TRUE)
    sapply(pkg, require, character.only = TRUE)
}

#Get the Tidyverse
	
tidy_pack <- c("devtools", "tidyverse", "stringr", "plyr", "lubridate")

ipak(tidy_pack)

packages <- c("RColorBrewer", "NeuralNetTools", "RedditExtractoR", "XML", "catdata",
				"corrplot", "cluster", "ggplot2", "h2o", "httr",
				"jpeg", "maps", "nnet", "reshape2")
ipak(packages)	

#slam_url <- "http://cran.r-project.org/src/contrib/Archive/slam/slam_0.1-37.tar.gz" 
#install.packages(slam_url, repos = NULL, type = "source")			
				
packages2 <- c("slam", "tm", "topicmodels", "twitteR", "wordcloud", "igraph", "hexbin")
ipak(packages2)				

ngram_url <- "http://cran.r-project.org/src/contrib/Archive/ngramr/ngramr_1.4.5.tar.gz"
install.packages(ngram_url, repos = NULL, type = "source")

packages3 <- c("ggmap", "rworldmap", "jsonlite", "rworldmap", "googleVis", "magrittr", "dplyr", "ggrepel")
ipak(packages3)

packages4 <- c("arules", "Rfacebook", "ggvis", "shiny", "recommenderlab", "rpart")
ipak(packages4)

packages5 <- c("plyr","readr","maptools","GISTools","raster","tmap","OpenStreetMap","ggmap", "spatstat")
ipak(packages5)	

packages6 <- c("gsheet","likert","MASS","fitdistrplus")
ipak(packages6)	
	
rm(list=ls())
