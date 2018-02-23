library(RMySQL)
library(DBI)
# Connect to MySQL
sf_con <- dbConnect(RMySQL::MySQL(), user='tableau', password='T4bl34U', dbname='sf', host='dw.usgbc.org')

# query from sf_cases
subjects <- dbGetQuery(sf_con,"SELECT Subject FROM sf_cases WHERE Date(CreatedDate) >='2016-06-15'")
split_subjects <- strsplit(subjects$Subject, split = " ")
str(split_subjects)
unlisted_subjects <- unlist(split_subjects)
subject_word_count <- as.data.frame(table(words = unlisted_subjects))
word_vector <- as.vector(subject_word_count$words)
long_words <- which(nchar(word_vector) >=4)
long_words_df <- subject_word_count[long_words, ]
long_words_df[order(long_words_df$Freq, decreasing = TRUE), ]
