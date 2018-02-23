#Connect to SQL Server using RODBC
#Test Comment
library(RODBC)
ch <- odbcDriverConnect('driver={SQL Server};server=10.88.1.228;db=Props;trusted_connection=true')
sqlQuery(ch, 'Select count(*) FROM [Props].[dbo].[AllHotelDetails]')
