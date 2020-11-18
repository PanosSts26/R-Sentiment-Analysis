#get bag Of Words
words<-get("content",x1) #get words from corpus
words<-strsplit(words," ") 
words<-unlist(words)
length(words)

#import positive lexicon
positive_list<- read.table("positive_words_el.txt", fileEncoding="utf-8", header = FALSE, sep=",",stringsAsFactors=FALSE )
#import negative lexicon
negative_list<-read.table("negative_words_el.txt", fileEncoding="utf-8", header = FALSE, sep=",",stringsAsFactors=FALSE )
#loop
for (i in length(txt)){
  # counter initialization
  pos = 0
  neg = 0
  for (j in (1:length(words))){
    if (words[j] %in% positive_list[,1])
      pos = pos + 1
    else {
      if (words[j] %in% negative_list[,1])   
        neg = neg + 1
    } #else 1
  } #for 1
  print(pos)
  print(neg)
}#for 2


