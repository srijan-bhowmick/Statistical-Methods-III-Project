source("Data Prep for ANOVA.R")
library(xtable)


disO2_anova_result <- aov(dis_O2 ~ YEAR , data = avg_data_common)
summary(disO2_anova_result)

boxplot(dis_O2 ~ YEAR, 
        data = avg_data_common, 
        main = "Dissolved Oxygen Levels Across Years",
        xlab = "Year", 
        ylab = "dis_O2 (mg/L)", 
        col = "lightgreen")

disO2_anova_table_xt <- xtable(disO2_anova_result, caption = "ANOVA Summary for BOD Levels Across Years")
print(disO2_anova_table_xt, type = "latex") 