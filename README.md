# MechaCar_Statistical_Analysis

## Overview
Performing statistical tests to create a technical report for the AutosRUs' MechaCar product development team to justify different prototypes.

# Deliverable 1
## Linear Regression to Predict MPG

![predict_mpg](https://github.com/kushalishah/MechaCar_Statistical_Analysis/blob/main/Images/predict_mpg.png)

From the results above we can see that:

1. The vehicle length and vehicle ground clearance are statistically likely to provide non-random amounts of variance to the model. This means that the vehicle length and vehicle ground clearance have a significant impact on miles per gallon on the MechaCar prototype. However, the vehicle weight, spoiler angle, and All Wheel Drive (AWD) have p-Values that indicate a random amount of variance with the dataset.  

2. The p-Value for this model, 5.35e-11, is much smaller than the assumed significance level of 0.05%. This shows us that there is sufficient evidence to reject our null hypothesis, which further indicates that the slope of this linear model is not zero.

3. This linear model has an r-squared value of 0.7149, which means that approximately 71% of all mpg predictions will be determined by this model.

# Deliverable 2
## Summary Statistics on Suspension Coils

Lot Summary:
![lot_summary](https://github.com/kushalishah/MechaCar_Statistical_Analysis/blob/main/Images/lot_summary.png)

Total Summary:
![total_summary](https://github.com/kushalishah/MechaCar_Statistical_Analysis/blob/main/Images/total_summary.png)

From the tables above, we can see that the the variance of the coils is 62.29 PSI and is well within the 100 PSI variance requirement. Lot 1 and Lot 2 are also well within the 100 PSI variance requirement; with variances of 0.98 and 7.47 respectively.  However, Lot 3 that is showing much larger variance in performance and consistency, with a variance of 170.29. We can confirm that Lot 3 that shows a disproportionate variance, therefore, it does not meet the design specification.

# Deliverable 3
## T-Tests on Suspension Coils

![ttest_summary](https://github.com/kushalishah/MechaCar_Statistical_Analysis/blob/main/Images/ttest_summary.png)

From the t-test above, Lot 1 sample actually has the true sample mean of 1500, a p-Value of 1, therefore, we cannot reject the null hypothesis. Meaning that there is no statistical difference between the observed sample mean and the presumed population mean (1500). Lot 2 has essentially the same outcome with a sample mean of 1500.02, and a p-Value of 0.61. The null hypothesis cannot be rejected because the sample mean and the population mean are statistically similar. However, Lot 3 is a different scenario. The sample mean is 1496.14 and the p-Value is 0.04, which is lower than the significance level of 0.05. This shows us that we should reject the null hypothesis because the sample mean and population mean are not statistically different.

# Deliverable 4:  
## Study Design: MechaCar vs Competition

We can create a statistical study where we can quantify how the design of the Mechacar performs agains competition by thinking about some critical points:

#### Metrics
Collecting data for comparable models across all most manufacturers using the following metrics:
*  Engine Type (electric, hybrid or gas), Safety Features, Current Selling Price, Horsepower 

#### Hypothesis: Null and Alternative
After determining which factors are key for the MechaCar's genre:

 * Null Hypothesis (Ho): MechaCar is priced correctly based on its performance of key factors.
 * Alternative Hypothesis (Ha): MechaCar is not priced correctly based on performance of key factors.

#### Statistical Tests
 I would run a multiple linear regression to determine the factors that have the highest correlation/predictability with the list selling price, or determine which combination has the greatest impact on price. The data required will need formulas applied to certain metrics and coefficients to produce a graph. I would use the ```lm(formula)``` option.
