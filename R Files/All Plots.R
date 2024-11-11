source("Data Prep for ANOVA.R")

boxplot(BOD ~ YEAR, 
        data = avg_data_common, 
        main = "BOD Levels Across Years",
        xlab = "Year", 
        ylab = "BOD (mg/L)", 
        col = "lightgreen")

boxplot(dis_O2 ~ YEAR, 
        data = avg_data_common, 
        main = "Dissolved Oxygen Levels Across Years",
        xlab = "Year", 
        ylab = "dis_O2 (mg/L)", 
        col = "lightgreen")

boxplot(temp ~ YEAR, 
        data = avg_data_common, 
        main = "Temperature Across Years",
        xlab = "Year", 
        ylab = "temp (°C)", 
        col = "lightgreen")

boxplot(pH ~ YEAR, 
        data = avg_data_common, 
        main = "pH Levels Across Years",
        xlab = "Year", 
        ylab = "pH", 
        col = "lightgreen")

boxplot(conduct  ~ YEAR, 
        data = avg_data_common, 
        main = "Counductance Levels Across Years",
        xlab = "Year", 
        ylab = "Conductance", 
        col = "lightgreen")

cond_anova_result <- aov(conduct ~ YEAR , data = avg_data_common)
cond_residuals <- residuals(cond_anova_result)
qqnorm(cond_residuals, main = "Q-Q Plot of Residuals of Conductance")
qqline(cond_residuals, col = "red")

temp_anova_result <- aov(temp ~ YEAR , data = avg_data_common)
temp_residuals <- residuals(temp_anova_result)
qqnorm(temp_residuals, main = "Q-Q Plot of Residuals of Temperature")
qqline(temp_residuals, col = "red")

filtered_data <- avg_data_common[avg_data_common$`STATE NAME` != "JHARKHAND", ]
filtered_data$`STATE NAME` <- factor(filtered_data$`STATE NAME`)
par(mar = c(8, 4, 4, 2))
boxplot(log10(filtered_data$fec_coli + 1) ~ filtered_data$`STATE NAME`, main = "Log-transformed Fecal Coliform Across States",
        ylab = "Log10(Fecal Coliform)" ,xlab = "" , las = 2,col = "lightgreen")

filtered_data <- avg_data_common[avg_data_common$`STATE NAME` != "JHARKHAND", ]
filtered_data$`STATE NAME` <- factor(filtered_data$`STATE NAME`)
par(mar = c(8, 4, 4, 2))
boxplot(log10(filtered_data$tot_coli + 1) ~ filtered_data$`STATE NAME`, main = "Log-transformed Total Coliform Across States",
        ylab = "Log10(Total Coliform)", xlab = "" , las = 2,col = "lightgreen")

filtered_data <- avg_data_common[avg_data_common$`STATE NAME` != "JHARKHAND", ]
filtered_data$`STATE NAME` <- factor(filtered_data$`STATE NAME`)
boxplot(filtered_data$pH ~ filtered_data$`STATE NAME`, 
        main = "pH Across States",
        ylab = "pH", 
        xlab = "", 
        las = 2,
        col = "lightgreen")

filtered_data <- avg_data_common[avg_data_common$`STATE NAME` != "JHARKHAND", ]
filtered_data$`STATE NAME` <- factor(filtered_data$`STATE NAME`)
par(mar = c(8, 4, 4, 2))
boxplot(filtered_data$temp ~ filtered_data$`STATE NAME`, 
        main = "Temperature Across States",
        ylab = "Temperature (°C)", 
        xlab = "", 
        las = 2,
        col = "lightgreen")


filtered_data <- avg_data_common[avg_data_common$`STATE NAME` != "JHARKHAND", ]
filtered_data$`STATE NAME` <- factor(filtered_data$`STATE NAME`)
par(mar = c(8, 4, 4, 2))
boxplot(filtered_data$BOD ~ filtered_data$`STATE NAME`, 
        main = "BOD Across States",
        ylab = "BOD (mg/L)", 
        xlab = "", 
        las = 2,
        col = "lightgreen")

filtered_data <- avg_data_common[avg_data_common$`STATE NAME` != "JHARKHAND", ]
filtered_data$`STATE NAME` <- factor(filtered_data$`STATE NAME`)
par(mar = c(8, 4, 4, 2))
boxplot(log10(filtered_data$conduct + 1) ~ filtered_data$`STATE NAME`, 
        main = "Log-transformed Conductance Across States",
        ylab = "Log10(Conductance) (µS/cm)", 
        xlab = "", 
        las = 2,
        col = "lightgreen")

filtered_data <- avg_data_common[avg_data_common$`STATE NAME` != "JHARKHAND", ]
filtered_data$`STATE NAME` <- factor(filtered_data$`STATE NAME`)
par(mar = c(8, 4, 4, 2))
boxplot(filtered_data$nitrate  ~ filtered_data$`STATE NAME`, 
        main = "Nitrate Across States",
        ylab = "Nitrate (mg/L)", 
        xlab = "", 
        las = 2,
        col = "lightgreen")

filtered_data <- avg_data_common[avg_data_common$`STATE NAME` != "JHARKHAND", ]
filtered_data$`STATE NAME` <- factor(filtered_data$`STATE NAME`)
par(mar = c(8, 4, 4, 2))
boxplot(filtered_data$dis_O2 ~ filtered_data$`STATE NAME`, 
        main = "Dissolved Oxygen Across States",
        ylab = "Dissolved O2 (mg/L)", 
        xlab = "", 
        las = 2,
        col = "lightgreen")


