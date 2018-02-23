# Load the jsonlite package
library(jsonlite)
# Example 1 JSON data defined locally
# wine_json is a JSON
wine_json <- '{"name":"Chateau Migraine", "year":1997, "alcohol_pct":12.4, "color":"red", "awarded":false}'

# Convert wine_json into a list: wine
wine <- fromJSON(wine_json)

# Print structure of wine
str(wine)

# Example 2 JSON data from web
# Definition of quandl_url
quandl_url <- "http://www.quandl.com/api/v1/datasets/IWS/INTERNET_INDIA.json?auth_token=i83asDsiWUUyfoypkgMz"

# Import Quandl data: quandl_data
quandl_data <- fromJSON(quandl_url)

# Print structure of quandl_data
str(quandl_data)

# Example 3 JSON data from web
# Definition of the URLs
url_sw4 <- "http://www.omdbapi.com/?i=tt0076759&r=json"
url_sw3 <- "http://www.omdbapi.com/?i=tt0121766&r=json"

# Import two URLs with fromJSON(): sw4 and sw3
sw4 <- fromJSON(url_sw4)
sw3 <- fromJSON(url_sw3)

# Print out the Title element of both lists
print(sw4$Title)
print(sw3$Title)


# Is the release year of sw4 later than sw3?
sw4$Year > sw3$Year

print(sw4)
