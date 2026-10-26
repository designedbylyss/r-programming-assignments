install.packages("AER")
library(AER)
data("Fatalities", package = "AER")
head(Fatalities)
Fatalities$state
# 1. Base R Graphics
# Scatter Plot
plot(Fatalities$youngdrivers, Fatalities$fatal,
     main = "Base: Young Drivers vs. Traffic Fatalalities",
     xlab = "Young Drivers",
     ylab = "Traffic Fatalalities")

# Histogram
hist(Fatalities$fatal,
     main = "Base: Distribution of Traffic Fatalalities",
     xlab = "Traffic Fatalalities")

# 2. Lattic Graphics
library(lattice)

# Conditional scatter plot (small multiples)
xyplot(fatal ~ youngdrivers | factor(state),
                      data = Fatalities,
                      main = "Lattice: Young Drivers vs. Traffic Fatalalities by State")

# Box-and-whisker plot
bwplot(fatal ~ factor(state),
       data = Fatalities,
       main = "Lattice: Traffic Fatalalities by State")

# 3. ggplot2
library(ggplot2)

# Scatter plot with smoothing 
ggplot(Fatalities, aes(x = youngdrivers, y = fatal, color = factor(state))) +
  geom_point() + 
  geom_smooth(method = "lm") +
  labs(title = "ggplot2: Traffic Fatalalities vs. Young Drivers with trend by State")

# Faceted histogram 
ggplot(Fatalities, aes(fatal)) + 
  geom_histogram(binwidth = 500) +
  facet_wrap(~ state) +
  labs(title = "ggplot: Traffic Fatalalities distribution by State")

