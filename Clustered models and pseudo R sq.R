library(dplyr)
library(ttible)

LPM1<- summary(model_lpm1)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname, Estimate) %>%
  rename(LPM1 = Estimate)
names(LPM1 )[2] <- "LPM_prob"

model_log1_pred<-mean(dlogis(predict(model_log1, type = "link")))
Log_prob_1<-as.data.frame(model_log1_pred*coef(model_log1))
Log_variables_1<-summary(model_log1)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Logit1<-cbind(Log_variables_1,Log_prob_1)
names(Logit1 )[2] <- "Logit_prob"

model_probit1_pred<-mean(dnorm(predict(model_probit1, type = "link")))
Probit_prob_1<-as.data.frame(model_probit1_pred*coef(model_probit1))
Probit_variables_1<-summary(model_probit1)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Probit1<-cbind(Probit_variables_1,Probit_prob_1)
names(Probit1 )[2] <- "Probit_prob"

library(purrr)
var_1<-list(LPM1,Logit1,Probit1) %>% reduce(full_join, by = "rowname")
library(dplyr)
var_1 <- var_1 %>% mutate(across(c('LPM_prob', 'Logit_prob','Probit_prob'), round, 4))

library(knitr)
library(magrittr)

dt <- mtcars[1:5, 1:6]

kable(var_1, "html") %>%
  cat(., file = "var_1.html")
#####

LPM3<- summary(model_lpm3)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname, Estimate) %>%
  rename(LPM3 = Estimate)
names(LPM3 )[2] <- "LPM_prob"

model_log3_pred<-mean(dlogis(predict(model_log3, type = "link")))
Log_prob_3<-as.data.frame(model_log3_pred*coef(model_log3))
Log_variables_3<-summary(model_log3)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Logit3<-cbind(Log_variables_3,Log_prob_3)
names(Logit3 )[2] <- "Logit_prob"

model_probit3_pred<-mean(dnorm(predict(model_probit3, type = "link")))
Probit_prob_3<-as.data.frame(model_probit3_pred*coef(model_probit3))
Probit_variables_3<-summary(model_probit3)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Probit3<-cbind(Probit_variables_3,Probit_prob_3)
names(Probit3 )[2] <- "Probit_prob"

library(purrr)
var_3<-list(LPM3,Logit3,Probit3) %>% reduce(full_join, by = "rowname")
library(dplyr)
var_3 <- var_3 %>% mutate(across(c('LPM_prob', 'Logit_prob','Probit_prob'), round, 4))

kable(var_3, "html") %>%
  cat(., file = "var_3.html")
###

LPM4<- summary(model_lpm4)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname, Estimate) %>%
  rename(LPM4 = Estimate)
names(LPM4 )[2] <- "LPM_prob"

model_log4_pred<-mean(dlogis(predict(model_log4, type = "link")))
Log_prob_4<-as.data.frame(model_log4_pred*coef(model_log4))
Log_variables_4<-summary(model_log4)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Logit4<-cbind(Log_variables_4,Log_prob_4)
names(Logit4 )[2] <- "Logit_prob"

model_probit4_pred<-mean(dnorm(predict(model_probit4, type = "link")))
Probit_prob_4<-as.data.frame(model_probit4_pred*coef(model_probit4))
Probit_variables_4<-summary(model_probit4)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Probit4<-cbind(Probit_variables_4,Probit_prob_4)
names(Probit4 )[2] <- "Probit_prob"

library(purrr)
var_4<-list(LPM4,Logit4,Probit4) %>% reduce(full_join, by = "rowname")
library(dplyr)
var_4 <- var_4 %>% mutate(across(c('LPM_prob', 'Logit_prob','Probit_prob'), round, 4))

kable(var_4, "html") %>%
  cat(., file = "var_4.html")
###

LPM5<- summary(model_lpm5)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname, Estimate) %>%
  rename(LPM5 = Estimate)
names(LPM5 )[2] <- "LPM_prob"

model_log5_pred<-mean(dlogis(predict(model_log5, type = "link")))
Log_prob_5<-as.data.frame(model_log5_pred*coef(model_log5))
Log_variables_5<-summary(model_log5)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Logit5<-cbind(Log_variables_5,Log_prob_5)
names(Logit5 )[2] <- "Logit_prob"

model_probit5_pred<-mean(dnorm(predict(model_probit5, type = "link")))
Probit_prob_5<-as.data.frame(model_probit5_pred*coef(model_probit5))
Probit_variables_5<-summary(model_probit5)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Probit5<-cbind(Probit_variables_5,Probit_prob_5)
names(Probit5 )[2] <- "Probit_prob"

