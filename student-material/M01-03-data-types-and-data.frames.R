## Data types and data.frame ---------------------------------------------------

# We had a brief introduction to data types, vector and data.frames.

# Learning objectives
# - Data vector properties
# - Examine some built-in data.frames in R
# - Obtaining information about a data.frame: structures
# - Obtaining summaries of a data.frame and it's columns
# - Using functions with data.frames

# Replace _ to complete expressions and return the correct answer

# Restart R to remove previous results using: Ctrl/Cmd + shift + F10

# 1. Warm up with data types ----

# How many values are in this vector? What function can you use to answer this?
# Answer: _
number_vector <- c(1,5,6,7,3,4,5,8,7,3,2,7,8,9)
_

# Why does my_numbers / 5 not work? What are some key words in the error message?
# Answer: _
my_numbers <- c(1, 4, 3, 'missing', 6, 7)
my_numbers / 5

# What is the data type of the values in my_numbers? We can use class() for this question.
# Using class() is very helpful to understand objects and data types in R
# Does this explain why we cannot obtain a value for my_numbers / 5?
# Answer: _
class(_)

# What happens if we do vector arithmetic with NA present? Does the NA change?
# Answer: _
has_NA <- c(1, 4, 3, NA, 6, 7)
has_NA / 5

# What happens if we do a summary statistic (mean, sum, ...) with NA present?
mean(has_NA)

# How can you produce a mean value here? Use the help documentation
?mean
mean(has_NA, _)


# 2. Exploring data.frames ----

## 2.1. penguins ----

# The penguins dataset is a popular dataset to learn R with. It is simply loaded by 
# typing penguins
penguins

# There is a help file associated with it
?penguins

## data.frame properties ----

# When there are many rows in a data.frame and we print it in the console, we only
# we the bottom of it (and have to scroll back to the top to see the column names).
# We can use head() to limit printing of the first few rows
head(penguins)

# What type of object is the penguins dataset? We use the class() function to obtain the answer.
class(_)

# We can use the structure function str() to obtain a summary of a data.frame structure, 
# which is useful for understanding the number of rows and columns as well as the column
# types in a data.frame.

# Use str() below
# How many rows in are penguins? _
# How many columns? _
# What are the different column types? _
_(penguins)

# The summary() function provides numerical and count summaries of columns, and is
# also another useful function for exploring data.frames. Use the summary() function
# on the penguins dataset
summary(_)

# You can also use the nrow() and ncol() functions for row and column counts, respectively
# _ write you answer here
nrow(_)
_

# Likewise, you can check the data type of a single column using class() 
# e.g. class(penguins$column)
# Do this for bill_len and species columns

class(penguins$_)
class(_)   


## Statistical summaries ----

# Calculate the mean flipper_len (across all species). There are missing values
# in the data.
mean(_)


# To calculate the mean flipper_len across each species, we have to use tapply() with the
# column values, the group identifier and the mean function. We will later learn
# a nicer way to do this procedure
# Complete: x =  flipper_len column and INDEX = species column
# Note how we use "mean" and not "mean()"
tapply(X = _, INDEX = _, FUN = mean, na.rm = T)

# How many observations (rows) are there for each species? Use the table() function
_


## Visualising the data ----

# We can plot columns of the data using the plot() function. Depending on the data
# type chosen, different plots will be produced

# Plot body_mass (x) vs flipper_len (y). What type of plot is produced? Why do
# you think this happens? What are the data types used here?
# Answer: _
plot(x = penguins$_,
     y = _)

# Now plot Species (x) vs body_mass (y). What type of plot is produced? Why do
# you think this happens? What are the data types used here?
# Answer: _
plot(x = _, y = _)

# 2.2 PlantGrowth ----

# Examine the simple plant growth data.frame
PlantGrowth
?PlantGrowth

## data.frame properties ----

# How many columns and rows, and what are the data types in PlantGrowth?
# _
_(PlantGrowth)

# How many observations of each treatment group are there?
_(PlantGrowth)

## Statistical summaries ----

# Calculate the mean and standard deviation of weight by treatment group
tapply(x = _, INDEX = _, FUN = mean)
tapply(x = _, INDEX = _, FUN = _)

## Visualising the data ----

# Plot weight (y) verus treatment group (x).
_




## Conclusion ----
# We 
# - examined some data vector properties
# - examined some built-in data.frames in R
# - examined data.frame structure: data types, columns and rows
# - conducted some calculations on data.frame columns
# - plot data from a data.frame


