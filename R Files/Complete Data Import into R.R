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


data_2020_1 <- read_excel("Water Quality Data of River Ganga 2020.xlsx" , sheet = 1 , skip=3)
colnames(data_2020_1) <- column_names
data_2020_1 = data_2020_1[,1:19]

data_2020_2 <- read_excel("Water Quality Data of River Ganga 2020.xlsx" , sheet = 2 , skip=2)
colnames(data_2020_2) <- column_names
data_2020_2 = data_2020_2[,1:19]

data_2020_3 <- read_excel("Water Quality Data of River Ganga 2020.xlsx" , sheet = 3 , skip=2)
colnames(data_2020_3) <- column_names
data_2020_3 = data_2020_3[,1:19]

data_2020 <- bind_rows(data_2020_1,data_2020_2,data_2020_3)
str(data_2020)


data_2019_1 <- read_excel("Water Quality Data of River Ganga 2019 (5 out of 6).xlsx" , sheet = 1 , skip=10)
colnames(data_2019_1) <- column_names
data_2019_1 = data_2019_1[,1:19]

data_2019_2 <- read_excel("Water Quality Data of River Ganga 2019 (5 out of 6).xlsx" , sheet = 2 , skip=2)
colnames(data_2019_2) <- column_names
data_2019_2 = data_2019_2[,1:19]

data_2019_3 <- read_excel("Water Quality Data of River Ganga 2019 (5 out of 6).xlsx" , sheet = 3 , skip=2)
colnames(data_2019_3) <- column_names
data_2019_3 = data_2019_3[,1:19]

data_2019_4 <- read_excel("Water Quality Data of River Ganga 2019 (5 out of 6).xlsx" , sheet = 4 , skip=2)
colnames(data_2019_4) <- column_names
data_2019_4 = data_2019_4[,1:19]

data_2019_5 <- read_excel("2019 (6).xlsx" , sheet = 1 , skip=2)
colnames(data_2019_5) <- column_names
data_2019_5 = data_2019_5[,1:19]

data_2019 <- bind_rows(data_2019_1,data_2019_2,data_2019_3,data_2019_4,data_2019_5)
str(data_2019)


data_2018_1 <- read_excel("Water Quality Data of River Ganga 2018 (5 out of 7).xlsx" , sheet = 1 , skip=3)
colnames(data_2018_1) <- column_names
data_2018_1 = data_2018_1[,1:19]

data_2018_2 <- read_excel("Water Quality Data of River Ganga 2018 (5 out of 7).xlsx" , sheet = 2 , skip=2)
colnames(data_2018_2) <- column_names
data_2018_2 = data_2018_2[,1:19]

data_2018_3 <- read_excel("Water Quality Data of River Ganga 2018 (5 out of 7).xlsx" , sheet = 3 , skip=2)
colnames(data_2018_3) <- column_names
data_2018_3 = data_2018_3[,1:19]

data_2018_4 <- read_excel("Water Quality Data of River Ganga 2018 (5 out of 7).xlsx" , sheet = 4 , skip=2)
colnames(data_2018_4) <- column_names
data_2018_4 = data_2018_4[,1:19]

data_2018_5 <- read_excel("Water Quality Data of River Ganga 2018 (5 out of 7).xlsx" , sheet = 5 , skip=2)
colnames(data_2018_5) <- column_names
data_2018_5 = data_2018_5[,1:19]

data_2018_6 <- read_excel("2018 (6 & 7).xlsx" , sheet = 1 , skip=2)
colnames(data_2018_6) <- column_names
data_2018_6 = data_2018_6[,1:19]

data_2018_7 <- read_excel("2018 (6 & 7).xlsx" , sheet = 2 , skip=2)
colnames(data_2018_7) <- column_names
data_2018_7 = data_2018_7[,1:19]

data_2018 <- bind_rows(data_2018_1,data_2018_2,data_2018_3,data_2018_4,data_2018_5,data_2018_6,data_2018_7)
str(data_2018)


data_2017_1 <- read_excel("Water Quality Data of River Ganga 2017 (5 out of 7).xlsx" , sheet = 1 , skip=10)
colnames(data_2017_1) <- column_names
data_2017_1 = data_2017_1[,1:19]

data_2017_2 <- read_excel("Water Quality Data of River Ganga 2017 (5 out of 7).xlsx" , sheet = 2 , skip=3)
colnames(data_2017_2) <- column_names
data_2017_2 = data_2017_2[,1:19]

data_2017_3 <- read_excel("Water Quality Data of River Ganga 2017 (5 out of 7).xlsx" , sheet = 3 , skip=3)
colnames(data_2017_3) <- column_names
data_2017_3 = data_2017_3[,1:19]

data_2017_4 <- read_excel("Water Quality Data of River Ganga 2017 (5 out of 7).xlsx" , sheet = 4 , skip=2)
colnames(data_2017_4) <- column_names
data_2017_4 = data_2017_4[,1:19]

data_2017_5 <- read_excel("Water Quality Data of River Ganga 2017 (5 out of 7).xlsx" , sheet = 5 , skip=2)
colnames(data_2017_5) <- column_names
data_2017_5 = data_2017_5[,1:19]

data_2017_6 <- read_excel("2017 (6 & 7).xlsx" , sheet = 1 , skip=2)
colnames(data_2017_6) <- column_names
data_2017_6 = data_2017_6[,1:19]

data_2017_7 <- read_excel("2017 (6 & 7).xlsx" , sheet = 2 , skip=2)
colnames(data_2017_7) <- column_names
data_2017_7 = data_2017_7[,1:19]

data_2017 <- bind_rows(data_2017_1,data_2017_2,data_2017_3,data_2017_4,data_2017_5,data_2017_6,data_2017_7)
str(data_2017)

data_2016_1 <- read_excel("Water Quality Data of River Ganga 2016.xlsx" , sheet = 1 , skip=2)
colnames(data_2016_1) <- column_names
data_2016_1 = data_2016_1[,1:19]

data_2016_2 <- read_excel("Water Quality Data of River Ganga 2016.xlsx" , sheet = 2 , skip=2)
colnames(data_2016_2) <- column_names
data_2016_2 = data_2016_2[,1:19]

data_2016_3 <- read_excel("Water Quality Data of River Ganga 2016.xlsx" , sheet = 3 , skip=2)
colnames(data_2016_3) <- column_names
data_2016_3 = data_2016_3[,1:19]

data_2016 <- bind_rows(data_2016_1,data_2016_2,data_2016_3)
str(data_2016)

