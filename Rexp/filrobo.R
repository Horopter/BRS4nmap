source('fildir.R')
pkgTest('RCurl')
robocop <- function(myURL)
{
  path <- myURL
  if(substring(path, nchar(path)) != "/")
    path <- paste(path,"/",sep="")
  x <- do.call(rbind,strsplit(getURL(paste(path,"robots.txt",sep="")),"\n"))
  x[x!=""]
}
