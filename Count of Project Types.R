inlibrary(RMySQL)
library(DBI)
# Connect to MySQL
con <- dbConnect(RMySQL::MySQL(), user='tableau', password='T4bl34U', dbname='usgbc', host='dw.usgbc.org')


# Query project types
project_types <- dbGetQuery(con,"SELECT project_type FROM project_details_clean")
split_project_types <- strsplit(project_types$project_type, split = ",")
unlisted <- unlist(split_project_types)
as.data.frame(table(unlisted))
# NOTE YOU HAVE ISSUES WITH DUPLICATES WITHIN THE SAME PROJECT...NEED TO FIGURE OUT HOW TO DEDUP WITHIN PROJECT ID
