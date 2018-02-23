#Get system date and format as needed for zip file
system_date <- Sys.Date()
date_string <- toString(system_date)
date_formatted <- gsub('-','',date_string)

#Specifiy file path for zip file
zipfile <- paste('O:/CurrentFileStore/OwnerReporting/FullExtracts/RM_OwnerInsights_Res_by_BookingDate_',date_formatted,'.zip')
zipfile_trim <- gsub(' ','',zipfile)
print(zipfile_trim)

# Set workign directory
setwd("O:/CurrentFileStore/OwnerReporting/FullExtracts")

# Select File(s)
files <- "QA_Full.csv"

# Zip files
zip(zipfile_trim,files)