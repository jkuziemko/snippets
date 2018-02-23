#Sample R script to pull most frequent words in Alteryx R tool:
    
    #Get Data
    Data <- read.Alteryx("Data", mode="data.frame")
    
    #Select column to analyze
    deficiency_description <- as.vector(Data$deficiency_description)
    
    #Split words in column
    split_description <- strsplit(deficiency_description, split = " ")
    str(split_description)
    unlisted_description <- unlist(split_description)
    
    #Count frequency of words and store as data frame
    description_word_count <- as.data.frame(table(words = unlisted_description))
    word_vector <- as.vector(description_word_count$words)
    
    #Select only words that are 4 or more characters
    long_words <- which(nchar(word_vector) >=4)
    long_words_df <- description_word_count[long_words, ]
    
    write.Alteryx(long_words_df, 1)
    