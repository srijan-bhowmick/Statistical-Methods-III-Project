library(readxl)
library(dplyr)
column_names = c("STATION CODE" , "NAME OF MONITORING LOCATION" , "STATE NAME" , "MINIMUM TEMPERATURE(°C)" , "MAXIMUM TEMPERATURE(°C)" , "MINIMUM DISSOLVED OXYGEN(mg/L)" , "MAXIMUM DISSOLVED OXYGEN(mg/L)" , "MINIMUM pH" , "MAXIMUM pH" , "MINIMUM CONDUCTIVITY(micro mhos/cm)" , "MAXIMUM CONDUCTIVITY(micro mhos/cm)" , "MINIMUM BIO-CHEMICAL OXYGEN DEMAND(mg/L)" , "MAXIMUM BIO-CHEMICAL OXYGEN DEMAND(mg/L)" , "MINIMUM NITRATE(mg/L)" , "MAXIMUM NITRATE(mg/L)" , "MINIMUM FECAL COLIFORM(MPN/100ML)" , "MAXIMUM FECAL COLIFORM(MPN/100ML)" , "MINIMUM TOTAL COLIFORM(MPN/100ML)" , "MAXIMUM TOTAL COLIFORM(MPN/100ML)")

data_2021_1 <- read_excel("Water Quality Data of River Ganga 2021 (6 out of 8).xlsx" , sheet = 1 , skip=2)
colnames(data_2021_1) <- column_names
data_2021_1 = data_2021_1[,1:19]

data_2021_2 <- read_excel("Water Quality Data of River Ganga 2021 (6 out of 8).xlsx" , sheet = 2 , skip=2)
colnames(data_2021_2) <- column_names
data_2021_2 = data_2021_2[,1:19]

data_2021_3 <- read_excel("Water Quality Data of River Ganga 2021 (6 out of 8).xlsx" , sheet = 3 , skip=2)
colnames(data_2021_3) <- column_names
data_2021_3 = data_2021_3[,1:19]

data_2021_4 <- read_excel("Water Quality Data of River Ganga 2021 (6 out of 8).xlsx" , sheet = 4 , skip=2)
colnames(data_2021_4) <- column_names
data_2021_4 = data_2021_4[,1:19]

data_2021_5 <- read_excel("Water Quality Data of River Ganga 2021 (6 out of 8).xlsx" , sheet = 5 , skip=2)
colnames(data_2021_5) <- column_names
data_2021_5 = data_2021_5[,1:19]

data_2021_6 <- read_excel("2021 (6).xlsx" , sheet = 1 , skip=2)
colnames(data_2021_6) <- column_names
data_2021_6 = data_2021_6[,1:19]

data_2021_7 <- read_excel("2021 (7 & 8).xlsx" , sheet = 1 , skip=2)
colnames(data_2021_7) <- column_names
data_2021_7 = data_2021_7[,1:19]

data_2021_8 <- read_excel("2021 (7 & 8).xlsx" , sheet = 2 , skip=2)
colnames(data_2021_8) <- column_names
data_2021_8 = data_2021_8[,1:19]

data_2021 <- bind_rows(data_2021_1,data_2021_2,data_2021_3,data_2021_4,data_2021_5,data_2021_6,data_2021_7,data_2021_8)
str(data_2021)