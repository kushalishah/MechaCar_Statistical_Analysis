library(dplyr)

MechaCar_mpg <- read.csv("~/Desktop/MechaCar_Statistical_Analysis/Resources/MechaCar_mpg.csv",check.names=T,stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)) 