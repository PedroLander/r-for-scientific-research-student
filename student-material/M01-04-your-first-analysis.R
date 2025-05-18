## Your first analysis -----------------------------------------------------------------------

# You have learned enough to have your first ago at conducting a full analysis in R. Do not
# worry about the specific statistical values if you're unfamiliar with them. We just want
# to be able to run the code, ensuring we are selecting the correct columns and creating the
# output we want

# Learning objectives
# - Examining a data.frame
# - 
# - 

# Replace _ to complete expressions and return the correct answer

# Restart R to remove previous results using: Ctrl/Cmd + shift + F10


## 1. The data.frame and research question ----

# We will use the iris dataset and ask the question:
# What is the relationship between petal length and sepal length?

# Obtain the iris data.frame and ensure the data columns we want to use are present
iris

# Examine the structure of the iris dataframe to understand what column types are present
_(iris)



## 2. Visualise the data ----
# Once complete, try changing the value of pch to any value between 0 and 25
# see ?pch help
plot(x = _,
     y = _,
     main = _,
     xlab = _,
     ylab = _,
     pch = 19   # filled black circles
)

## 3. Create a linear model

# We use the lm() function that required a formula interface and a data argument
# with the data.frame we want to use
# lm(y ~ x, data = my_data)

petal_sepal_length_lm <- _(_ ~ _, data = _)

# A brief output of the modal
# For each mm increase in Sepal.Length, how many mm increase/decrease Petal.Length
# do we observe?
# Answer: _ 
petal_sepal_length_lm

# We use the summary() function to obtain a detailed summary of the linear model
# The Sepal.Length row describes the change and standard error in Petal.Length
# with each unit change in Sepal.Length. Further a statistical test (t value and P value).
# If the P value (Pr(>|t|)) is < 0.05 we would conclude there is a significant relationship
# between the two variables.
_(petal_sepal_length_lm)

# Or an ANOVA



## 4. Visualise the model

# We can use the model object with the function abline() to add the regression line
# a plot. We first make the plot and then use abline() to add a layer on top.

# How well do you think the model fit the data? Are the data point distributed evenly
# above and below the linear model line?
# Answer: _
plot(x = iris$Sepal.Length,
     y = iris$Petal.Length,
     main = "Sepal Length vs Petal Length",
     xlab = "Sepal Length (mm)",
     ylab = "Petal Length (mm)",
     pch = 19)

abline(_, 
       col = 'red', 
       lwd = 2)

## Conclusion ----

# We conducted our first analysis in R using data in a data.frame. We created a 
# scatterplot, linear model, and plot the model data on the scatterplot.