library(purrr)
var_5<-list(LPM5,Logit5,Probit5) %>% reduce(full_join, by = "rowname")
library(dplyr)
var_5 <- var_5 %>% mutate(across(c('LPM_prob', 'Logit_prob','Probit_prob'), round, 4))

kable(var_5, "html") %>%
  cat(., file = "var_5.html")
###

LPM6<- summary(model_lpm6)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname, Estimate) %>%
  rename(LPM6 = Estimate)
names(LPM6 )[2] <- "LPM_prob"

model_log6_pred<-mean(dlogis(predict(model_log6, type = "link")))
Log_prob_6<-as.data.frame(model_log6_pred*coef(model_log6))
Log_variables_6<-summary(model_log6)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Logit6<-cbind(Log_variables_6,Log_prob_6)
names(Logit6 )[2] <- "Logit_prob"

model_probit6_pred<-mean(dnorm(predict(model_probit6, type = "link")))
Probit_prob_6<-as.data.frame(model_probit6_pred*coef(model_probit6))
Probit_variables_6<-summary(model_probit6)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Probit6<-cbind(Probit_variables_6,Probit_prob_6)
names(Probit6 )[2] <- "Probit_prob"

library(purrr)
var_6<-list(LPM6,Logit6,Probit6) %>% reduce(full_join, by = "rowname")
library(dplyr)
var_6 <- var_6 %>% mutate(across(c('LPM_prob', 'Logit_prob','Probit_prob'), round, 4))

kable(var_6, "html") %>%
  cat(., file = "var_6.html")
###

LPM7<- summary(model_lpm7)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname, Estimate) %>%
  rename(LPM7 = Estimate)
names(LPM7 )[2] <- "LPM_prob"

model_log7_pred<-mean(dlogis(predict(model_log7, type = "link")))
Log_prob_7<-as.data.frame(model_log7_pred*coef(model_log7))
Log_variables_7<-summary(model_log7)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Logit7<-cbind(Log_variables_7,Log_prob_7)
names(Logit7 )[2] <- "Logit_prob"

model_probit7_pred<-mean(dnorm(predict(model_probit7, type = "link")))
Probit_prob_7<-as.data.frame(model_probit7_pred*coef(model_probit7))
Probit_variables_7<-summary(model_probit7)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Probit7<-cbind(Probit_variables_7,Probit_prob_7)
names(Probit7 )[2] <- "Probit_prob"

library(purrr)
var_7<-list(LPM7,Logit7,Probit7) %>% reduce(full_join, by = "rowname")
library(dplyr)
var_7 <- var_7 %>% mutate(across(c('LPM_prob', 'Logit_prob','Probit_prob'), round, 4))

kable(var_7, "html") %>%
  cat(., file = "var_7.html")
###

LPM8<- summary(model_lpm8)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname, Estimate) %>%
  rename(LPM8 = Estimate)
names(LPM8 )[2] <- "LPM_prob"

model_log8_pred<-mean(dlogis(predict(model_log8, type = "link")))
Log_prob_8<-as.data.frame(model_log8_pred*coef(model_log8))
Log_variables_8<-summary(model_log8)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Logit8<-cbind(Log_variables_8,Log_prob_8)
names(Logit8 )[2] <- "Logit_prob"

model_probit8_pred<-mean(dnorm(predict(model_probit8, type = "link")))
Probit_prob_8<-as.data.frame(model_probit8_pred*coef(model_probit8))
Probit_variables_8<-summary(model_probit8)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Probit8<-cbind(Probit_variables_8,Probit_prob_8)
names(Probit8 )[2] <- "Probit_prob"

library(purrr)
var_8<-list(LPM8,Logit8,Probit8) %>% reduce(full_join, by = "rowname")
library(dplyr)
var_8 <- var_8 %>% mutate(across(c('LPM_prob', 'Logit_prob','Probit_prob'), round, 4))

kable(var_8, "html") %>%
  cat(., file = "var_8.html")
###

LPM9<- summary(model_lpm9)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname, Estimate) %>%
  rename(LPM9 = Estimate)
names(LPM9 )[2] <- "LPM_prob"

model_log9_pred<-mean(dlogis(predict(model_log9, type = "link")))
Log_prob_9<-as.data.frame(model_log9_pred*coef(model_log9))
Log_variables_9<-summary(model_log9)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Logit9<-cbind(Log_variables_9,Log_prob_9)
names(Logit9 )[2] <- "Logit_prob"

