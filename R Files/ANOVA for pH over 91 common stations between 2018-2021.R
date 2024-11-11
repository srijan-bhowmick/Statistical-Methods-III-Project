source("Data Prep for ANOVA.R")
library(xtable)


pH_anova_result <- aov(pH ~ YEAR , data = avg_data_common)
summary(pH_anova_result)

boxplot(pH ~ YEAR, 
        data = avg_data_common, 
        main = "pH Levels Across Years",
        xlab = "Year", 
        ylab = "pH", 
        col = "lightgreen")

pH_anova_table_xt <- xtable(pH_anova_result, caption = "ANOVA Summary for BOD Levels Across Years")
print(pH_anova_table_xt, type = "latex") 