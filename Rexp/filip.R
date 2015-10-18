getmeip <- function(url)
{
  if(Sys.info()['sysname']=="Linux")
  {
    cmd <- paste("host ",url)
    mess <- system(cmd,intern=T)
    cess <- do.call(rbind,strsplit(mess,cmd + " has address "))[1,2]
  }
  else if (Sys.info()['sysname']=="Windows")
  {
    cmd <- paste("nslookup ",url)
    mess <- system(cmd,intern=T)
    cess <- do.call(rbind,strsplit(mess[3],"Address:  "))[1,2]
  }
}