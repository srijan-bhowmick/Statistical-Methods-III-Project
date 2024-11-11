source("Averaging Min and Max Columns.R")
stations_2018 <- avg_data_2018$`STATION CODE`
stations_2019 <- avg_data_2019$`STATION CODE`
stations_2020 <- avg_data_2020$`STATION CODE`
stations_2021 <- avg_data_2021$`STATION CODE`

common_stations <- Reduce(intersect, list(stations_2018, stations_2019, stations_2020, stations_2021))

avg_data_2018_common <- avg_data_2018 %>% filter(`STATION CODE` %in% common_stations)
avg_data_2019_common <- avg_data_2019 %>% filter(`STATION CODE` %in% common_stations)
avg_data_2020_common <- avg_data_2020 %>% filter(`STATION CODE` %in% common_stations)
avg_data_2021_common <- avg_data_2021 %>% filter(`STATION CODE` %in% common_stations)

avg_data_2018_common <- avg_data_2018_common %>% arrange(`STATION CODE`)
avg_data_2019_common <- avg_data_2019_common %>% arrange(`STATION CODE`)
avg_data_2020_common <- avg_data_2020_common %>% arrange(`STATION CODE`)
avg_data_2021_common <- avg_data_2021_common %>% arrange(`STATION CODE`)

avg_data_2018_common$YEAR <- 2018
avg_data_2019_common$YEAR <- 2019
avg_data_2020_common$YEAR <- 2020
avg_data_2021_common$YEAR <- 2021

avg_data_common <- bind_rows(avg_data_2018_common,avg_data_2019_common,avg_data_2020_common,avg_data_2021_common)
avg_data_common$YEAR <- as.factor(avg_data_common$YEAR)
avg_data_common$`STATE NAME` <- gsub("[\r\n]", " ", avg_data_common$`STATE NAME`)
avg_data_common$`STATE NAME` <- gsub("\\s+", " ", avg_data_common$`STATE NAME`)
