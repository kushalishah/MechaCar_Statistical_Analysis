#deliverable 1
library(dplyr)

MechaCar_mpg <- read.csv("~/Desktop/MechaCar_Statistical_Analysis/Resources/MechaCar_mpg.csv",check.names=T,stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)) 

#deliverable 2
Suspension_Coil <- read.csv("~/Desktop/MechaCar_Statistical_Analysis/Resources/Suspension_Coil.csv",check.names=T,stringsAsFactors = F)
View(Suspension_Coil)
total_summary <- Suspension_Coil %>% summarize(Mean_PSI=mean(PSI),
                                               Median_PSI=median(PSI),
                                               Var_PSI=var(PSI),
                                               Std_Dev_PSI=sd(PSI),
                                               Num_Coil=n(), .groups = 'keep') 
print(total_summary)



lot_summary <- Suspension_Coil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                              Median_PSI=median(PSI),
                                                                              Var_PSI=var(PSI),
                                                                              Std_Dev_PSI=sd(PSI),
                                                                              Num_Coil=n(), .groups = 'keep')
   
print(lot_summary)
 
#deliverable 3
t.test(Suspension_Coil$PSI,mu=1500)

lot1 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)


                                                                                                    