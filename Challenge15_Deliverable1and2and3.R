# Deliverable 1
# 3. Load the dplyr package 
library(dplyr)
library(tidyverse)

# 4. Import and read in the MechaCar_mpg.csv file as a dataframe
MeChar_mpg <- read.csv("MechaCar_mpg.csv",stringsAsFactors = F,check.names = F)
# alternative way MeChar_mpg <- read_csv("MechaCar_mpg.csv")

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
# Deliverable3 
# 1 determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch
# with log10 transformation
t.test(log10(SusCoil$PSI), mu=mean(log10(1500)))
# without log10 transformation
t.test(SusCoil$PSI, mu=mean(1500))
# 2. determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
t.test(log10(subset(SusCoil, Manufacturing_Lot == "Lot1")$PSI), mu=mean(log10(1500)))
t.test(log10(subset(SusCoil, Manufacturing_Lot == "Lot2")$PSI), mu=mean(log10(1500)))
t.test(log10(subset(SusCoil, Manufacturing_Lot == "Lot3")$PSI), mu=mean(log10(1500)))

# without log10 transformation
t.test(subset(SusCoil, Manufacturing_Lot == "Lot1")$PSI, mu=mean(1500))
t.test(subset(SusCoil, Manufacturing_Lot == "Lot2")$PSI, mu=mean(1500))
t.test(subset(SusCoil, Manufacturing_Lot == "Lot3")$PSI, mu=mean(1500))
