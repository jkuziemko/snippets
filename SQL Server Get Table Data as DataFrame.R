# Retrieve data from SQL connection as a data frame
res <- sqlQuery(ch, 'Select * FROM [Props].[dbo].[AllHotelDetails]', max = 20)
head(res)
str(res)