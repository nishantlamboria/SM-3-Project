# Loading ggplot2
library(ggplot2)

# Data
data <- SRW

# Creating a data frame
data_df <- data.frame(value = data)

# Calculating mean and standard deviation
mean_est <- mean(data)
sd_est <- sd(data)

# Calculating the density values separately
density_values <- density(data)$y  # Extracting density values

# Creating the ggplot
ggplot(data = data_df, aes(x = value)) +
  geom_histogram(aes(y = after_stat(density)), bins = 14,
                 fill = "#0072B2", color = "black", alpha = 0.7) +
  stat_function(fun = dnorm, args = list(mean = mean_est, sd = sd_est),
                color = "#D55E00", size = 1.5) +
  labs(x = "Score", y = "Density") +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 18, face = "bold"), 
    axis.title.x = element_text(size = 14),
    axis.title.y = element_text(size = 14),
    axis.text = element_text(size = 12),
    panel.grid.major = element_line(color = "gray80", size = 0.5),
    panel.grid.minor = element_blank()
  ) +
  annotate(
    "label", x = min(data), y = max(density_values), hjust = 0, vjust = 1.1, 
    size = 4.5, fontface = "bold", fill = "lightyellow", color = "black", label.size = 0.2,
    label = paste("Mean:", round(mean_est, 3), "\nVariance:", round(sd_est^2, 2))
  )
