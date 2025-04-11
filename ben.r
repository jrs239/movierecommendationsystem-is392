file_path <- "imdb_top_1000.csv"
data<- read.csv(file_path, header = TRUE, sep = ",", stringsAsFactors = FALSE)
col_names<-colnames(data)

# Check for missing values and na values
missing_values <- sapply(data, function(x) sum(is.na(x)))
na_values <- sapply(data, function(x) sum(x == "NA"))
print(missing_values)

# check for duplicates (if there are any... IDK)
duplicates <- duplicated(data)
print(paste("Number of duplicate rows:", sum(duplicates))) # print the number of duplicate rows
#paste 

# Get a list the well rated movies
# Assuming the dataset has a 'rating' column and a 'title' column
popular_movies <- data[order(data$rating, decreasing = TRUE), ]
popular_movies <- popular_movies[1:50, ] # Select top 50 movies
# Print the titles of the popular movies
print(popular_movies$title)


ten_random_movies <- data[sample(nrow(data), 10), ] # Select 10 random movies
print(ten_random_movies$title) # Print the titles of the random movies
# convert the titles to a list
list_of_movies <- as.list(ten_random_movies$title)