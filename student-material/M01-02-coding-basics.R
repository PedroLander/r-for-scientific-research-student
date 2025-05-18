## Coding basics ---------------------------------------------------------------

# We are familiar with some basics of R now. Time to complete some exercises.

# Replace _ to complete expressions and return the correct answer

# Restart R to remove previous results using: Ctrl/Cmd + shift + F10

# Learning objectives
# - Conduct basic math operations with R
# - Assigning values to objects and naming them
# - Using R functions and their arguments
# - Examining help files
# - Observing error and warning messages
# - Use Tab completion


## 1. R can do math ----

# Print to the console the values of
# 1. log of 4.5
# 2. the exponent of 1.2
# 3. the sin of (pi / 4)
_
_
_


## 2. Creating variables and objects ----

# We use the assignment operator <- to store values to objects/variables 
# e.g. multiplication_result <- 2 * 5

# Store the result of this expression into an object called `evens`
_ <- c(2,4,6,8,10)


# Tab completion - RStudio helps you navigate object and function names, and 
# reduce the amount of typing. This means we can use descriptive variable names
# that may be long, and still access them quickly

# Assign the following expression into the object with a really long name
here_is_a_very_long_variable_name <- c(1,2,3,4)


# Remove the _ and start typing "her", after 3 characters the variable options 
# starting with 'her' should appear, and then you can to choose
# "here_is_a_very_long_variable_name" with the Tab key (You can press the 
# Tab key if the options do not automatically appear).
_


## 3. Arithmetic on vectors ----

# `evens` (from above) is a vector of even numbers. Subtracting 1 from all the 
# values is simple, we just subtract 1 from the object `evens`.

# Subtract 1 from the evens object and assign the result to odds
_ <- evens


# The following vector contain values representing hours. Convert these values
# into seconds using the information:
# 60 mins in an hour, 60 seconds in a minute
finishing_times_h <- c(0.5, 1.25, 2)
finishing_times_s <- _


## 4. Naming objects ----

# There are naming rules in R. Identify why the following do now work

1x  <- c(4,3,2,1)
# Answer: _

# Why are there errors when attempting to retrieve the result using the 2 attempts
# shown below?
my_result <- 2^3

my_results   
My_result 
# Answer: _


# Informative names are useful for you to remember what the variables contain.
# We also suggest using `snake_case` for multiple words (but this is optional).

# What are some good names to store the following results?

# A set of random numbers from the normal distribution with mean = 0 and sd = 1
_ <- rnorm(n = 10, mean = 0, sd = 1)


# A set of permuted values from 1 to 10
# using : between 2 numbers results in the sequence between them 1:10 = 1 to 10
_ <- sample(1:10)


## 5. Calling functions ----

# We want to become familiar with using functions, their arguments and obtaining help.
# We will use some simple functions that create vectors and sequences of numbers and text.
# Remember:
# function_name(argument1 = value1, argument2 = value2, ...)


## 5.1 The seq() function ----
# The seq() function creates sequences in different ways
# use ?seq for help

# Create a sequence of values from 100 to 1000 by 100
seq(from = 100, _)


# Create a sequence of 11 numbers from 0 to 1 
# Hint: 11 is our "desired length of the sequence."
seq(from = 0, to = 1, _)


# Create the sequence 1, 10, 100, 1000 using the code below
# Hint: you need to use ^ somewhere
seq(from = 0, to = 3)

# Why does this not work correctly?
# The result should be: 0, 0.5, 1, 1.5, 2, 2.5, 3
# Answer: _
seq(From = 0, to = 3, by = 0.5)

# The code with the error above was: seq(From = 0, to = 3, by = 0.5)
# And this can be reproduced using the code below.
# Why does the sequence start at 1?
# Answer: _
seq(to = 3, by = 0.5)


## Conclusion
# You should have a basic understanding of
# - R calculations and on vectors
# - Naming objects
# - Using functions and their arguments
# - Examining help files
# - Observing error and warning messages
# - Use Tab completion





