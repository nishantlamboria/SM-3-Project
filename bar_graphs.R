# Loading ggplot2
library(ggplot2)


data <- data.frame(value = AW)

# Calculating the total number of observations
total_observations <- nrow(data)

# Creating a discrete histogram
ggplot(data, aes(x = factor(value))) +
  geom_bar(fill = "#0072B2", color = "black", width = 0.5) +
  scale_x_discrete(breaks = 1:10) +
  labs(x = "Score",
       y = "Frequency") +
  annotate(
    "label",x = 1, y = max(table(data$value)) * 0.9, hjust = 0, vjust = 1, 
    size = 4.5, fontface = "bold", fill = "lightyellow", color = "black", label.size = 0.2,
    label = paste("Total Observations:", total_observations)
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 18, face = "bold"),
    axis.title.x = element_text(size = 14),
    axis.title.y = element_text(size = 14),
    axis.text.x = element_text(size = 12),
    axis.text.y = element_text(size = 12),
    panel.grid.major = element_line(color = "gray80", size = 0.5),
    panel.grid.minor = element_blank()
  )
