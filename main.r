file_path <- "netflix_data.csv"
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