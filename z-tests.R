# Loading necessary library
library(xtable)

# Calculating number of successes and total observations
successes_men <- sum(AM == 8)
successes_women <- sum(AW == 8)
n_men <- length(AM)
n_women <- length(AW)

# Sample proportions
p_hat_men <- successes_men / n_men
p_hat_women <- successes_women / n_women

# Combined (pooled) proportion under null hypothesis
p_pool <- (successes_men + successes_women) / (n_men + n_women)

# Calculating z-test statistic and p-value
z_stat <- (p_hat_men - p_hat_women) / sqrt(p_pool * (1 - p_pool) * (1/n_men + 1/n_women))
p_value <- 2 * (1 - pnorm(abs(z_stat)))

# Preparing results for LaTeX
result_table <- data.frame(
  Statistic = c("Z-statistic", "p-value", "Proportion (Men)", "Proportion (Women)"),
  Value = c(z_stat, p_value, p_hat_men, p_hat_women)
)

# print(result_table)
# 
# # Creating LaTeX table
# latex_table <- xtable(result_table, 
#                       caption = "Results of the asymptotic normal test (z-test) for equality of two proportions.", 
#                       label = "tab:asymptotic_test_results")
# 
# # Printing the LaTeX code to console
# print(latex_table, 
#       type = "latex",
#       comment = FALSE, 
#       include.rownames = FALSE, 
#       booktabs = TRUE,
#       sanitize.text.function = identity)