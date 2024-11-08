# Loading necessary libraries
library(xtable)

# Data
men <- SRM
women <- SRW

# Performing t-test
t_test_result <- t.test(men, women)


# print(t_test_result)
# 
# # Preparing results for LaTeX
# result_table <- data.frame(
#   Statistic = c("t-statistic", "Degrees of Freedom", "p-value", "Mean (Men)", "Mean (Women)"),
#   Value = c(t_test_result$statistic, t_test_result$parameter, t_test_result$p.value, mean(men), mean(women))
# )
# 
# # Creating a LaTeX table
# latex_table <- xtable(result_table)
# 
# # Printing the LaTeX code to console
# print(latex_table, type = "latex", comment = FALSE, 
#       include.rownames = FALSE, 
#       booktabs = TRUE,
#       sanitize.text.function = identity)