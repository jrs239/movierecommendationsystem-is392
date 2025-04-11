file_path <- "netflix_data.csv"
data<- read.csv(file_path, header = TRUE, sep = ",", stringsAsFactors = FALSE)
View(data)
col_names<-colnames(data)
print(col_names)

name <= readline("Enter your name: ")
age <= readline("Enter your age:")
movie <= readline("Enter your favorite movie genre:")