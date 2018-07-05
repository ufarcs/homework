
### Data Management in R ### 

# Import the rhino and lion data set with the following csv files:
# https://raw.githubusercontent.com/Gharv/Questions/master/lionCrater.csv
# https://raw.githubusercontent.com/Gharv/Questions/master/blackRhinoCrater.csv

lion <- 
rhino <- 

# Question 1
# Create a plot of the lion population size with the year on the x-axis. Include a title, axis labels.

lion_pop_plot <- plot(lion$Year, lion$Population, main="Lion Population", xlab="Year", ylab="Population")

# Question 2
# Create a plot of the black rhino population size with the year on the x-axis.
# This time make it a line plot. Include a title, axis labels, and the make the line dark green. 
# Use the parameter `lty=2` in the `plot` function to make the line dashed. You still need the parameter to make it a line graph.

rhino_pop_plot <- plot(rhino$Year, rhino$Population, main="Rhino Population", xlab="Year", ylab="Population", col="darkgreen", type="l", lty=2)

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
plot(rhino$Year, rhino$Population, main="Rhino Population", xlab="Year", ylab="Population", col="darkgreen", type="l", lty=2)

direct <- F
inverse <- T

# Question 6
# Use the par() function to create the setup for two plots with one column and two rows

answer6 <- par(mfrow=c(2,1))

