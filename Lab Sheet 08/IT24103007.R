# Set working directory (adjust if needed)
setwd("C://Users//HP//Desktop//IT24103007")

# Example laptop bag weights
bag_weights <- c(1.2, 1.4, 1.5, 1.3, 1.6, 1.7, 1.3, 1.4, 1.5, 1.6, 1.5, 1.8)

# -------------------------------
# Population Mean & Standard Deviation
# -------------------------------
pop_mean <- mean(bag_weights)
cat("Population Mean:", pop_mean, "\n")

# Correct formula for population SD (divide by N, not N-1)
pop_sd <- sqrt(sum((bag_weights - pop_mean)^2) / length(bag_weights))
cat("Population Standard Deviation:", pop_sd, "\n")

# -------------------------------
# Sampling Parameters
# -------------------------------
num_samples <- 25    # number of samples
sample_size <- 6     # sample size

# Initialize vectors to store results
sample_means <- numeric(num_samples)
sample_sds <- numeric(num_samples)

set.seed(123)  # reproducibility

# Draw samples and calculate means & SDs
for (i in 1:num_samples) {
  sample_data <- sample(bag_weights, size = sample_size, replace = TRUE)
  sample_means[i] <- mean(sample_data)
  sample_sds[i] <- sd(sample_data)  # sample SD
}

# -------------------------------
# Results
# -------------------------------
cat("Sample Means:", sample_means, "\n")
cat("Sample Standard Deviations:", sample_sds, "\n")

# Mean and SD of sample means
mean_sample_means <- mean(sample_means)
sd_sample_means <- sd(sample_means)

cat("Mean of Sample Means:", mean_sample_means, "\n")
cat("Standard Deviation of Sample Means:", sd_sample_means, "\n")

# -------------------------------
# Central Limit Theorem Verification
# -------------------------------
expected_sd <- pop_sd / sqrt(sample_size)

cat("Expected SD of Sample Means (CLT):", expected_sd, "\n")
cat("\nInterpretation:\n")
cat("- The mean of the sample means ≈ population mean.\n")
cat("- The SD of the sample means ≈ population SD / sqrt(sample size).\n")

