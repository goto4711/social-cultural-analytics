#Thanks to  https://www.r-bloggers.com/text-mining-the-complete-works-of-william-shakespeare/,

download_shakespeare <- function(){
	shakespeare_file <- "pg100.txt"
	if (!file.exists(shakespeare_file)) {
		 #http://www.gutenberg.org/cache/epub/100/pg100.txt
     	download.file("https://raw.githubusercontent.com/goto4711/social-cultural-analytics/master/sc.txt", 
                      destfile = shakespeare_file)
	}
	shakespeare <- readLines(shakespeare_file)
	#length(shakespeare)

	if (file.exists(shakespeare_file)) file.remove(shakespeare_file)
	shakespeare <- shakespeare[-(1:173)]
	shakespeare <- shakespeare[-(124195:length(shakespeare))]

	shakespeare <- paste(shakespeare, collapse = " ")
	shakespeare <- strsplit(shakespeare, "<<[^>]*>>")[[1]]
	dramatis.personae <- grep("Dramatis Personae", shakespeare, ignore.case = TRUE)
	shakespeare <- shakespeare[-dramatis.personae]
	return(shakespeare)
}
