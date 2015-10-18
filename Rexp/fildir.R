make_dir <- function(directory)
{
  if(!dir.exists(directory))
  {
    dir.create(directory);
    print(paste(c("We have created the directory ",directory)));
  }
  else
  print("Couldn't create directory.It exists already.");
}

file_w <- function(file_with_path,data)
{
  if(!file.exists(file_with_path))
  {
   file.create(file_with_path);
    print("Open the file to see.");
  }
    sink(file_with_path, append = T);
    cat(as.character(data));
    sink()
    closeAllConnections()
}
pkgTest <- function(x)
{
  if (!require(x,character.only = TRUE))
  {
    install.packages(x,dep=TRUE)
    if(!require(x,character.only = TRUE)) stop("Package not found")
  }
}
pkgTest2 <- function(x)
{
  if (!require(x))
  {
    devtools::install_github(x)
    if(!require(x)) stop("Package not found")
  }
}