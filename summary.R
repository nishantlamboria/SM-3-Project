# Loading necessary library
library(psych)
library(xtable)

# Data
men_data <- AM
women_data <- AW

# Creating a function to calculate comprehensive summary statistics
summarize_stats <- function(data) {
  data.frame(
    Mean = mean(data),
    Median = median(data),
    Variance = var(data),
    SD = sd(data),
    Min = min(data),
    Max = max(data),
    Range = max(data) - min(data)
  )
}

# Applying the function to each group
men_stats <- summarize_stats(men_data)
women_stats <- summarize_stats(women_data)

# Combining results into a single data frame
summary_stats <- rbind(
  data.frame(Group = "Men", men_stats),
  data.frame(Group = "Women", women_stats)
)

# # Printing the summary statistics
# print(summary_stats)
# 
# # Converting summary statistics to a LaTeX table
# latex_table <- xtable(summary_stats)
# 
# # Printing the LaTeX code to console
# print(latex_table, type = "latex", comment = FALSE,
#       include.rownames = FALSE,
#       booktabs = TRUE,
#       sanitize.text.function = identity)