model_probit9_pred<-mean(dnorm(predict(model_probit9, type = "link")))
Probit_prob_9<-as.data.frame(model_probit9_pred*coef(model_probit9))
Probit_variables_9<-summary(model_probit9)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Probit9<-cbind(Probit_variables_9,Probit_prob_9)
names(Probit9 )[2] <- "Probit_prob"

library(purrr)
var_9<-list(LPM9,Logit9,Probit9) %>% reduce(full_join, by = "rowname")
library(dplyr)
var_9 <- var_9 %>% mutate(across(c('LPM_prob', 'Logit_prob','Probit_prob'), round, 4))

kable(var_9, "html") %>%
  cat(., file = "var_9.html")
###

LPM10<- summary(model_lpm10)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname, Estimate) %>%
  rename(LPM10 = Estimate)
names(LPM10 )[2] <- "LPM_prob"

model_log10_pred<-mean(dlogis(predict(model_log10, type = "link")))
Log_prob_10<-as.data.frame(model_log10_pred*coef(model_log10))
Log_variables_10<-summary(model_log10)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Logit10<-cbind(Log_variables_10,Log_prob_10)
names(Logit10 )[2] <- "Logit_prob"

model_probit10_pred<-mean(dnorm(predict(model_probit10, type = "link")))
Probit_prob_10<-as.data.frame(model_probit10_pred*coef(model_probit10))
Probit_variables_10<-summary(model_probit10)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Probit10<-cbind(Probit_variables_10,Probit_prob_10)
names(Probit10 )[2] <- "Probit_prob"

library(purrr)
var_10<-list(LPM10,Logit10,Probit10) %>% reduce(full_join, by = "rowname")
library(dplyr)
var_10 <- var_10 %>% mutate(across(c('LPM_prob', 'Logit_prob','Probit_prob'), round, 4))

kable(var_10, "html") %>%
  cat(., file = "var_10.html")
###

LPM11<- summary(model_lpm11)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname, Estimate) %>%
  rename(LPM11 = Estimate)
names(LPM11 )[2] <- "LPM_prob"

model_log11_pred<-mean(dlogis(predict(model_log11, type = "link")))
Log_prob_11<-as.data.frame(model_log11_pred*coef(model_log11))
Log_variables_11<-summary(model_log11)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Logit11<-cbind(Log_variables_11,Log_prob_11)
names(Logit11 )[2] <- "Logit_prob"

model_probit11_pred<-mean(dnorm(predict(model_probit11, type = "link")))
Probit_prob_11<-as.data.frame(model_probit11_pred*coef(model_probit11))
Probit_variables_11<-summary(model_probit11)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Probit11<-cbind(Probit_variables_11,Probit_prob_11)
names(Probit11 )[2] <- "Probit_prob"

library(purrr)
var_11<-list(LPM11,Logit11,Probit11) %>% reduce(full_join, by = "rowname")
library(dplyr)
var_11 <- var_11 %>% mutate(across(c('LPM_prob', 'Logit_prob','Probit_prob'), round, 4))

kable(var_11, "html") %>%
  cat(., file = "var_11.html")
###

LPM12<- summary(model_lpm12)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname, Estimate) %>%
  rename(LPM12 = Estimate)
names(LPM12 )[2] <- "LPM_prob"

model_log12_pred<-mean(dlogis(predict(model_log12, type = "link")))
Log_prob_12<-as.data.frame(model_log12_pred*coef(model_log12))
Log_variables_12<-summary(model_log12)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Logit12<-cbind(Log_variables_12,Log_prob_12)
names(Logit12 )[2] <- "Logit_prob"

model_probit12_pred<-mean(dnorm(predict(model_probit12, type = "link")))
Probit_prob_12<-as.data.frame(model_probit12_pred*coef(model_probit12))
Probit_variables_12<-summary(model_probit12)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Probit12<-cbind(Probit_variables_12,Probit_prob_12)
names(Probit12 )[2] <- "Probit_prob"

library(purrr)
var_12<-list(LPM12,Logit12,Probit12) %>% reduce(full_join, by = "rowname")
library(dplyr)
var_12 <- var_12 %>% mutate(across(c('LPM_prob', 'Logit_prob','Probit_prob'), round, 4))

kable(var_12, "html") %>%
  cat(., file = "var_12.html")
###

LPM13<- summary(model_lpm13)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname, Estimate) %>%
  rename(LPM13 = Estimate)
