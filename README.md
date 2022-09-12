# MechaCar_Statistical_Analysis
### Background
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called data analytics team to review the production data for insights that may help the manufacturing team.

### Tools (R) and Approaches 
- 1. Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- 2. Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- 3. Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- 4. Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings

### Resources 
- [MechaCar MPG dataset](https://github.com/ShiraliObul/MechaCar_Statistical_Analysis/blob/main/MechaCar_mpg.csv)
- [Suspension Coil dataset](https://github.com/ShiraliObul/MechaCar_Statistical_Analysis/blob/main/Suspension_Coil.csv)

### Results 
#### 1. Multiple linear regression model to predict MPG 
- Using R, performed multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes with 
  statistically significant, the result showed that vehicel_length, ground_clearance (and Intercept) provide a non-random amount of variance to the linear
  model of mpg. 
  
![Screen Shot 2022-09-11 at 11 59 25 PM](https://user-images.githubusercontent.com/65901034/189571410-c9080f75-b98b-4593-a044-1c5c9cf19fa6.png)
- According to the results, the multi linear model is:
    - mpg = 6.27 * vehicle_length + 1.25e-3 * vehicle_weigth + 6.88e-2 * spoiler_angle -3.41 * AWD + 3.55 * ground_clearance - 1.04e+2
- Approximated to:
    - mpg = 6.27 * vehicle_length - 3.41 * AWD + 3.55 * ground_clearance - 104
So the slope of the linear model is not considered to be zero.

- Adjusted R-square is 0.68 so 68% of the variations in mpg can be explained by changes in the vehicle length, the vehicle weight, the spoiler angle, the drivetrain and the ground clearance. We can consider this linear model as fairly efficient to predict mpg of MechaCar prototypes.

#### 2.Summary Statistics on Suspension Coils
- Using t.test in R, calculated the summary statistics as follwing:
     - All lots PSIs together
<img width="340" alt="Screen Shot 2022-09-12 at 12 14 58 AM" src="https://user-images.githubusercontent.com/65901034/189572864-e3637910-9e6c-474c-a6d5-ba74346972b9.png">
     three lots in separate
<img width="589" alt="Screen Shot 2022-09-12 at 12 15 11 AM" src="https://user-images.githubusercontent.com/65901034/189572871-84ec14e8-8d14-4a91-92a8-216dce245848.png">
The design specs are respected for all manufacturing lots in total with a global variance of 62.3 psi.
On the lot level, Lot 1 and Lot 2 are into specs with respectively variances of 0.98 and 7.5 psi. The Lot 3 is out of specs with a variance of 170.3 psi.

#### 3. T-Tests on Suspension Coils
- T-Test all manufacturing lots against the population mean

![Screen Shot 2022-09-12 at 12 22 44 AM](https://user-images.githubusercontent.com/65901034/189573567-c548d872-28be-4a88-a628-6cf88c6b63fc.png)

Assuming our significance level is the common 0.05 percent, our p-value of 0.05734 is grater than 0.05. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we can state that the PSI across all manufacturing lots is comparable to the population mean of 1500 psi.
- T-Test each manufacturing lots against the population mean
##### Lot1
![Screen Shot 2022-09-12 at 12 26 38 AM](https://user-images.githubusercontent.com/65901034/189574099-ef060a48-e93b-41b8-8bf4-99aa8d8c4e57.png)
##### Lot2
![Screen Shot 2022-09-12 at 12 28 51 AM](https://user-images.githubusercontent.com/65901034/189574216-a80fee89-1fd6-4c14-bf03-f18377c82ece.png)
##### Lot3
![Screen Shot 2022-09-12 at 12 29 00 AM](https://user-images.githubusercontent.com/65901034/189574229-7878008e-396a-4cb4-b151-6068b6e5a65b.png)

According to the results above, Lot1 p-value is lower than 0.05 percent, so we can reject the null hypothesis and conclude that the PSI across the Lot 1 is statistically different from the population mean. Whereas, Lot2 and 3 both p-values are above the significance level, so we can not reject our null hypothesis and conclude that the PSI for Lot2 and Lot3 are comparable to the population mean (there is no statistically significant difference).

#### 4. Study Design: MechaCar vs Competition
To compare the performance of the MechaCar prototype against the vehicles from the competition, we will perform a statistical analysis based on the following metrics: 
- the fuel economy (mpg_city),
- - the fuel economy (mpg_highway),
- the HorsePower,
- the wheelbase.
##### Hypothesis
- 0ur null hypothesis (H0) would be: each performance metrics is similar between the MechaCar prototype and all vehicle from the other manufacturers.
- 0ur alternative hypothesis (H1) would be: at least one of the performance metrics is statistically different between the MechaCar prototype and all vehicle from the other manufacturers. 

We would use a one-way ANOVA test. This test is used to compare the means of a continuous numerical variable across a number of groups.
So in this analysis we would compare the means for each metric across the different manufacturers.

To perform the test, we would need data of MechaCar vehicles and its competition, all gathered in a single dataframe where each metric is a column.
The example of data can be found on Kaggle such as [car data](https://www.kaggle.com/code/ljanjughazyan/cars-dataset-analysis/data) 

  
  
