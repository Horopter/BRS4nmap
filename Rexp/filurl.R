source('fildir.R')
pkgTest("devtools")
devtools::install_github('jayjacobs/tldextract')
library(tldextract)
getmeurl <- function(x)
{
  x<-gsub("^.*://","",x,ignore.case=T)
  url4u <- tldextract(x)
  url <- paste(url4u['domain'],url4u['tld'],sep=".")
}