# Q11. In the dataset provided for this Quiz, what are the column names of the dataset? 
# Q12. Extract the first 2 rows of the data frame and print them to the console. What does the output look like?
read.table('hw1_data.csv', sep = ',', nrows = 2, header = TRUE)
# Q13. How many observations (i.e. rows) are in this data frame?
data <- read.table('hw1_data.csv', sep = ',', header = TRUE)
str(data)
# Q14. Extract the last 2 rows of the data frame and print them to the console. What does the output look like?
read.table('hw1_data.csv', sep = ',', header = TRUE, skip = 151)
# Q15. What is the value of Ozone in the 47th row?
data$Ozone[47]
# Q16. How many missing values are in the Ozone column of this data frame?
sum(is.na(data$Ozone))
# Q17. What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
ozone_data <- data$Ozone[!is.na(data$Ozone)]
sum(ozone_data)/sum(!is.na(data$Ozone))
# Q18. Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
data2 <- data[data$Ozone > 31 & data$Temp > 90 & !is.na(data$Solar.R),]
data3 <- data2$Solar.R[!is.na(data2$Solar.R)]
sum(data3)/length(data3)
# Q19. What is the mean of "Temp" when "Month" is equal to 6? 
data4 <- data[data$Month == 6, "Temp"]
sum(data4)/length(data4)
# Q20. What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?
data5 <- data[data$Month == 5 & !is.na(data$Ozone) , 'Ozone']
max(data5)


