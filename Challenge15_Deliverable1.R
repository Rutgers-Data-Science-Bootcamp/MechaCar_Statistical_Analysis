# Deliverable 1
# 3. Load the dplyr package 
library(dplyr)

# 4. Import and read in the MechaCar_mpg.csv file as a dataframe
MeChar_mpg <- read_csv("MechaCar_mpg.csv")

# 5. create multiple linear model
# get column nameas
colnames(MeChar_mpg)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MeChar_mpg)
 # 6. determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MeChar_mpg))
