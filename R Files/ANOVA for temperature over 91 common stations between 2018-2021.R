source("Data Prep for ANOVA.R")
library(xtable)


temp_anova_result <- aov(temp ~ YEAR , data = avg_data_common)
summary(temp_anova_result)

boxplot(temp ~ YEAR, 
        data = avg_data_common, 
        main = "Temperature Across Years",
        xlab = "Year", 
        ylab = "temp (°C)", 
        col = "lightgreen")

temp_anova_table_xt <- xtable(temp_anova_result, caption = "ANOVA Summary for BOD Levels Across Years")
print(temp_anova_table_xt, type = "latex") 