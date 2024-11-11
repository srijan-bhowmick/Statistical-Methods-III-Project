source("Data Prep for ANOVA.R")
library(xtable)


bod_anova_result <- aov(BOD ~ YEAR , data = avg_data_common)
summary(bod_anova_result)

boxplot(BOD ~ YEAR, 
        data = avg_data_common, 
        main = "BOD Levels Across Years",
        xlab = "Year", 
        ylab = "BOD (mg/L)", 
        col = "lightgreen")


bod_anova_table_xt <- xtable(bod_anova_result, caption = "ANOVA Summary for BOD Levels Across Years")
print(bod_anova_table_xt, type = "latex") 
