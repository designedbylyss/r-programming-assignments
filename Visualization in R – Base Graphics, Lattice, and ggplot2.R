install.packages("AER")
library(AER)
data("Fatalities", package = "AER")
head(Fatalities)
Fatalities$state
# 1. Base R Graphics
# Scatter Plot
plot(Fatalities$youngdrivers, Fatalities$fatal,
     main = "Base: Young Drivers vs. Fatal",
     xlab = "Young Drivers",
     ylab = "Fata")

# Histogram
hist(Fatalities$fatal,
     main = "Base: Distribution of Fatal",
     xlab = "Fatal")

# 2. Lattic Graphics
library(lattice)

# Conditional scatter plot (small multiples)
xyplot(fatal ~ youngdrivers | factor(state),
                      data = Fatalities,
                      main = "Lattice: Young Drivers vs. Fatal by State")

# Box-and-whisker plot
bwplot(fatal ~ factor(state),
       data = Fatalities,
       main = "Lattice: Fatal by State")

# 3. ggplot2
library(ggplot2)

# Scatter plot with smoothing 
ggplot(Fatalities, aes(x = youngdrivers, y = fatal, color = factor(state))) +
  geom_point() + 
  geom_smooth(method = "lm") +
  labs(title = "ggplot2: Fatal vs. Young Drivers with trend by State")

# Faceted histogram 
ggplot(Fatalities, aes(fatal)) + 
  geom_histogram(binwidth = 1) +
  facet_wrap(~ state) +
  labs(title = "ggplot: Fatal distribution by State")

