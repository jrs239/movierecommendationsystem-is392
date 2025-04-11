# install.packages("recommenderlab")
library(recommenderlab)
file_path <- "imdb_top_1000.csv"
# Load data
netflix_data <- read.csv(file_path, header = TRUE, sep = ",", stringsAsFactors = FALSE)
netflix_data_ratings <- netflix_data[netflix_data$rating != 0, ]
netflix_data_movies <- netflix_data[netflix_data$title == 0, ]
# Prepare training matrix (from full ratings data)
movie_data <- merge(netflix_data_ratings, netflix_data_movies, by = "show_id")
rating_matrix <- dcast(movie_data, userId ~ title, value.var = "rating")
rating_matrix <- rating_matrix[,-1]
rating_matrix <- as.matrix(rating_matrix)
rating_matrix <- as(rating_matrix, "realRatingMatrix")

# Train recommender
rec_model <- Recommender(rating_matrix, method = "UBCF")
