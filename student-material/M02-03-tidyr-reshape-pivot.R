## Pivoting/reshaping data -----------------------------------------------------

# We have seen how datasets come in long and wide structures. Now we will try
# to convert between the two.

# Learning objectives
# - Learn the pivot_ functions
# - Be aware of missing values

# Replace _ to complete expressions and return the correct answer

# Restart R to remove previous results using: Ctrl/Cmd + shift + F10


# Load tidyverse
_


## 1. Lengthening data ----

# Remember
# data |> 
#   pivot_longer(cols = c(column_name, ...) # columns to pivot


# reef-survey.csv is a dataset of marine organism counts for different transects 
# at different reefs (Site) for different months (Months)

# Import reef-survey.csv from the data folder
reef_survey <- _

# Examine the data
# Note that there are 3 column categorising the data and multiple 'response' 
# columns - the counts of different organisms
reef_survey

# Transform the data to long format so that you can calculate the mean of each
# organism by Month and Site in the following step.

reef_survey_long <-
  reef_survey |> 
  pivot_longer(cols = _,
               names_to = _,
               values_to = _)

# Now calculate the mean for each organism. There should no NA values
reef_survey_long |> 
  _

# Sometimes the column names have multiple pieces of information. Notice how
# in reef_survey the fish organism columns start with 'Fish' and urchins with 'Urchin'?
# pivot_longer can split these values into different columns when lengthening.
# We need use the argument 'names_sep' and provide the delimiter. We also need
# to provide the column names that the values will be split into.

# Examine the column names. What is the delimiter separating Fish/Urchin from the
# organism name?
names(reef_survey)

# Use this to split the column names into 2 new columns when lengthening. Call
# the two new columns 'Type' and 'Organism'
reef_survey |> 
  pivot_longer()

# Now calculate the sum of each Type (not Organism) for by Month, Site, Transect
_



## 2. Widening data ----

# Remember
# data |>
#   pivot_wider(names_from = column_name1,  # column with names
#               values_from = column_name2) # column with values

## 2.1 reef_survey ----
# How might you calculate the difference in total counts of fish or urchins between
# January and February for each Site and Transect?
# Hint: pivot_longer, summarise, pivot_wider and mutate
reef_survey |> 
  _

## 2.2 fish_encounters ----
# fish_encounters is a fish observation dataset from the tidyr package
?fish_encounters

# We want to make a presence/absence matrix with fish identifer in rows, and 
# station id in columns.

# Use pivot_wider() to make the presence/absence matrix. Notice that if there
# are no values, an NA is used
fish_encounters |>
  _

# We can fill the missing values with 0 using the argument values_fill
fish_encounters |>
  _


## Conclusion ----
# We examined
# - pivot_longer
# - spliting column names of pivot_longer
# - pivot_wider 
# - issues with pivot_wider when there are missing combinations