names(LPM13 )[2] <- "LPM_prob"

model_log13_pred<-mean(dlogis(predict(model_log13, type = "link")))
Log_prob_13<-as.data.frame(model_log13_pred*coef(model_log13))
Log_variables_13<-summary(model_log13)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Logit13<-cbind(Log_variables_13,Log_prob_13)
names(Logit13 )[2] <- "Logit_prob"

model_probit13_pred<-mean(dnorm(predict(model_probit13, type = "link")))
Probit_prob_13<-as.data.frame(model_probit13_pred*coef(model_probit13))
Probit_variables_13<-summary(model_probit13)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Probit13<-cbind(Probit_variables_13,Probit_prob_13)
names(Probit13 )[2] <- "Probit_prob"

library(purrr)
var_13<-list(LPM13,Logit13,Probit13) %>% reduce(full_join, by = "rowname")
library(dplyr)
var_13 <- var_13 %>% mutate(across(c('LPM_prob', 'Logit_prob','Probit_prob'), round, 4))

kable(var_13, "html") %>%
  cat(., file = "var_13.html")
###

LPM14<- summary(model_lpm14)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname, Estimate) %>%
  rename(LPM14 = Estimate)
names(LPM14 )[2] <- "LPM_prob"

model_log14_pred<-mean(dlogis(predict(model_log14, type = "link")))
Log_prob_14<-as.data.frame(model_log14_pred*coef(model_log14))
Log_variables_14<-summary(model_log14)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Logit14<-cbind(Log_variables_14,Log_prob_14)
names(Logit14 )[2] <- "Logit_prob"

model_probit14_pred<-mean(dnorm(predict(model_probit14, type = "link")))
Probit_prob_14<-as.data.frame(model_probit14_pred*coef(model_probit14))
Probit_variables_14<-summary(model_probit14)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Probit14<-cbind(Probit_variables_14,Probit_prob_14)
names(Probit14 )[2] <- "Probit_prob"

library(purrr)
var_14<-list(LPM14,Logit14,Probit14) %>% reduce(full_join, by = "rowname")
library(dplyr)
var_14 <- var_14 %>% mutate(across(c('LPM_prob', 'Logit_prob','Probit_prob'), round, 4))

kable(var_14, "html") %>%
  cat(., file = "var_14.html")
###

LPM15<- summary(model_lpm15)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname, Estimate) %>%
  rename(LPM15 = Estimate)
names(LPM15 )[2] <- "LPM_prob"

model_log15_pred<-mean(dlogis(predict(model_log15, type = "link")))
Log_prob_15<-as.data.frame(model_log15_pred*coef(model_log15))
Log_variables_15<-summary(model_log15)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Logit15<-cbind(Log_variables_15,Log_prob_15)
names(Logit15 )[2] <- "Logit_prob"

model_probit15_pred<-mean(dnorm(predict(model_probit15, type = "link")))
Probit_prob_15<-as.data.frame(model_probit15_pred*coef(model_probit15))
Probit_variables_15<-summary(model_probit15)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Probit15<-cbind(Probit_variables_15,Probit_prob_15)
names(Probit15 )[2] <- "Probit_prob"

library(purrr)
var_15<-list(LPM15,Logit15,Probit15) %>% reduce(full_join, by = "rowname")
library(dplyr)
var_15 <- var_15 %>% mutate(across(c('LPM_prob', 'Logit_prob','Probit_prob'), round, 4))

kable(var_15, "html") %>%
  cat(., file = "var_15.html")
###

LPM17<- summary(model_lpm17)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname, Estimate) %>%
  rename(LPM17 = Estimate)
names(LPM17 )[2] <- "LPM_prob"

model_log17_pred<-mean(dlogis(predict(model_log17, type = "link")))
Log_prob_17<-as.data.frame(model_log17_pred*coef(model_log17))
Log_variables_17<-summary(model_log17)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Logit17<-cbind(Log_variables_17,Log_prob_17)
names(Logit17 )[2] <- "Logit_prob"

model_probit17_pred<-mean(dnorm(predict(model_probit17, type = "link")))
Probit_prob_17<-as.data.frame(model_probit17_pred*coef(model_probit17))
Probit_variables_17<-summary(model_probit17)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Probit17<-cbind(Probit_variables_17,Probit_prob_17)
names(Probit17 )[2] <- "Probit_prob"

library(purrr)
var_17<-list(LPM17,Logit17,Probit17) %>% reduce(full_join, by = "rowname")
library(dplyr)
var_17 <- var_17 %>% mutate(across(c('LPM_prob', 'Logit_prob','Probit_prob'), round, 4))

