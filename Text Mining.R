# load all required packages, install if not loaded
library(tm)	
library(SnowballC)
library(wordcloud)
library(wordcloud2)
library(RWeka)			
library(textir)
library(igraph)
library(maptpx)
library(lubridate)
library(ggplot2)
library(syuzhet)
library(scales)
library(dbplyr)
library(reshape2)
# read-in data from saved notepads first

x = readLines(file.choose()) 	# first, read-in data from ""

length(x)			# check its length

x1 = Corpus(VectorSource(x))  	# Constructs a source for a vector as input
x1
#View(x1)
x1 = tm_map(x1, stripWhitespace) 	# removes white space
x1 = tm_map(x1, tolower)		# converts to lower case
x1 = tm_map(x1, removePunctuation)	# removes punctuation marks
x1 = tm_map(x1, removeNumbers)		# removes numbers in the documents



tdm1 = TermDocumentMatrix(x1, control = list(weighting = function(x) weightTfIdf(x, normalize = FALSE), stopwords = TRUE));	# replace "i" by "I"		

tdm0 = TermDocumentMatrix(x1);			# gives regular TF weighing, Above gave TFIDF weighing

dim(tdm1)			# check its basic characteristics
windows()			# opens new windows & prevents over-writing of plots

makewordc(dtm1)
title(sub = "UNIGRAM - Wordcloud using TFIDF")

windows();	semantic.na(dtm1)

windows();	clusdend(dtm01)

windows();	makeposwordc(dtm1)

title(sub = "UNIGRAM - POSITIVE Wordcloud using TFIDF")

windows();	makenegwordc(dtm1)
title(sub = "UNIGRAM - NEGATIVE Wordcloud using TFIDF")

