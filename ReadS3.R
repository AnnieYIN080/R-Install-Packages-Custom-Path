install.packages(c('readr', "reticulate"))
library(readr)
library(reticulate)

py_install('sagemaker')
sagemaker <- import('sagemaker')
session <- sagemaker$Session()

path <- "s3://xx.csv"
df <- read_csv(
  file = sagemaker$s3$S3Downloader$read_file(path, sagemaker_session = session), 
  show_col_types = FALSE, 
  na = ''
)
