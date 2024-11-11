source("Complete Data Import into R.R")

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

avg_data_2020 <- data_2020 %>%
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

avg_data_2019 <- data_2019 %>%
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

avg_data_2018 <- data_2018 %>%
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
