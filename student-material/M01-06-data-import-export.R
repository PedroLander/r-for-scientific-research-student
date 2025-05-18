## Data import and export in R -------------------------------------------------

# We have seen how to import and export text, excel and other files, and 
# have finer control about how the data is imported / exported.


# Learning objectives
# - Import different file types
# - Explore file paths
# - Control import
# - Export data to file

# Replace _ to complete expressions and return the correct answer

# Restart R to remove previous results using: Ctrl/Cmd + shift + F10


# Packages required
library(readr)
library(readxl)

## 1. Import text data files ----

# We will import files from the `data` folder with the main project folder. 
# We will use a 'relative' file path which means starting from the main project
# folder, and adding the names of the folders you need to navigate through to
# reach the file you want. Each folder with be separated by a "/", before you
# reach the file you want.
#
# project folder > data > penguins.csv = data/penguins.csv
#
# Note that RStudio will provide Tab completion for file paths while you type

# Example - run the following code
read_csv(file = "data/bloods.csv")

# Tab completion
# Put the cursor inside the "" and press tab. Note the menu that appears.
# Select the data folder using the Tab button and note the new menu that appears
# i.e. the files in the data folder. Select 'bats_data.csv" and run the code
read_csv(file = "")

## 1.1 penguins.csv ----

# Import the penguins.csv from the data folder and print the data in the console 
# to examine it
penguins <- _

# Import more_penguins.csv which lives in sub-folders of data
# You may navigate there in the Files browser on the right
# data > study_1 > raw_data > more_penguins.csv
more_penguins <- _

## 1.2 bloods.csv ----
# bloods.csv contains blood test values for 18 patients. All of the blood markers
# should be numeric but many have been imported as character. What is the problem
# here and how can it be fixed? Examine the data in the console.
bloods <- read_csv(file = 'data/bloods.csv')
bloods

## 1.3 mtcars ----
# Importing mtcars.txt does not seem to work with read_csv. 
# Why not? 
# What delimiter does it use?
# How can you import it?
mtcars <- read_csv(file = 'data/mtcars.txt')
mtcars

## 1.4 ncbi ----
# The file ncbi-blastn.tsv is output from bioinformatics software. It has a number
# of comment rows about the query that produced the data, and finally the rows of
# data. The manual says the output is tab-delimited.

# We can view the first 10 lines of a text file using readLines(). This just shows
# the text in R and will not make a data.frame
readLines('data/ncbi-blastn.tsv', n = 10)

# Import the data after the comments into a data.frame with the correct column 
# names ("Fields" in the meta data rows)
blast_result <- read_delim(_)
blast_result


## 2. Import excel data files ----

# penguins.xlsx has the penguins data separated across multiple sheets.

# What sheet names exist in penguins.xlsx?
_(path = 'data/penguins.xlsx')

# Import sheet 'Gentoo'
penguins_gentoo <- read_excel(_)
penguins_gentoo

# deaths.xlsx is a small table of death information of famous people. There are
# comments above and below the data table. You may find such data tables from
# Government sources
# How can you import the table without the comments using the range argument? You
# may need to open the file in Excel

deaths <-
  read_excel(path = _, _)


## 3. Import R data files ----

# fish-lengths.rds is an R dataset. How can you import this with readr?
fish <- _('data/fish-lengths.rds')

# Examine the structure of this data.frame and observe the column types of 
# 'Management' and 'Shore'  
# What data type are they? Have any of the previous file imports imported columns of this type?
_

## 4. Export data

# Export the deaths data.frame in a CSV to data/deaths_clean.csv
_(x = deaths, file = _)

# Export the fish data.frame to a CSV to data/fish-lengths.csv


# Now import the data/fish-lengths.csv and examine it's structure. How is it different
# to the fish object from above?
fish_csv <- _
str(fish_csv)

## Conclusion ----
# We have imported
# - various text, excel and R data files
# - altered function arguments to improve import
# - briefly examined the column types of the imported data
# - exported data
