# Loading ggplot2
library(ggplot2)

# Data
data_vector1 <- SPW  # Data for Females
data_vector2 <- SPM  # Data for Males

# Combining the vectors into a data frame
data_df <- data.frame(
  value = c(data_vector1, data_vector2),
  group = factor(rep(c("Female", "Male"), 
                     c(length(data_vector1), length(data_vector2))))
)

# Creating the box plot
ggplot(data_df, aes(x = group, y = value)) +
  geom_boxplot(fill = c("#0072B2", "#D55E00"), color = "black", outlier.color = "red", outlier.size = 2, notch = TRUE, width = 0.3) +
  labs(x = "Gender", 
       y = "Scores") +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 18, face = "bold"),
    axis.title.x = element_text(size = 14),
    axis.title.y = element_text(size = 14),
    axis.text = element_text(size = 12),
    panel.grid.major = element_line(color = "gray80", size = 0.5),
    panel.grid.minor = element_blank()
  )