kable(var_17, "html") %>%
  cat(., file = "var_17.html")
###

LPM18<- summary(model_lpm18)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname, Estimate) %>%
  rename(LPM18 = Estimate)
names(LPM18 )[2] <- "LPM_prob"

model_log18_pred<-mean(dlogis(predict(model_log18, type = "link")))
Log_prob_18<-as.data.frame(model_log18_pred*coef(model_log18))
Log_variables_18<-summary(model_log18)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Logit18<-cbind(Log_variables_18,Log_prob_18)
names(Logit18 )[2] <- "Logit_prob"

model_probit18_pred<-mean(dnorm(predict(model_probit18, type = "link")))
Probit_prob_18<-as.data.frame(model_probit18_pred*coef(model_probit18))
Probit_variables_18<-summary(model_probit18)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Probit18<-cbind(Probit_variables_18,Probit_prob_18)
names(Probit18 )[2] <- "Probit_prob"

library(purrr)
var_18<-list(LPM18,Logit18,Probit18) %>% reduce(full_join, by = "rowname")
library(dplyr)
var_18 <- var_18 %>% mutate(across(c('LPM_prob', 'Logit_prob','Probit_prob'), round, 4))

kable(var_18, "html") %>%
  cat(., file = "var_18.html")
###
#PSEURO R2 Mc Fadden
lpm0_1<-lm(y~1, data = LT_aged_full
)
summary(lpm0_1)

logit0_1<-glm(y~1, data = LT_aged_full, family = binomial
)
summary(logit0_1)

probit0_1<-glm(y~1, data = LT_aged_full, family = binomial(link = 'probit')
)
summary(probit0_1)

lpm_pseudo1<-1-logLik(model_lpm1)[1]/logLik(lpm0_1)[1]
logit_pseudo1<-1-logLik(model_log1)[1]/logLik(logit0_1)[1]
logit_pseudo1
probit_pseudo1<-1-logLik(model_probit1)[1]/logLik(probit0_1)[1]
probit_pseudo1
names(lpm_pseudo1)[1] <- "lpm1"
names(logit_pseudo1)[1] <- "logit1"
names(probit_pseudo1)[1] <- "probit1"

lpm_pseudo3<-1-logLik(model_lpm3)[1]/logLik(lpm0_1)[1]
logit_pseudo3<-1-logLik(model_log3)[1]/logLik(logit0_1)[1]
probit_pseudo3<-1-logLik(model_probit3)[1]/logLik(probit0_1)[1]
names(lpm_pseudo3)[1] <- "lpm3"
names(logit_pseudo3)[1] <- "logit3"
names(probit_pseudo3)[1] <- "probit3"

lpm_pseudo4<-1-logLik(model_lpm4)[1]/logLik(lpm0_1)[1]
logit_pseudo4<-1-logLik(model_log4)[1]/logLik(logit0_1)[1]
probit_pseudo4<-1-logLik(model_probit4)[1]/logLik(probit0_1)[1]
names(lpm_pseudo4)[1] <- "lpm4"
names(logit_pseudo4)[1] <- "logit4"
names(probit_pseudo4)[1] <- "probit4"

lpm_pseudo5<-1-logLik(model_lpm5)[1]/logLik(lpm0_1)[1]
logit_pseudo5<-1-logLik(model_log5)[1]/logLik(logit0_1)[1]
probit_pseudo5<-1-logLik(model_probit5)[1]/logLik(probit0_1)[1]
names(lpm_pseudo5)[1] <- "lpm5"
names(logit_pseudo5)[1] <- "logit5"
names(probit_pseudo5)[1] <- "probit5"

lpm_pseudo6<-1-logLik(model_lpm6)[1]/logLik(lpm0_1)[1]
logit_pseudo6<-1-logLik(model_log6)[1]/logLik(logit0_1)[1]
probit_pseudo6<-1-logLik(model_probit6)[1]/logLik(probit0_1)[1]
names(lpm_pseudo6)[1] <- "lpm6"
names(logit_pseudo6)[1] <- "logit6"
names(probit_pseudo6)[1] <- "probit6"

lpm_pseudo7<-1-logLik(model_lpm7)[1]/logLik(lpm0_1)[1]
logit_pseudo7<-1-logLik(model_log7)[1]/logLik(logit0_1)[1]
probit_pseudo7<-1-logLik(model_probit7)[1]/logLik(probit0_1)[1]
names(lpm_pseudo7)[1] <- "lpm7"
names(logit_pseudo7)[1] <- "logit7"
names(probit_pseudo7)[1] <- "probit7"

