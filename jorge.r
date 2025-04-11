library(dplyr)
library(tidyr)
library(reshape2)
library(recommenderlab)

#name <= readline("Enter your name: ")
#age <= readline("Enter your age:")
#movie <= readline("Enter your favorite movie genre:")

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
