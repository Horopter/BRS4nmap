nmapper <- function(opt="-F",ip)
{
  cmd <- paste("nmap",opt,ip,sep=" ")
  cess <- system(cmd, intern <- T)
  cess <- gsub(".*\r","",cess)
  cess <- cess[cess!=""]
}