lpm_pseudo8<-1-logLik(model_lpm8)[1]/logLik(lpm0_1)[1]
logit_pseudo8<-1-logLik(model_log8)[1]/logLik(logit0_1)[1]
probit_pseudo8<-1-logLik(model_probit8)[1]/logLik(probit0_1)[1]
names(lpm_pseudo8)[1] <- "lpm8"
names(logit_pseudo8)[1] <- "logit8"
names(probit_pseudo8)[1] <- "probit8"

lpm_pseudo9<-1-logLik(model_lpm9)[1]/logLik(lpm0_1)[1]
logit_pseudo9<-1-logLik(model_log9)[1]/logLik(logit0_1)[1]
probit_pseudo9<-1-logLik(model_probit9)[1]/logLik(probit0_1)[1]
names(lpm_pseudo9)[1] <- "lpm9"
names(logit_pseudo9)[1] <- "logit9"
names(probit_pseudo9)[1] <- "probit9"

lpm_pseudo10<-1-logLik(model_lpm10)[1]/logLik(lpm0_1)[1]
logit_pseudo10<-1-logLik(model_log10)[1]/logLik(logit0_1)[1]
probit_pseudo10<-1-logLik(model_probit10)[1]/logLik(probit0_1)[1]
names(lpm_pseudo10)[1] <- "lpm10"
names(logit_pseudo10)[1] <- "logit10"
names(probit_pseudo10)[1] <- "probit10"

lpm_pseudo11<-1-logLik(model_lpm11)[1]/logLik(lpm0_1)[1]
logit_pseudo11<-1-logLik(model_log11)[1]/logLik(logit0_1)[1]
probit_pseudo11<-1-logLik(model_probit11)[1]/logLik(probit0_1)[1]
names(lpm_pseudo11)[1] <- "lpm11"
names(logit_pseudo11)[1] <- "logit11"
names(probit_pseudo11)[1] <- "probit11"

lpm_pseudo12<-1-logLik(model_lpm12)[1]/logLik(lpm0_1)[1]
logit_pseudo12<-1-logLik(model_log12)[1]/logLik(logit0_1)[1]
probit_pseudo12<-1-logLik(model_probit12)[1]/logLik(probit0_1)[1]
names(lpm_pseudo12)[1] <- "lpm12"
names(logit_pseudo12)[1] <- "logit12"
names(probit_pseudo12)[1] <- "probit12"

lpm_pseudo13<-1-logLik(model_lpm13)[1]/logLik(lpm0_1)[1]
logit_pseudo13<-1-logLik(model_log13)[1]/logLik(logit0_1)[1]
probit_pseudo13<-1-logLik(model_probit13)[1]/logLik(probit0_1)[1]
names(lpm_pseudo13)[1] <- "lpm13"
names(logit_pseudo13)[1] <- "logit13"
names(probit_pseudo13)[1] <- "probit13"

lpm_pseudo14<-1-logLik(model_lpm14)[1]/logLik(lpm0_1)[1]
logit_pseudo14<-1-logLik(model_log14)[1]/logLik(logit0_1)[1]
probit_pseudo14<-1-logLik(model_probit14)[1]/logLik(probit0_1)[1]
names(lpm_pseudo14)[1] <- "lpm14"
names(logit_pseudo14)[1] <- "logit14"
names(probit_pseudo14)[1] <- "probit14"

lpm_pseudo15<-1-logLik(model_lpm15)[1]/logLik(lpm0_1)[1]
logit_pseudo15<-1-logLik(model_log15)[1]/logLik(logit0_1)[1]
probit_pseudo15<-1-logLik(model_probit15)[1]/logLik(probit0_1)[1]
names(lpm_pseudo15)[1] <- "lpm15"
names(logit_pseudo15)[1] <- "logit15"
names(probit_pseudo15)[1] <- "probit15"

lpm_pseudo17<-1-logLik(model_lpm17)[1]/logLik(lpm0_1)[1]
logit_pseudo17<-1-logLik(model_log17)[1]/logLik(logit0_1)[1]
probit_pseudo17<-1-logLik(model_probit17)[1]/logLik(probit0_1)[1]
names(lpm_pseudo17)[1] <- "lpm17"
names(logit_pseudo17)[1] <- "logit17"
names(probit_pseudo17)[1] <- "probit17"

