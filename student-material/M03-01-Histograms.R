## Creating histograms---------------------------------------------------------

# We had a brief look at ggplot2 and creating histograms. Now it is your turn!

# Replace _ to complete expressions and return the correct answer

# Restart R to remove previous results using: Ctrl/Cmd + shift + F10

# Remember - try to use google to help you answer questions



# Load the tidyverse package with contains ggplot2
_


## 1. Histograms ----

# We will examine the weight distribution by gender in a hospital dataset.
# The columns of interest are: weight and gender

# 1.1 Import the hospital.txt dataset, which is tab-delimited
hospital <- 
  _


# Remember ---
# we use + to add layers to ggplot()
# geom_histogram()
# fill= controls bar colour
# alpha= controls the transparency


# 1.2 Create a histogram of weight ----
# Does the distribution appear unimodal?
# What does the average weight appear to be?
hospital %>% 
  ggplot(aes(_)) +
  _

# 1.3 Alter the binwidth ----
# Alter the code to create histograms with different binwidths, and examine
# whether you can conclusions about the distribution of the data e.g. uni-modal/bi-modal,
# or skewed
#
# Try the bin widths:
#  - 20 kg (binwidth = 20)
#  - 10 kg
#  - 1 kg
hospital %>% 
  ggplot(_) +
  _

# 1.4 Colour by gender ----
# Update the code to create a fill aesthetic by gender i.e. make the bar colours
# by gender
hospital %>% 
  ggplot(aes(x = weight, _)) + 
  geom_histogram()


# Ok, there are some groups in gender that we want to remove.
# Include only data from gender equal to 'F' or 'M'
hospital %>% 
  count(gender)

hospital_fm <-
  hospital %>% 
  _


# Remake the histogram coloured by gender
# note: the fill is inside the aes() function
hospital_fm %>% 
  _

# Notice at x values > 60 & < 75, the F bars are placed on top of the M bars?
# This is a result of the default 'position' argument of geom_histogram()
# ?geom_histogram

# 1.5 Fixing the plot ----
# We do not wanted 'stack'ed bars but their true value. We can do this using
# position="identity".
# Update the code to change the position argument to "identity"
hospital_fm %>% 
  ggplot(aes(x = _, fill = _)) + 
  geom_histogram(position = _)

# However, now the M bars are covering the F bars (overplotting)
# Can you think of a way to allow the bars to be shown from all the groups?
# Hint: Think about the colour transparency...
hospital_fm %>% 
  ggplot(aes(x = _, fill = _)) + 
  geom_histogram(_, _)

# 1.6 Export the plot ----
# We can use ggsave to export the last ggplot observed in RStudio
# Export the last plot to the "outputs" folder as "weights_histogram.png"
# Examine it outside of RStudio
ggsave(filename = _, 
       plot = last_plot(), 
       width = 120, height = 100, units = 'mm')

# 1.7 Using facets ----
# Another method is to create multiple histograms in different panels (facets)
# rather than coloring them in the same plot. Use facet_wrap() to create the
# histograms in different panels by gender.
hospital_fm %>% 
  ggplot(aes(x = weight)) +
  geom_histogram() +
  _
  



# 2.0 Extra exercises ----

# 2.1 faithful ----
# faithful is a R dataset on the waiting time between eruptions and the duration 
# of the eruption for the Old Faithful geyser in Yellowstone National Park, Wyoming, USA.
# ?faithful

# Create a histogram of the eruption times in minutes column (eruptions)
# Colour the bars black, and make them have a white outline
# Add x and y axis title: x = Frequency of eruptions, y = Duration (minutes)
faithful %>% 

# 2.2 penguins ----
# Are the distributions of body mass among penguins species similar?
# Create a histogram of body mass and use facets to seperate the species
penguins <-
  readr::read_csv(_)

penguins %>% 
 _

## Conclusion ----
# We have examined
# - making ggplot histograms
# - altering bin widths
# - including different groups
# - altering visual properties
# - exporting plots
