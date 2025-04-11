library(dplyr)
library(tidyr)
library(reshape2)
library(recommenderlab)

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

#user input below

#name <= readline("Enter your name: ")
#age <= readline("Enter your age:")
#movie <= readline("Enter your favorite movie genre:")


#simulated user input
user.ratings <- data.frame(
    movies = c()

    rating = c()
)

wide_user <- dcast(user_ratings, . ~ movie, value.var = "rating")
wide_user <- wide_user[-1]

all_titles <- sort(unique(shortlist$title))

for (title in all_titles) {
  if (!(title %in% names(user_wide))) {
    user_wide[[title]] <- NA
  }
}

wide_user <- wide_user[, sort(names(wide_user))]


#user matrix
user_matrix <- as.matrix(wide_user)
user_rrm <- as(user_matrix, "realRatingMatrix")