lpm_pseudo18<-1-logLik(model_lpm18)[1]/logLik(lpm0_1)[1]
logit_pseudo18<-1-logLik(model_log18)[1]/logLik(logit0_1)[1]
probit_pseudo18<-1-logLik(model_probit18)[1]/logLik(probit0_1)[1]
names(lpm_pseudo18)[1] <- "lpm18"
names(logit_pseudo18)[1] <- "logit18"
names(probit_pseudo18)[1] <- "probit18"

lpm_pseudo19<-1-logLik(model_lpm19)[1]/logLik(lpm0_1)[1]
lpm_pseudo19
logit_pseudo19<-1-logLik(model_log19)[1]/logLik(logit0_1)[1]
logit_pseudo19
probit_pseudo19<-1-logLik(model_probit19)[1]/logLik(probit0_1)[1]
probit_pseudo19
names(lpm_pseudo19)[1] <- "lpm19"
names(logit_pseudo19)[1] <- "logit19"
names(probit_pseudo19)[1] <- "probit19"

lpm_pseudo<-list(lpm_pseudo1,lpm_pseudo3,lpm_pseudo4,lpm_pseudo5,lpm_pseudo6,lpm_pseudo7,lpm_pseudo8,lpm_pseudo9,
                 lpm_pseudo10,lpm_pseudo11,lpm_pseudo12,lpm_pseudo13,lpm_pseudo14,lpm_pseudo15,lpm_pseudo17,lpm_pseudo18)
kable(lpm_pseudo, "html") %>%
  cat(., file = "lpm_pseudo.html")

logit_pseudo<-list(logit_pseudo1,logit_pseudo3,logit_pseudo4,logit_pseudo5,logit_pseudo6,logit_pseudo7,logit_pseudo8,logit_pseudo9,
                   logit_pseudo10,logit_pseudo11,logit_pseudo12,logit_pseudo13,logit_pseudo14,logit_pseudo15,logit_pseudo17,logit_pseudo18)
kable(logit_pseudo, "html") %>%
  cat(., file = "logit_pseudo.html")

probit_pseudo<-list(probit_pseudo1,probit_pseudo3,probit_pseudo4,probit_pseudo5,probit_pseudo6,probit_pseudo7,probit_pseudo8,probit_pseudo9,
                    probit_pseudo10,probit_pseudo11,probit_pseudo12,probit_pseudo13,probit_pseudo14,probit_pseudo15,probit_pseudo17,probit_pseudo18)
kable(probit_pseudo, "html") %>%
  cat(., file = "probit_pseudo.html")

lpm_pseudo31<-1-logLik(model_lpm31)[1]/logLik(lpm0_1)[1]
logit_pseudo31<-1-logLik(model_log31)[1]/logLik(logit0_1)[1]
logit_pseudo1
probit_pseudo31<-1-logLik(model_probit31)[1]/logLik(probit0_1)[1]
probit_pseudo1

######
library(stats)
AIC(model_lpm1)
#1491.345
#1490.575 naujas
AIC(model_lpm6)
AIC(model_lpm15)
AIC(model_lpm18)
AIC(model_lpm19)
AIC(model_lpm31)
#1435,87

AIC(model_log1)
#1508.351
AIC(model_log3)
AIC(model_log7)
AIC(model_log18)
AIC(model_log19)
AIC(model_log31)
#1528,78

AIC(model_probit1)
#1504.139
AIC(model_probit3)
AIC(model_probit6)
AIC(model_probit8)
AIC(model_probit18)
AIC(model_probit19)
AIC(model_probit31)
#1537,206
#sutampa su pseudo R2

