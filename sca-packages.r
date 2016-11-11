ipak <- function(pkg){
    new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
    if (length(new.pkg)) 
        install.packages(new.pkg, dependencies = TRUE)
    sapply(pkg, require, character.only = TRUE)
}

#Get the Hadleyverse
ipak("devtools")
library(devtools)
install_github("imanuelcostigan/hadleyverse")
library(hadleyverse)
load_the_hadley_verse()


packages <- c("RColorBrewer", "NeuralNetTools", "RedditExtractoR", "XML", "catdata",
				"corrplot", "cluster", "ggplot2", "h2o", "httr",
				"jpeg", "maps", "nnet", "reshape2")
ipak(packages)	

slam_url <- "http://cran.r-project.org/src/contrib/Archive/slam/slam_0.1-37.tar.gz" 
install.packages(slam_url, repos = NULL, type = "source")			
				
packages2 <- c("tm", "topicmodels", "twitteR", "wordcloud", "igraph")
ipak(packages2)				

ngram_url <- "http://cran.r-project.org/src/contrib/Archive/ngramr/ngramr_1.4.5.tar.gz"
install.packages(ngram_url, repos = NULL, type = "source")

packages3 <- c("ggmap", "rworldmap", "jsonlite", "rworldmap", "googleVis", "magrittr", "dplyr")
ipak(packages3)

packages4 <- c("arules", "Rfacebook", "ggvis", "shiny", "ggprel", "recommenderlab", "rpart")
ipak(packages4)
