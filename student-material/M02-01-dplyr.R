## Manipulation of data.frame rows ---------------------------------------------

# We examined some dplyr functions. Lets put them into practice to examine some
# data

# Learning objectives
# - Start using the pipe operator
# - Use dplyr functions for data manipulation

# <tab> completion works most of the time inside dplyr functions, simplifying
# column selection

# Replace _ to complete expressions and return the correct answer

# Restart R to remove previous results using: Ctrl/Cmd + shift + F10

# For reference:
# The function filter() uses conditional section to filter values

# > - "greater than"
# < -"less than"
# >= -"greater than or equal to"
# <= -"less than or equal to"
# == - "equal to"
# != -"not equal to." The ! is used in many programming languages to indicate "not."

# Furthermore, you can combine multiple criteria using operators that make comparisons:

## | "or"
# & - "and"

# Example: filter for month 1 and year 2022
# data |> filter(month == 1 & year == 2022)

# Load tidyverse (includes readr and dplyr)
library(_)

# Update the minimum number rows printed in a tibble (so we can see all the data here)
options(pillar.print_min = 20) 


# 1. COVID data ----
# We will use a COVID-19 dataset to examine dplyr row functions
# Each row/entry contains the number of new cases and deaths reported per day and per country in the EU/EEA.
#
#  dateRep = Date of reporting
#  day
#  month
#  year
#  cases - Number of newly reported cases
#  deaths = Number of newly reported deaths
#  countriesAndTerritories = Name of country or territory
#  geoId = 2-letter country code
#  countryterritoryCode = 3-letter ISO country code
#  popData2020 = Eurostat 2020 population estimate
#  continentExp = Name of continent reporting

# import covid.csv from the data folder
covid <- 
  read_csv(_)

# Examine the data
covid

# glimpse is a function from dplyr similar to str()
glimpse(covid)

# data |> function(arguments)

# Add a new column to the covid data
# - rate of cases (cases / population) per 100,000
covid <-
  covid |> 
  mutate(_)

# Which country had the most cases, and on what date? 
# Include using select() to show only the columns dateRep, cases and countriesAndTerritories 
covid |> 
  _

# What dates had the most cases in Spain? Are they from a similar time period?
# Include using select to show only the columns dateRep, cases and countriesAndTerritories 
covid |> 
  _

# Calculate the total cases and deaths per country
covid |> 
  _

# Which countries had observations of > 1000 deaths?
covid |>
  _


# Which countries had observations of less than 5 deaths and greater than 10000 cases?
covid |>
  _

# Which countries had the top 5 highest case rate?
covid |> 
  _

# How many cases were observed across each year and within the Scandinavian Peninsula?
# In includes the countries: Sweden, Norway and Finland. Sum the cases across these
# countries to obtain a value for the Scandinavian Peninsula
covid |>
  _

# Calculate the cumulative cases for Spain
# - select the columns dateRep, cases and countriesAndTerritories  
# - filter countriesAndTerritories for Spain
# - arrange by dateRep
# - mutate a new column that is the cumsum() of cases
covid |> 
  _


# 2. Herbivores data ----

# herbivore_specialisation.csv is a dataset examining the counts of amphipods 
# on macroalgae in the marine environment during the day and night
#
#  MacroalgaeHabitat - host macroalgae species
#  DayNight - day or night
#  Replicate - replicate number
#  MacroalgaeMass - mass of macroalgae sampled   
#  Ampithoe_caddi - count of amphipod species
#  Ampithoe_kava - count of amphipod species   
#  Ampithoe_ngana - count of amphipod species

# import herbivore_specialisation.csv from the data folder
herbivores <-
  _

# Examine herbivores using the glimplse function
_

# How many species of macroalgae were examined in this data?


# a. Create column that is the sum of the three Ampithoe species counts
# b. Create a column that is the number of total amphiods / mass of the macroalgae
_

# Summarise the total amphiods / mass of the macroalgae data by MacroalgaeHabitat and DayNight
# - number of observations
# - mean
# - standard deviation
_


# Arrange the summary data by descresing mean. Which MacroalgaeHabitat and day period
# had the most total amphiods / mass of the macroalgae
_


# 3. Hospital data ----

# hospital.txt is a hospital administration dataset

# episode_start_date - date of admission
# gender - patient gender
# age - patient age
# area_residence - area of residence code
# diagnosis_code1 - diagnosis_code10 - Codes for reasons for entry to hospital
# procedure_code1 - procedure_code110 - Codes for procedures conducted in hospital

# Import hospital.txt from the data folder. It is tab-delimited.
hospital <-
  _

# Examine the data with the glimpse function
_

# There are some typographic errors in the gender column of hospital. The values
# should be 'F', 'M' and 'U' only. We can use mutate() and case_when() to update those 
# values. case_when() uses conditional logical to return a specified value with 
# ~ symbol, and allows multiple lines of clauses allowing us to return many different
# values.

# matching
hospital |> 
  count(gender)

hospital <-
  hospital |> 
  mutate(gender = case_when(
    gender == 'Fem' ~ 'F',  # if gender is "Fem" replace with F 
    gender == _ ~ _,        # if gender is "Ma" replace with M
    .default = gender       # If any of the above are not match, return the value of gender
  )) 

# Confirm that the value were updated by counting the column again
_


# A researcher wants the first 4 columns of patient data - episode_start_date, 
# gender, age, weight - and only the first 5 (of 10) diagnosis columns for 
# downstream analysis.

# What are 2 methods to select these columns that use some 'selection features'
# of dplyr?
?dplyr::select # help for select

hospital |> 
  dplyr::select(_)

hospital |> 
  dplyr::select(_)


## Conclusion ----
# We have explored
# - filtering rows using conditional selection
# - re-arranging the data
# - obtaining distinct values from the data
# - combining these operations

