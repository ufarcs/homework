
### Data Management in R ### 

# Import the rhino and lion data set with the following csv files:
# https://raw.githubusercontent.com/mydatastory/textbooks/blob/master/_moore/data/lionCrater.csv
# https://raw.githubusercontent.com/mydatastory/textbooks/blob/master/_moore/data/blackRhinoCrater.csv

lion <- 
rhino <- 

# Question 1
# Create a plot of the lion population size with the year on the x-axis. Include a title, axis labels.

lion_pop_plot <- plot(lion$Year, lion$Population, main="Lion Population", xlab="Year", ylab="Population")

# Question 2
# Create a plot of the black rhino population size with the year on the x-axis.
# This time make it a line plot. Include a title, axis labels, and the make the line dark green. 
# Use the parameter `lty=2` in the `plot` function to make the line dashed. You still need the 
# parameter to make it a line graph.

rhino_pop_plot <- plot(rhino$Year, rhino$Population, main="Rhino Population", xlab="Year", ylab="Population", 
                       col="darkgreen", type="l", lty=2)

# Question 3
# Looking at the graphs made above, is the lion population increasing or decreasing?
# Assign the correct answer as True.

Constant <- F
Only_decreasing <- F
Increasing_then_decreasing <- T
Only_increasing <- F
Decreasing_then_increasing <- F

# Question 4
# Is the rhino population increasing or decreasing? 
# Assign the correct answer as True.

Constant <- F
Only_decreasing <- F
Increasing_then_decreasing <- F
Only_increasing <- F
Decreasing_then_increasing <- T

# Question 5
# Run the two plots below, how would you describe their relationship?

plot(lion$Year, lion$Population, main="Lion Population", xlab="Year", ylab="Population")
plot(rhino$Year, rhino$Population, main="Rhino Population", xlab="Year", ylab="Population", 
     col="darkgreen", type="l", lty=2)

direct <- F
inverse <- T

# Question 6
# Use the par() function to create the setup for two plots with one column and two rows

answer6 <- par(mfrow=c(2,1))

# Question 7
# Create two new data frames lion2 and rhino2 that contain the subset of years that overlap between the
# two datasets (like we did in the last assignment). These new datasets will be used for the next plot.

lion2 <- subset(lion, lion$Year > 1979)
rhino2 <- subset(rhino, rhino$Year < 1993)

############# Come back to this ##############
# Question 8
# Create a line plot of the lion population sizes. On the same plot add the black rhino population 
# sizes as points. Make the lion population line purple and the black rhino population points red. 
# Includes a title and axis labels. You will need to set the limits of the y-axis from (0,100) otherwise 
# the rhino points will not be visible when you add them to the plot.

answer8 <- plot(lion2$Year, lion2$Population, type = "l", col = "purple", main = "Lion and Black Rhino Population", 
                xlab = "Year", ylab = "Population", ylim = c(0,100))
answer8_added_points <- points(rhino2$Year, rhino2$Population, col = "red")

# Question 9
# Add a legend to the top right of the plot you just made – make sure next to lion you have a purple line, 
# and next to black rhino you have a red point.

answer9 <- legend("topright", legend = c("Lion", "Black Rhino"), col = c("purple", "red"), 
                  lty = c(1,NA), pch = c(NA,1))

# Question 10
# Create a barplot showing the minimum population size for black rhino and lion. 
# Label the bars Lion and Rhino. Use the name `data`` when creating a data frame.

data <- c(min(lion$Population), min(rhino$Population))
names(data) <- c("Lion", "Rhino")
answer10 <- barplot(data)

# Question 11
# Create a side-by-side boxplot of the population size for lions and black rhinos – make sure to include a title, 
# and a label below each box to show which animal it represents.

answer11 <- boxplot(lion$Population, rhino$Population, names = c("Lion", "Rhino"), main = "Population Sizes")

# Question 12
# Create a histogram of the population size for black rhinos.

answer12 <- hist(rhino$Population, main = "Rhino Population Sizes", xlab = "Population Size")

# Question 13
# Add an orange vertical line to show the mean population size.

answer13 <- abline(v=mean(rhino$Population), col = "orange")









