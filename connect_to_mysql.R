library(RMySQL)
library(DBI)
# Connect to MySQL
con <- dbConnect(RMySQL::MySQL(), user='tableau', password='T4bl34U', dbname='usgbc', host='dw.usgbc.org')
# list tables
# dbListTables(con)

# Read entire data from table
# dbReadTable(con,"project_details_clean")

#Query data
dbGetQuery(con,"SELECT id, name FROM project_details_clean WHERE date_registered > '2016-11-01' LIMIT 10")

#Disconnect database
dbDisconnect(con)
