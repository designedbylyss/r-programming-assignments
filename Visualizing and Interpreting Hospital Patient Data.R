# 1. Data Preparation and Cleaning
df_hosp <- Module_4_assessment_data

# Inspect and handle NA
summary(df_hosp)
df_hosp <- na.omit(df_hosp)

# 2. Generate Basic Visualizations
# A. Side-by-Side Boxplots
# Plot blood pressure distributions by each assessment and final decision
boxplot(
  BloodPressure ~ FirstAssess,
  data = df_hosp,
  names = c("Good", "Bad"),
  ylab = "Blood Pressure",
  main = "BP by First MD Assessment"
)
boxplot(
  BloodPressure ~ SecondAssess, 
  data = df_hosp,
  names = c("Low", "High"),
  ylab = "Blood Pressure",
  main = "BP by Second MD Assessment"
)
boxplot(
  BloodPressure ~ FinalDecision, 
  data = df_hosp,
  names = c("Low", "High"),
  ylab = "Blood Pressure",
  main = "BP by Final Decision"
)

# B. Histograms
hist(
  df_hosp$Frequency,
  breaks = seq(0, 1, by = 0.1),
  xlab = "Visit Frequency",
  main = "Histogram of Visit Frequency"
)
hist(
  df_hosp$BloodPressure,
  breaks = 8,
  xlab = "Blood Pressure",
  main = "Histogram of Blood Pressure"
)
