## Lineplots -------------------------------------------------------------------

# Lineplots usually connect values by time. Users often need to specific groups
# and do some data preparation to ensure separate lines are drawn.

# Replace _ to complete expressions and return the correct answer

# Restart R to remove previous results using: Ctrl/Cmd + shift + F10

# Remember - try to use google to help you answer questions

# data |> 
# ggplot(aes(x = x_variable, y = y_variable, group = group_column)) +
# geom_line()


# Load the tidyverse package
_


## 1. Line plots ----

# madrid-weather-monthly-2010-2020.csv contains daily temperature, humidity and
# precipitation every two years from 2010 to 2020.
#
# We want to create a plot of monthly mean temperature across different years.

# 1.1 Import madrid-weather-monthly-2010-2020.csv from teh data folder ----
madrid_weather <- _

# Examine the first 10 rows of the data
madrid_weather

# Create a new dataset that is the mean temperature by year and month
# That is, summarise Temperature_C by year and month
madrid_weather_monthly <-
  madrid_weather %>%
  _

# 1.2 Create a line plot ----
# Create a line plot of monthly temperatures for each year in the dataset
# use the group= argument to create different lines
madrid_weather_monthly %>% 
  _

# Try using the colour aesthetic instead of group
# Is the result what you were expecting?  
# What type of column is year?
# How can you make a grouping data type from a column like year that has numbers?
madrid_weather_monthly %>% 
  _

# 1.3 Edit the x axis breaks ----

# We want to make the values on the x axis the numbers of the month

# Use scale_x_continuous() to update the "breaks" to be 1 to 12.
madrid_weather_monthly %>% 
  ggplot(aes(x = _, y = _, colour = _)) +
  _ +
  _


# 1.4 Change the x axis labels ----
# We can further provide what values should go at the 12 axis breaks
# R includes some vectors "constants", including the names of the months
# ?Constants

# Update scale_x_continuous to include the labels argument with the month.abb vector
# This will put the values of month.abb at the given breaks
madrid_weather_monthly %>% 
  ggplot(aes(x = _, y = _, colour = _)) +
  _ +
  _



# 1.5 Finalise the plot ----
# Update the labels for x, y and colour
madrid_weather_monthly %>% 
  ggplot(aes(x = _, y = _, colour = _)) +
  _ +
  _ +
  _


# 1.6 Export the plot ----
# Use ggsave to export the plots as "madrid_monthly_temperature.png" in the "outputs"
# folder
# Examine it outside of RStudio
_



# 2 Extra exercises ----
# lung_disease_deaths.tsv contains monthly deaths from bronchitis, emphysema and 
# asthma in the UK, 1974–1979, for males and females

# Make a line plot of the month deaths by year and gender
# You will need think about
# - dataset shape
# - unique groups
# - controlling value ordering .. month.abb can help you here

# What trend in the data do you see?
# Which months do most deaths occur?
# Is it different between sexes?
# Are there differences across years?
deaths <-
  read_delim('data/lung_disease_deaths.tsv')



## Conclusion ----
# We looked at
# - line plots
# - grouping with group and colour
# - creating groups (factors) out of numeric data
# - altering the xaxis