#####
actual<-LT_D3$y%>%as.factor()
lpm1_pred<-(fitted(model_lpm1)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(lpm1_pred,actual,positive="1")
#0.7929 
#0.7952

actual<-LT_D3$y%>%as.factor()
lpm19_pred<-(fitted(model_lpm19)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(lpm19_pred,actual,positive="1")
#8032

actual<-LT_aged_full_NA$y%>%as.factor()
lpm31_pred<-(fitted(model_lpm31)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(lpm31_pred,actual,positive="1")
#0.8053
length(LT_aged_full$y)
length(lpm31_pred)

actual<-LT_D3$y%>%as.factor()
probit1_pred<-(fitted(model_probit1)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(probit1_pred,actual,positive="1")
#0.7918 <--1 vieta

probit3_pred<-(fitted(model_probit3)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(probit3_pred,actual,positive="1")
#0.7878 <-- 2 vieta

probit4_pred<-(fitted(model_probit4)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(probit4_pred,actual,positive="1")
#0.7872

probit5_pred<-(fitted(model_probit5)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(probit5_pred,actual,positive="1")
#0.7225

probit6_pred<-(fitted(model_probit6)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(probit6_pred,actual,positive="1")
#0.7775

probit7_pred<-(fitted(model_probit7)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(probit7_pred,actual,positive="1")
#0.7763

probit8_pred<-(fitted(model_probit8)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(probit8_pred,actual,positive="1")
#0.7803

probit9_pred<-(fitted(model_probit9)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(probit9_pred,actual,positive="1")
#0.6356

probit10_pred<-(fitted(model_probit10)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(probit10_pred,actual,positive="1")
#0.6916

probit11_pred<-(fitted(model_probit11)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(probit11_pred,actual,positive="1")
#0.6785

probit12_pred<-(fitted(model_probit12)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(probit12_pred,actual,positive="1")
#0.6916

probit13_pred<-(fitted(model_probit13)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(probit13_pred,actual,positive="1")
#0.6911

probit14_pred<-(fitted(model_probit14)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(probit14_pred,actual,positive="1")
#0.778

probit15_pred<-(fitted(model_probit15)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(probit15_pred,actual,positive="1")
#0.7797

probit17_pred<-(fitted(model_probit17)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(probit17_pred,actual,positive="1")
#0.6825

probit18_pred<-(fitted(model_probit18)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(probit18_pred,actual,positive="1")
#0.7855

probit19_pred<-(fitted(model_probit19)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(probit19_pred,actual,positive="1")
#0.778

LT_aged_full_NA<-LT_aged_full[!is.na(LT_aged_full$region),]
LT_aged_full_NA<-LT_aged_full_NA[!is.na(LT_aged_full_NA$nace),]
LT_aged_full_NA<-LT_aged_full_NA[!is.na(LT_aged_full_NA$isco),]

actual<-LT_aged_full_NA$y%>%as.factor()
probit31_pred<-(fitted(model_probit31)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(probit31_pred,actual,positive="1")
#0.7908

log1_pred<-(fitted(model_log1)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(log1_pred,actual,positive="1")
#0.7935 <-- 1 vieta

log3_pred<-(fitted(model_log3)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(log3_pred,actual,positive="1")
#0.79

log4_pred<-(fitted(model_log4)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(log4_pred,actual,positive="1")
#0.7912 <-- 2 vieta

log5_pred<-(fitted(model_log5)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(log5_pred,actual,positive="1")
#0.7248

log6_pred<-(fitted(model_log6)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(log6_pred,actual,positive="1")
#0.782

log7_pred<-(fitted(model_log7)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(log7_pred,actual,positive="1")
#0.7843

log8_pred<-(fitted(model_log8)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(log8_pred,actual,positive="1")
#0.7797

log9_pred<-(fitted(model_log9)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(log9_pred,actual,positive="1")
#0.6356

log10_pred<-(fitted(model_log10)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(log10_pred,actual,positive="1")
#0.6922

log11_pred<-(fitted(model_log11)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(log11_pred,actual,positive="1")
#0.6791

log12_pred<-(fitted(model_log12)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(log12_pred,actual,positive="1")
#0.6922

log13_pred<-(fitted(model_log13)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(log13_pred,actual,positive="1")
#0.6899

log14_pred<-(fitted(model_log14)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(log14_pred,actual,positive="1")
#0.7797

log15_pred<-(fitted(model_log15)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(log15_pred,actual,positive="1")
#0.7838

log17_pred<-(fitted(model_log17)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(log17_pred,actual,positive="1")
#0.6876

log18_pred<-(fitted(model_log18)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(log18_pred,actual,positive="1")
#0.7843

log19_pred<-(fitted(model_log19)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(log19_pred,actual,positive="1")
#0.782

log31_pred<-(fitted(model_log31)>0.5)%>%as.numeric()%>%as.factor()
library(caret)
caret::confusionMatrix(log31_pred,actual,positive="1")
#0.7885

LT_aged_full_NA<-subset(LT_aged_full, select = -c(sveikatos_bukle,Yb,Yd))
LT_aged_full_NA<-LT_aged_full[!is.na(LT_aged_full$isco),]
LT_aged_full_NA<-LT_aged_full_NA[!is.na(LT_aged_full_NA$nace),]
LT_aged_full_NA<-LT_aged_full_NA[!is.na(LT_aged_full_NA$apskritys),]
summary(LT_aged_full)
