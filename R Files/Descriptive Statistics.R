source("2021 Data Import into R.R")
library(ggplot2)

avg_data_2021 <- data_2021 %>%
  mutate(
    temp = (`MINIMUM TEMPERATURE(°C)` + `MAXIMUM TEMPERATURE(°C)`) / 2,
    dis_O2 = (`MINIMUM DISSOLVED OXYGEN(mg/L)` + `MAXIMUM DISSOLVED OXYGEN(mg/L)`) / 2,
    pH = (`MINIMUM pH` + `MAXIMUM pH`) / 2,
    conduct = (`MINIMUM CONDUCTIVITY(micro mhos/cm)` + `MAXIMUM CONDUCTIVITY(micro mhos/cm)`) / 2,
    BOD = (`MINIMUM BIO-CHEMICAL OXYGEN DEMAND(mg/L)` + `MAXIMUM BIO-CHEMICAL OXYGEN DEMAND(mg/L)`) / 2,
    nitrate = (`MINIMUM NITRATE(mg/L)` + `MAXIMUM NITRATE(mg/L)`) / 2,
    fec_coli = (`MINIMUM FECAL COLIFORM(MPN/100ML)` + `MAXIMUM FECAL COLIFORM(MPN/100ML)`) / 2,
    tot_coli = (`MINIMUM TOTAL COLIFORM(MPN/100ML)` + `MAXIMUM TOTAL COLIFORM(MPN/100ML)`) / 2
  ) %>%
  select(`STATION CODE`, `NAME OF MONITORING LOCATION`, `STATE NAME`, temp, dis_O2, pH, conduct, BOD, nitrate, fec_coli, tot_coli)

avg_temp <- mean(temp,na.rm = TRUE)
avg_dis_O2 <- mean(dis_O2,na.rm = TRUE)
avg_pH <- mean(pH ,na.rm = TRUE)
avg_conduct <- mean(conduct,na.rm = TRUE)
avg_BOD <- mean(BOD,na.rm = TRUE)
avg_nitrate <- mean(nitrate,na.rm = TRUE)
avg_fec_coli <- mean(fec_coli,na.rm = TRUE)
avg_tot_coli <- mean(tot_coli,na.rm = TRUE)

avg_temp
avg_dis_O2 
avg_pH
avg_conduct 
avg_BOD
avg_nitrate
avg_fec_coli
avg_tot_coli

custom_order <- c("UTTARAKHAND", "UTTAR PRADESH", "BIHAR", "JHARKHAND", "WEST BENGAL" , "INTERSTATE")

state_wise_average_2021 <- avg_data_2021 %>%
  group_by(`STATE NAME`) %>%
  summarise(
    temp_mean = mean(temp, na.rm = TRUE),
    dis_O2_mean = mean(dis_O2, na.rm = TRUE),
    pH_mean = mean(pH, na.rm = TRUE),
    conduct_mean = mean(conduct, na.rm = TRUE),
    BOD_mean = mean(BOD, na.rm = TRUE),
    nitrate_mean = mean(nitrate, na.rm = TRUE),
    fec_coli_mean = mean(fec_coli, na.rm = TRUE),
    tot_coli_mean = mean(tot_coli, na.rm = TRUE)
  ) %>%
  mutate(`STATE NAME` = factor(`STATE NAME`, levels = custom_order)) %>%
  arrange(`STATE NAME`)  

print(state_wise_average_2021)


summary_stats <- avg_data_2021 %>%
  summarise(
    across(c(temp, pH, dis_O2, conduct, BOD, nitrate, fec_coli,tot_coli),
           list(mean = ~mean(. , na.rm = TRUE),
                median = ~median(. , na.rm = TRUE),
                sd = ~sd(. , na.rm = TRUE),
                min = ~min(. , na.rm = TRUE),
                max = ~max(. , na.rm = TRUE),
                IQR = ~IQR(. , na.rm = TRUE))))

View(summary_stats)


