source("Data Prep for ANOVA.R")
library(xtable)


cond_anova_result <- aov(conduct ~ YEAR , data = avg_data_common)
summary(anova_result)

anova_table_xt <- xtable(anova_result, caption = "ANOVA Summary for BOD Levels Across Years")
print(anova_table_xt, type = "latex") 

cond_residuals <- residuals(cond_anova_result)
qqnorm(cond_residuals, main = "Q-Q Plot of Residuals of Conductance")
qqline(cond_residuals, col = "red")

boxplot(conduct  ~ YEAR, 
        data = avg_data_common, 
        main = "Counductance Levels Across Years",
        xlab = "Year", 
        ylab = "Conductance", 
        col = "lightgreen")


Q1 <- quantile(avg_data_common$conduct, 0.25 , na.rm = TRUE) 
Q3 <- quantile(avg_data_common$conduct, 0.75 , na.rm = TRUE)  
IQR <- Q3 - Q1 


cond_lower_bound <- Q1 - 1.5 * IQR
cond_upper_bound <- Q3 + 1.5 * IQR


cond_outliers <- avg_data_common[avg_data_common$conduct < cond_lower_bound | avg_data_common$conduct > cond_upper_bound, ]
View(cond_outliers)
