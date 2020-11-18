# load all required packages
library(utf8)
library(tm)	
library(SnowballC)
library(wordcloud)
library(RWeka)			
library(textir)
library(igraph)
library(maptpx)

#Import File and Convert to Corpus
x = readLines("reviews.txt",warn=FALSE,encoding = "UTF-8'") #read output file
str(x)
txt<-as.character(x)
x<-Corpus(VectorSource(x))
#cleaning
x1<-tm_map(x,tolower) #convert to Lowercase
x1<-tm_map(x1,removePunctuation) #remove Punctuation
x1<-tm_map(x1,removeNumbers) #remove Numbers
x1<- tm_map(x1, removeWords, stopwords::stopwords(language = "el",source = "misc")) #remove stopwords
x1<-tm_map(x1,stripWhitespace)
tdm<- TermDocumentMatrix(x1)
dtm<-t(tdm)
tdm<-as.matrix(tdm)
txt_df<-as.data.frame(tdm)

w <- rowSums(tdm)
w<-sort(rowSums(tdm),decreasing = TRUE)


#barplot
barplot(w,las=2, col = rainbow(30))

#wordcloud
wordcloud(words = names(w), random.order =F, colors= rainbow(20),scale = c(3,1))
CompStopwords<-c("ειναι", "απο","πω","αλλα","οτι","όταν", "€", "γιατί")
