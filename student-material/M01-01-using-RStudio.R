# Using RStudio ---------------------------------------------------------------

# In this exercise we will go through some basics of using R and RStudio. 
# You will need to run code and observe the output. We are simply observing how to
# interact with R and RStudio.

# Learning objectives
# - Understand the layout and use of RStudio, and where R itself lives (the console)
# - Entering code into the R console, from a script and from parts of code
# - Storing and retrieving values in objects
# - Observing outputs (print and plot)
# - R sessions
# - Viewing files and the working directory
# - Observing help documentation
# - File and tool menu of RStudio


## 1. Entering commands in the R console and script editor ----

# Add 1 + 1 in the console panel below and press enter.
# What do you see?

# We usually send code from the script editor rather than typing directly in the
# console. This ensures we can repeat what code we write.

# Add 1 + 1 in the next line (replace the _), and then click the run button (above this panel).
_

# Now put the cursor on the line below and use Ctrl + enter / Cmd + enter to send code to the 
# R console. This is the preferred method AND your first keyboard shortcut!
1 + 1

# You can also highlight parts of code and use Ctrl + enter / Cmd + enter to send code
# to the console. This is useful for examining long pieces of code where you may need
# to check parts of it

# Highlight 5 * 5 with the mouse, and send the result to the console (Ctrl + enter / Cmd + enter).
# You should see 25
2 * 1 + 5 * 5


## 2. Storing values in objects ----

# We store values in objects for later use.

# Run the following lines to store the values in R. Examine the Environment panel 
# (top right panel) for currently stored objects. These are now available for you
# to use in the current R session. We will discuss details about objects in a later session.
var1 <- c(1,2,3)
var2 <- c('Cat', 'Dog', 'Bird')
# this line imports data from an external file
bats <- read.csv("data/bats_data.csv")

# We can see/return the values in the R console. Run the follow lines of code to see their values.
var1
var2
bats

# iris is a built-in dataset
iris


## 4. Create a plot ----
# When we create a plot, we will see it in the Plots panel (bottom right panel)
plot(Sepal.Length ~ Species, data = iris)

## 5. Examine statistical output ----
# Run the following line of code to see what statistical output looks like in R
anova(lm(Sepal.Length ~ Species, data = iris))


## 6. Workspace and R sessions ----

# R creates a temporary workspace for each new R session. R remembers data and objects
# in the current R session but these are lost when the session closes.
#
# We can start a new R session while still in RStudio and stay in our current RStudio project.
# In the menu above, go 
#
# Session > Restart R (or Ctrl/Cmd + shift + F10)
#
# What happened to var1, var2, and the plot you made? Are they still available?
var1
var2

# is iris still available?
iris

# A major best practice in R is to write scripts that work from start to finish 
# entirely within a new R session i.e. importing data, conducting work tasks, outputting results and plots.


## 7. Working directory ----
# R is working from a directory on your computer. This changes depending on how
# you start R/RStudio, and whether you have explicitly changed it afterwards.

# getwd() will print in the R console the current working directory
# RStudio will also show it above the R console.
# Can you confirm getwd() and RStudio show the same working directory value?
getwd()

# Can you navigate to this location on your computer outside of RStudio (using 
# Windows explorer/Mac finder)?


## 8. The Files viewer ----

# There is a file navigator in the bottom right panel within RStudio. This allows
# us to see our files and folders. You can navigate to other folders in the file viewer, 
# but be mindful of the current directory R is working from as it will not be the 
# folder you navigate to.

# Examine the files in the Files panel on the bottom right (you should be in the 
# student-material folder). Are the files you see the same as what  is printed using 
# the list.files() function (print contents of working directory) ?
list.files()


# Navigate to the `r-for-scientific-research/data` folder to view the data files we will later use.
# Next, navigate back to the working directory by: (In the Files tab on the right) More > Go To Working Directory

# The "More" button can help you do directory tasks such as
# 1) navigate to your working directory,
# 2) open Windows explorer/Mac finder at the current directory (in case you want
# to see your files outside of RStudio)

# Click More > Go To Working directory (this should be the course project folder)
# Click More > Show Folder in New Window


## 9. Help tab ----
# R documentation is standardised, you will often see;
# A Title, a Description, Usage, Arguments, Details and Notes, Examples

# Examine the help document for these 2 functions by running each line of code
?base::plot()
?c

## 10. File menu ----

# The file menu at the top of RStudio allows you to do generic file operations e.g. new script,
# save script, open project, etc.

# Examine the options in: File > New File > ...
# Do any of these look familiar to you? You can do various things within R and its
# packages, and the choice here reflect that.


## 11. Tools menu ----

# The Tools menu at the top of RStudio allows allows use to change RStudio settings. 
# We often want to change settings of R and RStudio such as themes and layout, or 
# other such settings. We also want to learn as many keyboard shortcuts as possible 
# to increase productivity.

# Examine the options:
# Tools > Global Options .. theme settings, panel layout, code completion settings
# Tools > Keyboard shortcuts


## Conclusion ----
# You should have a basic understanding of 
# - RStudio layout
# - Entering code
# - Storing and retrieving values in objects
# - Observing outputs (print and plot)
# - R sessions
# - Viewing files and the working directory
# - Observing help documentation
# - File and tool menu of RStudio
