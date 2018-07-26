
### Data Management in R ### 

# Question 19 & 20.
# Import the rhino and lion data set with the following csv files:
# https://raw.githubusercontent.com/mydatastory/textbooks/master/_moore/data/lionCrater.csv
# https://raw.githubusercontent.com/mydatastory/textbooks/master/_moore/data/blackRhinoCrater.csv

lion <- read.csv("https://raw.githubusercontent.com/mydatastory/textbooks/master/_moore/data/lionCrater.csv")
rhino <- read.csv("https://raw.githubusercontent.com/mydatastory/textbooks/master/_moore/data/blackRhinoCrater.csv")

# Question 21
# Display the structure of the Lion data frame. Take a look at what is produced.

lion_str <- str(lion)

# Question 22
# Set the inccorect way to display the data in column 1 of the Lion data frame to NA. 

way1 <- lion[1]
way2 <- lion["Year"]
way3 <- NA             #lion$1
way4 <- lion$Year

# Question 23
# How do you access the 5th row of data in the Lion data frame? 

answer23 <- lion[5,]

# Question 24
# Save the first 6 rows of the Rhino data frame. 

answer24 <- head(rhino)

# Question 25
# Save the last 6 rows of the Rhino data frame.

answer25 <- tail(rhino)

# Question 26
# How many rows are in the Rhino data frame (answer with a function not a number)?

answer26 <- nrow(rhino)

# Question 27
# How many columns are in the Rhino data frame (answer with a function not a number)?

answer27 <- ncol(rhino)

# Question 28
# Look at the Year column for both Lions and Rhinos. Which years overlap? 
# Create two new data frames lion2 and rhino2 that only contain the overlapping years.
# Hint: use subset function along with > and < operators.

lion2 <- subset(lion, lion$Year > 1979)
rhino2 <- subset(rhino, rhino$Year < 1993)

# Question 29
# Create a new data frame called lion3 that only contains the years where the 
# population is over 50 individuals. How many rows are in this new data frame? 

lion3 <- subset(lion, lion$Population > 50)
lion3_rows_num <- nrow(lion3)

# Question 30
# Create a new data frame called rhino3 that only contains the years when the population 
# of rhinos is less than 12 individuals. How many rows are in this new data frame?  

rhino3 <- subset(rhino, rhino$Population < 12)
rhino3_rows_num <- nrow(rhino3)



