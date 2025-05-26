## Bar plots--------------------------------------------------------------------

# Bar plots are very common, so we need to learn how to make them. I would favour
# other plots over bar plots unless they are completely necessary.

# Replace _ to complete expressions and return the correct answer

# Restart R to remove previous results using: Ctrl/Cmd + shift + F10

# Remember - try to use google to help you answer questions


# Packages required
library(tidyverse)

## 1. Barplots ----

# 1.1 Import the data ----
# fish-lengths.rds contains length measurements of fish captured from sites that differ
# by marine park protection category (Management) and whether there is urbanisation
# located near the site (Shore)
fish <-
  readr::read_rds("data/fish-lengths.rds")


# Examine the data
fish

# We want to create a barplot with standard errors.

# Create a new dataset that is the statistical summary of lengths by Management and
# Shore.
# That is, summarise Length by Management and Shore
# Include the summaries
# - number of observations
# - mean
# - SD
# - SE (SD / sqrt(n))
fish_summary <-
  _



# 1.2 Create a barplot
# Create a barplot of fish mean length by management and shore.
# You should have the x value = Management and colour the bars by Shore. We use
# the fill= for filling the bars with colour. Remember that bars will be stacked
# by default
fish_summary %>% 
  _


# 1.3 Add error bars ----
# Add error bars by including a geom_errorbar
# Alter the width values to see how they affect error bar width and position
_



# 1.4 Change bar fill and line colour ----
# 1. Change the bar outline colour to black
# 2. Use scale_fill_manual() and provide a named vector to the values argument
#    to change the bar fill colours to: Natural = 'white' and Urbanised = "grey50"
fish_summary %>% 
  _


# 1.5 Export the plot ----
# Export the plot to the outputs folder
_



# 2.0 Extra exercises ----
# Import the covid.csv, and plot the monthly number of cases for Spain using 
# a barplot. This is an "epidemic-curve"
# Can you identify periods of outbreak?
covid <-
  readr::read_csv('data/covid.csv')



## Conclusion ----
# We examined
# - making barplots
# - including aesthetics
# - adding error bars
# - changing colours
