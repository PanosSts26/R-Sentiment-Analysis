#load libraries
library(rvest)
library(NLP)
library(magrittr)
library(stringr)


link<-""#get link
page<- read_html(link) 
page_text<-page %>% #gets text from webpage
  html_nodes("p") %>%
  html_text()
txt<- as.String(page_text) #convert character to string
txt<-str_replace_all(txt, "[\r\n]" , "")#removes line breaks
writeLines(txt, "output.txt") #creates output text file


#Append
link<-""#get link
page<- read_html(link) 
page_text<-page %>% #gets text from webpage
  html_nodes("p") %>%
  html_text()
txt2<- as.String(page_text) #convert character to string
txt2<-str_replace_all(txt2, "[\r\n]" , "")#removes line breaks
write(txt2,"reviews.txt",append=TRUE) #appends string to output file
