source('fildir.R')
source('filurl.R')
source('filip.R')
source('filwho.R')
source('filrobo.R')
source('filnmap.R')
#avoiding the need for multiple reloads to get started with.
source('fildir.R')
source('filip.R')
source('filwho.R')
source('filrobo.R')
source('filnmap.R')
#On a better Rstudio (Linux version), this is not needed.


ROOT__ <- c("webscan")
make_dir(ROOT__)

gen_report <- function(name,url,domain_name,robots_txt,whois,nm)
{
  project_dir <- paste(ROOT__,"/",name,sep="")
  make_dir(project_dir)
  file_w(paste(project_dir,"/full_url.txt",sep=""),paste(" ",url))
  file_w(paste(project_dir,"/domain_name.txt",sep=""),paste(" ",domain_name))
  file_w(paste(project_dir,"/robots.txt",sep=""),paste(" ",robots_txt))
  file_w(paste(project_dir,"/whois.txt",sep=""),paste(" ",whois))
  file_w(paste(project_dir,"/nmap.txt",sep=""),paste(" ",nm))
}
retrievepage <- function(name,url)
{
  domain_name <- getmeurl(url);
  ip_address <- getmeip(url);
  nm <- nmapper(ip=ip_address);
  robots_txt <- robocop(url);
  whois <- doctorwho(domain_name);
  gen_report(name,url,domain_name,robots_txt,whois,nm)
}
## nm doesn't work on windows as of today's commit.