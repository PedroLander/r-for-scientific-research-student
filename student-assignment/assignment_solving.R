# 1. Load the required libraries
library(tidyverse) # includes dplyr, readr and ggplot2

# 2. Load the dataset. First 2 rows are just comments.
guinea_pig_tooth_growth <- read_csv(
  file = "tooth_growth_guinea_pigs.csv",
  skip = 2
)

# -> R tells us through the console that the 2 columns imported as type <chr>.
# We want them to be <float> and <factor>, so let"s cast them.

# 3. Clean the data
guinea_pig_tooth_growth_format <- data.frame(
  cell_length = as.numeric(guinea_pig_tooth_growth$cell_length),
  delivery_method = factor(guinea_pig_tooth_growth$delivery_method))

# -> We see a warning about NAs introduced by coercion. Examining the data we
# noticed the "N/A" string was converted to "NA" "numeric" value. We should 
# have handled this explicitly but we leave it like this because the conversion 
# guess was correct.

summary(guinea_pig_tooth_growth_format, n = 3)
 
# We noticed different factors are assigned because caps misuse. Let"s correct 
# it casting all delivery_method values to lowercase.

guinea_pig_tooth_growth_format = data.frame(
  cell_length = as.numeric(guinea_pig_tooth_growth$cell_length),
  delivery_method = factor(tolower(guinea_pig_tooth_growth$delivery_method)))

summary(guinea_pig_tooth_growth_format, n = 3)

# 4. Plot the data in a boxplot with the data points, colour and format axis.
guinea_pig_tooth_growth_format |>
  ggplot(aes(x = delivery_method, y = cell_length, fill = delivery_method)) +
  geom_boxplot(width = 0.25) +
  geom_jitter(height = 0, width = 0.125, alpha = 0.25) +
  scale_fill_discrete(
    "Delivery method", labels = c("Ascorbic acid",  "Orange juice")) +
  scale_x_discrete(labels = c("Ascorbic acid",  "Orange juice")) +
  labs (x = "Delivery method", y = "Cell length") +
  ggtitle("Guinea pig tooth growth") +
  theme(plot.title = element_text(hjust = 0.5))

# We can observe two warnings about values outside of the scale range. This are 
# "outliers" (probably a typo) "messing" the graph and  making it hard to 
# visualize the bars, so let"s ignore them for the plot.

guinea_pig_tooth_growth_format |>
  ggplot(aes(x = delivery_method, y = cell_length, fill = delivery_method)) +
  scale_y_continuous(limits=c(0,35)) +
  geom_boxplot(width = 0.25) +
  geom_jitter(height = 0, width = 0.125, alpha = 0.25) +
  scale_fill_discrete(
    "Delivery method", labels = c("Ascorbic acid",  "Orange juice")) +
  scale_x_discrete(labels = c("Ascorbic acid",  "Orange juice")) +
  labs (x = "Delivery method", y = "Cell length") +
  ggtitle("Guinea pig tooth growth") +
  theme(plot.title = element_text(hjust = 0.5))


# 5. Save the image

ggsave(filename = "guinea_pig_tooth_growth.png",
       width = 120,
       height = 120,
       units = "mm")

# 8. Make a summary table with Mean, SD, SE and n.
guinea_pig_tooth_growth_summary  <- guinea_pig_tooth_growth_format |>
  filter(cell_length < 90) |>
  group_by(delivery_method) |>
  summarise(
    n = n(),
    mean_cell_length = mean(cell_length),
    sd_cell_length = sd(cell_length),
    se_cell_length = sd_cell_length / sqrt(n),
    .groups = "drop")

# 9. A t-test could be appropiate to compare the mean of two groups of 
# t-test is based on the assumption of homocedasticity and normality, let"s 
# check those.

# Homocedasticity with F-distribution
var.test(cell_length ~ delivery_method, data = guinea_pig_tooth_growth_format)

# -> F-test show that the variance is not equal in the two groups. 

# Shaphiro test for normality
guinea_pig_tooth_growth_format |>
  filter(cell_length < 90) |>
  group_by(delivery_method) |>
  summarise(shaphiro_test= shapiro.test(cell_length)$p.value)

# -> "orange_juice" group values (even excluding the "outlier") seem to not be 
# normally distributed

# They are not homocedastic and one group is not normal. We could use a 
# Mann-Whitney U test but because we have n = 30, by the Central Limit Theorem, 
# t-test is quite resistant when the two groups have the same size. Furthermore,
# a t-test variant (Welch approximation) would be even more appropiate, it can 
# be applied with "t.test(... var.equal = FALSE)".


t.test(
  formula = cell_length ~ delivery_method,
  data = guinea_pig_tooth_growth_format,
  var.equal = FALSE
)

  # p-value of Welch aproximation is ~0.04 so let"s check Mann-Whitney U test

wilcox.test(
  cell_length ~ delivery_method,
  data = guinea_pig_tooth_growth_format,
  exact = FALSE)

# p-value is ~0.027 so we can say, with a confidence level of 95%, that both 
# groups does not have the same mean. So cell_length of guinea pigs treated with
# vitamin C through ascorbic_acid is different from the ones treated with it 
# through orange_juice.

