doctorwho <- function(x)
{
  if (Sys.info()['sysname']=="Windows")
  {
    print("This function would work only if whoiscl is installed in windows")
    cmd<-paste("whoiscl -r ",x)
    cess<-system(cmd, intern = T)
    cess<-gsub(".*\r","\r\n",cess)
    cess<-cess[cess!=""]
  }
  else if (Sys.info()['sysname']=="Linux")
  {
    cmd<-paste("whois ",x)
    cess<-system(cmd, intern = T)
    cess<-gsub(".*\r","\n",cess)
    cess<-cess[cess!=""]
  }
}