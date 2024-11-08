# Loading ggplot2
library(ggplot2)

# Data
data <- SPM

# Creating a data frame
data_df <- data.frame(value = data)

# Creating QQ plot with ggplot2
ggplot(data_df, aes(sample = value)) +
  stat_qq(size = 2, color = "#0072B2") +
  stat_qq_line(color = "#D55E00", size = 1.2) +
  labs(x = "Theoretical Quantiles",
       y = "Sample Quantiles") +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 18, face = "bold"),
    axis.title.x = element_text(size = 14),
    axis.title.y = element_text(size = 14),
    axis.text = element_text(size = 12),
    panel.grid.major = element_line(color = "gray80", size = 0.5),
    panel.grid.minor = element_blank()
  )