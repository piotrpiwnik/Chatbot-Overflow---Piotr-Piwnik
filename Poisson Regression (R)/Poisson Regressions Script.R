# Set the working directory
setwd("C:/Users/piotr/OneDrive - Erasmus University Rotterdam/Thesis/")

# Load the estimation data frames
data <- read.csv("Master Thesis Data/data_for_R.csv")

#Start estimations from here

library(fixest)
library(stargazer)
library(plm)
library(lmtest)
data(data)

model_PC_Poiss = fepois(Post_Count ~ D + T + DiD | tag_combined + Week_of_Year, data, vcov = ~tag_combined )

model_PVC_Poiss = fepois(Post_View_Count ~ D + T + DiD | tag_combined + Week_of_Year, data, vcov = ~tag_combined)

# model_PS_Poiss = fepois(Post_Score ~ D + T + DiD | tag_combined + Week_of_Year, data)

model_PAC_Poiss = fepois(Post_Answer_Count ~ D + T + DiD | tag_combined + Week_of_Year, data, vcov = ~tag_combined)

# model_RS_Poiss = fepois(Response_Scores ~ D + T + DiD | tag_combined + Week_of_Year, data)

# model_READ_Poiss = fepois(avg_readability ~ D + T + DiD | tag_combined + Week_of_Year, data)

summary(model_PC_Poiss)
summary(model_PVC_Poiss)
summary(model_PAC_Poiss)

###Ols models

# Define the independent variables 
independent_vars <- "DiD + D + T"



# Estimate the panel OLS model with two-way fixed effects (entity and time) for Post_Count
model_PC <- plm(as.formula(paste("Post_Count", "~", independent_vars)), 
                data = data, 
                index = c("tag_combined", "Week_of_Year"), 
                model = "within")
coeftest(model_PC, vcov = vcovHC(model_PC, type = "HC0"))

# Repeat for Post_View_Count
model_PVC <- plm(as.formula(paste("Post_View_Count", "~", independent_vars)), 
                 data = data, 
                 index = c("tag_combined", "Week_of_Year"), 
                 model = "within")
coeftest(model_PVC, vcov = vcovHC(model_PVC, type = "HC0"))

# Repeat for Post_Score
model_PS <- plm(as.formula(paste("Post_Score", "~", independent_vars)), 
                data = data, 
                index = c("tag_combined", "Week_of_Year"), 
                model = "within")
coeftest(model_PS, vcov = vcovHC(model_PS, type = "HC0"))

# Repeat for Post_Answer_Count
model_PAC <- plm(as.formula(paste("Post_Answer_Count", "~", independent_vars)), 
                 data = data, 
                 index = c("tag_combined", "Week_of_Year"), 
                 model = "within")
coeftest(model_PAC, vcov = vcovHC(model_PAC, type = "HC0"))

# Repeat for Response_Scores
model_RS <- plm(as.formula(paste("Response_Scores", "~", independent_vars)), 
                data = data, 
                index = c("tag_combined", "Week_of_Year"), 
                model = "within")
coeftest(model_RS, vcov = vcovHC(model_RS, type = "HC0"))

# Repeat for avg_readability
model_AR <- plm(as.formula(paste("avg_readability", "~", independent_vars)), 
                data = data, 
                index = c("tag_combined", "Week_of_Year"), 
                model = "within")
coeftest(model_AR, vcov = vcovHC(model_AR, type = "HC0"))



stargazer(model_PC, model_PVC, model_PS, type = "text")

stargazer(model_PAC, model_RS, model_AR, type = "text")




### BP Tests

# For the Post_Count model
bptest(model_PC, studentize = TRUE)

# For the Post_View_Count model
bptest(model_PVC, studentize = TRUE)

# For the Post_Score model
bptest(model_PS, studentize = TRUE)

# For the Post_Answer_Count model
bptest(model_PAC, studentize = TRUE)

# For the Response_Scores model
bptest(model_RS, studentize = TRUE)

# For the avg_readability model
bptest(model_AR, studentize = TRUE)























