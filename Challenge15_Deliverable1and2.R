# Deliverable 1
# 3. Load the dplyr package 
library(dplyr)
library(tidyverse)

# 4. Import and read in the MechaCar_mpg.csv file as a dataframe
MeChar_mpg <- read_csv("MechaCar_mpg.csv")

# 5. create multiple linear model
# get column nameas
colnames(MeChar_mpg)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MeChar_mpg)
 # 6. determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MeChar_mpg))

# Deliverable 2 
# 2 read csv file as a table
SusCoil <- read_csv('Suspension_Coil.csv')
# 3. Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- SusCoil %>% summarize(Mean = mean(PSI), Mrdian =median(PSI), Variance=var(PSI), SD =sd(PSI), .groups = 'keep')
total_summary

# 4. to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column
lot_summary <- SusCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Mrdian =median(PSI), Variance=var(PSI), SD =sd(PSI))
lot_summary
# 5. Save your MechaCarChallenge.RScript file to your GitHub repository