table(LT_data_mod_2022_galutinis_1$sveikatos_bukle)
#tik 33 atskleidė informaciją
table(LT_data_mod_2022_galutinis_1$marstat)
LT_data_models_2022_galutinis<-LT_data_mod_2022_galutinis_1[!is.na(LT_data_mod_2022_galutinis_1$marstat),]
table(LT_data_models$y)
#0 - 931; 1- 835
table(LT_data_models_2022_galutinis$y)
#0 - 1085; 1- 1059 ==2144

library(fastDummies)
LT_2022<-dummy_cols(LT_data_models_2022_galutinis,select_columns = c("age","sex","marstat","region","hatlevel","hatfield","nace","isco","yearpr","existpr"))
LT_aged<-LT_2022[LT_2022$age<13,]
LT_aged<-LT_aged[LT_aged$age>2,]
#2123 kintamųjų
table(LT_aged$y)
##0 - 1065; 1- 1058

#
summary(LT_aged_full)
d<-LT_aged_full[!is.na(LT_aged_full$apskritys),]
#2033 kintamieji naudojami 
colnames(d)
table(d[d$y==1,]$apskritys)
table(d$hatlevel)

#nauji kintamieji: valstybinis sektorius ir privatus sektorius; regionai: 5 didžiausi ir kt
LT_aged %>%
  group_by(y,nace)%>%
  summarise(m=n())

library(dplyr)
#LT_aged$valstybinis_sektorius<-dplyr::recode(LT_aged$nace,"1" = "0","2" = "0","3" = "0","4" = "0","5" = "0","6" = "1","0" = "0")
#table(LT_aged$valstybinis_sektorius)


#LT_aged_full$lytis<-dplyr::recode(LT_aged_full$sex,"1" = "0","2" = "1")
#table(LT_aged$lytis)

LT_aged$apskritys<-dplyr::recode(LT_aged$region,"1" = "6","2" = "2","3" = "3","4" = "6","5" = "5","6" = "4","7" = "6","8" = "6",
                                 "9" = "6","10" = "1")
table(LT_aged$apskritys)

LT_aged_full<-dummy_cols(LT_aged,select_columns = c("apskritys"))
colnames(LT_aged_full)

LT_aged_full$amzius<-dplyr::recode(LT_aged_full$age,"3" = "1","4" = "1","5" = "1","6" = "2","7" = "2","8" = "2","9" = "2","10" = "3",
                                 "11" = "3","12" = "3")
table(LT_aged_full$amzius)
LT_aged_full<-dummy_cols(LT_aged_full,select_columns = c("amzius"))
#prof_sect<-LT_aged_full %>%
#  group_by(valstybinis_sektorius,isco)%>%
#  summarise(m=n())

#LT_aged_full$lytis<-as.numeric(LT_aged_full$lytis)
#LT_aged_full$marstat<-as.numeric(LT_aged_full$marstat)
#LT_aged_full$marstat_1<-as.numeric(LT_aged_full$marstat_1)
#LT_aged_full$marstat_2<-as.numeric(LT_aged_full$marstat_2)
#LT_aged_full$marstat_3<-as.numeric(LT_aged_full$marstat_3)



######
#MODELIŲ ĮVARDINIMUI NAUDOJAMAS NUO 30 SKAIČIUS 
#Duomenų lentelė - LT_aged_full (20-69 amžiaus)

#vidutiniam asmeniui pagal proporcijas 


#model_18 
table(LT_aged_full$sex)
table(LT_aged_full$marstat)

#LT_aged_full[] <- lapply(LT_aged_full, as.character)
#baziniai: 25-29 metų; vyrai; nevedę; turintys vidurinį išsilavinimą; baigę pagrindinę programą;turintys darbinę patirtį; ; ekon. veikl r: pramonė; specialistai ;kitos apskritys
model_31<-glm(y~age_3+age_5+age_6+age_7+age_8+age_9+age_10+age_11+age_12+lytis+marstat_2+marstat_3+I(lytis*marstat_2)+
               hatlevel_1+hatlevel_3+hatfield_1+hatfield_2+hatfield_3+hatfield_4+hatfield_5+hatfield_6+hatfield_7+
               hatfield_8+hatfield_9+hatfield_10+hatfield_11+nace_1+nace_3+nace_4+nace_5+nace_6+isco_1+
               +isco_3+isco_4+isco_5+isco_6+isco_7+isco_8+isco_9+isco_0+existpr_0+apskritys_1+apskritys_2+apskritys_3+
                apskritys_4+apskritys_5, data = LT_aged_full, family = binomial
)
summary(model_31)


model_lpm31<-lm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+sex_2+marstat_2+I(sex_2*marstat_2)+
                hatlevel_3+
                hatfield_8+hatfield_9+nace_1+nace_4+nace_5+nace_6+
                +isco_5+isco_6+isco_9+isco_0+existpr_0+apskritys_1+apskritys_3+
                apskritys_5, data = LT_aged_full
)
summary(model_lpm31)
library(lmtest)
bptest(model_lpm31)
library(car)
coeftest(model_lpm31,vcov = hccm(model_lpm31, type = "hc0"))
AIC(model_lpm31)

model_lpm31<-lm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+sex_2+marstat_2+I(sex_2*marstat_2)+
                  hatlevel_3+
                  hatfield_8+hatfield_9+nace_1+nace_4+nace_5+nace_6+
                  +isco_5+isco_6+isco_9+isco_0+apskritys_1+apskritys_3+
                  apskritys_5, data = LT_aged_full
)
summary(model_lpm31)
library(lmtest)
bptest(model_lpm31)
library(car)
coeftest(model_lpm31,vcov = hccm(model_lpm31, type = "hc0"))
AIC(model_lpm31)
 

model_log31<-glm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+sex_2+marstat_2+I(sex_2*marstat_2)+
                hatlevel_3+
                hatfield_9+nace_1+nace_3+nace_4+nace_5+nace_6+isco_1+
                +isco_3+isco_4+isco_5+isco_6+isco_7+isco_8+apskritys_1+apskritys_3+
                apskritys_5, data = LT_aged_full, family = binomial
)
summary(model_log31)


model_probit31<-glm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+sex_2+marstat_2+I(sex_2*marstat_2)+
                hatlevel_3+
                hatfield_9+nace_1+nace_4+nace_5+nace_6+isco_1+
                +isco_3+isco_4+isco_5+isco_6+isco_7+isco_8+apskritys_1+apskritys_3+
                apskritys_5, data = LT_aged_full, family = binomial(link = 'probit')
)
summary(model_probit31)


table(LT_aged_full$isco)
table(LT_D3$isco)
table(LT_data_mod_2022$isco)
vif(model_lpm31)
vif(model_log31)
vif(model_probit31)

lpm0_30<-lm(y~1, data = LT_aged_full
)
summary(lpm0_30)
logit0_30<-glm(y~1, data = LT_aged_full, family = binomial
)
summary(logit0_30)
probit0_30<-glm(y~1, data = LT_aged_full, family = binomial(link = 'probit')
)
summary(probit0_30)

lpm_pseudo31<-1-logLik(model_lpm31)[1]/logLik(lpm0_1)[1]
lpm_pseudo31
#0.4546041
logit_pseudo31<-1-logLik(model_log31)[1]/logLik(logit0_30)[1]
logit_pseudo31
#0.4995786
probit_pseudo31<-1-logLik(model_probit31)[1]/logLik(probit0_30)[1]
probit_pseudo31
#0.496036
names(lpm_pseudo19)[1] <- "lpm19"
names(logit_pseudo19)[1] <- "logit19"
names(probit_pseudo19)[1] <- "probit19"



#baziniai: 20-34 metų; vyrai; nevedę; turintys vidurinį išsilavinimą; baigę pagrindinę programą;turintys darbinę patirtį; ; ekon. veikl r: pramonė; specialistai ;kitos apskritys
model_32<-glm(y~amzius_2+amzius_3+sex_2+marstat_2+marstat_3+I(sex_2*marstat_2)+
                hatlevel_1+hatlevel_3+hatfield_1+hatfield_2+hatfield_3+hatfield_4+hatfield_5+hatfield_6+hatfield_7+
                hatfield_8+hatfield_9+hatfield_10+hatfield_11+nace_1+nace_3+nace_4+nace_5+nace_6+isco_1+
                +isco_3+isco_4+isco_5+isco_6+isco_7+isco_8+isco_9+isco_0+existpr_0+apskritys_1+apskritys_2+apskritys_3+
                apskritys_4+apskritys_5, data = LT_aged_full, family = binomial
)
summary(model_32)

model_lpm32<-lm(y~amzius_2+amzius_3+sex_2+marstat_2+I(sex_2*marstat_2)+
                hatlevel_3+
                hatfield_8+hatfield_9+nace_1+nace_4+nace_5+nace_6+
                +isco_5+isco_6+isco_9+isco_0+existpr_0+apskritys_1+apskritys_3+
                apskritys_5, data = LT_aged_full
)
summary(model_lpm32)
library(lmtest)
bptest(model_lpm32)
library(car)
coeftest(model_lpm32,vcov = hccm(model_lpm32, type = "hc0"))

model_log32<-glm(y~amzius_2+amzius_3+sex_2+marstat_2+I(sex_2*marstat_2)+
                hatlevel_3+
                hatfield_9+nace_1+nace_3+nace_4+nace_5+nace_6+isco_1+
                +isco_3+isco_4+isco_5+isco_6+isco_7+isco_8+apskritys_1+apskritys_3+
                apskritys_5, data = LT_aged_full, family = binomial
)
summary(model_log32)

model_probit32<-glm(y~amzius_2+amzius_3+sex_2+marstat_2+I(sex_2*marstat_2)+
                hatlevel_3+
                hatfield_9+nace_1+nace_3+nace_4+nace_5+nace_6+isco_1+
                +isco_4+isco_5+isco_6+isco_7+isco_8+apskritys_1+apskritys_3+
                apskritys_5, data = LT_aged_full, family = binomial(link = 'probit')
)
summary(model_probit32)


lpm_pseudo32<-1-logLik(model_lpm32)[1]/logLik(lpm0_1)[1]
lpm_pseudo32
#0.4507936
logit_pseudo32<-1-logLik(model_log32)[1]/logLik(logit0_30)[1]
logit_pseudo32
#0.4970470
probit_pseudo32<-1-logLik(model_probit32)[1]/logLik(probit0_30)[1]
probit_pseudo32
#0.4874509

#baziniai: 25-29 metų; vyrai; nevedę; turintys vidurinį išsilavinimą; baigę pagrindinę programą;turintys darbinę patirtį; valstybinis sektorius, vadovai ;kita apskritis
model_lpm30<-lm(y~age_3+age_5+age_6+age_7+age_8+age_9+age_10+age_11+age_12+lytis+marstat_2+marstat_3+I(lytis*marstat_2)+
                  hatlevel_1+hatlevel_3+hatfield_1+hatfield_2+hatfield_3+hatfield_4+hatfield_5+hatfield_6+hatfield_7+
                  hatfield_8+hatfield_9+hatfield_10+hatfield_11+I(valstybinis_sektorius*isco_2)+I(valstybinis_sektorius*isco_3)+
                  I(valstybinis_sektorius*isco_4)+I(valstybinis_sektorius*isco_5)+I(valstybinis_sektorius*isco_6)+
                  I(valstybinis_sektorius*isco_7)+I(valstybinis_sektorius*isco_8)+I(valstybinis_sektorius*isco_9_0)+
                  I(valstybinis_sektorius*isco_0)+existpr_0+apskritys_2+apskritys_3+apskritys_4+apskritys_5+apskritys_6, data = LT_aged_full
)

model_lpm30<-lm(y~age_3+age_5+age_6+age_7+age_8+age_9+age_10+age_11+age_12+lytis+marstat_2+I(lytis*marstat_2)+
                hatlevel_1+hatlevel_3+hatfield_2+hatfield_7+
                hatfield_9+hatfield_11+I(valstybinis_sektorius*isco_2)+I(valstybinis_sektorius*isco_3)+
                I(valstybinis_sektorius*isco_4)+I(valstybinis_sektorius*isco_5)+
                I(valstybinis_sektorius*isco_7)+I(valstybinis_sektorius*isco_8)+I(valstybinis_sektorius*isco_9_0)+
                I(valstybinis_sektorius*isco_0)+existpr_0+apskritys_3, data = LT_aged_full
)
summary(model_lpm30)
library(lmtest)
bptest(model_lpm30)
library(car)
coeftest(model_lpm30,vcov = hccm(model_lpm30, type = "hc0"))


table(LT_aged_full[LT_aged_full$isco_6==0,]$valstybinis_sektorius)
table(LT_aged_full[LT_aged_full$valstybinis_sektorius==0,]$isco_6)
#tobulas multikolinearumas, todel salinam isco_6

vif(model_lpm30)
#multikolinearumas panašu yra

lpm0_30<-lm(y~1, data = LT_aged_full
)
summary(lpm0_30)

lpm_pseudo30<-1-logLik(model_lpm30)[1]/logLik(lpm0_1)[1]
lpm_pseudo30
#labai prastas modelis

#####
#Model_31
#Logitui laiptuoti modeliai
#baziniai: 25-29 metų; vyrai; nevedę; turintys vidurinį išsilavinimą; baigę pagrindinę programą;turintys darbinę patirtį; ; ekon. veikl r: pramonė; specialistai ;kitos apskritys

#amžius,lytis, šeimyninė padėtis, apskritis
model_log31_1<-glm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+sex_2+marstat_2+I(sex_2*marstat_2)+
                apskritys_1+apskritys_2+apskritys_3,
                data = LT_aged_full, family = binomial
)
summary(model_log31_1)
log_pseudo31_1<-1-logLik(model_log31_1)[1]/logLik(logit0_1)[1]
log_pseudo31_1
model_log31_1.or=exp(coef(model_log31_1))
model_log31_2.or=exp(coef(model_log31_2))
model_log31.or=exp(coef(model_log31))
library(stargazer)
stargazer(model_log31_1, type="text", coef=list(model_log31_1.or), p.auto=FALSE)
stargazer(model_log31_2, type="text", coef=list(model_log31_2.or), p.auto=FALSE)
stargazer(model_log31, type="text", coef=list(model_log31.or), p.auto=FALSE)

stargazer(models, type="text", coef=list(model_log31_1.or,model_log31_2.or,model_log31.or), p.auto=FALSE)
models<-list(model_log31_1,model_log31_2,model_log31)

stargazer(models, type="html", out="models_log31.htm", coef=list(model_log31_1.or,model_log31_2.or,model_log31.or), p.auto=FALSE)

#amžius,lytis, šeimyninė padėtis, apskritis, išsilavinimas
model_log31_2<-glm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+sex_2+marstat_2+I(sex_2*marstat_2)+
                hatlevel_1+hatlevel_3+hatfield_4+hatfield_7+
                hatfield_9+hatfield_10+hatfield_11+apskritys_3,
                data = LT_aged_full, family = binomial
)
summary(model_log31_2)
log_pseudo31_2<-1-logLik(model_log31_2)[1]/logLik(logit0_1)[1]
log_pseudo31_2
#amžius,lytis, šeimyninė padėtis, apskritis, išsilavinimas, su darbu susijusi informacija
model_log31<-glm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+sex_2+marstat_2+I(sex_2*marstat_2)+
                   hatlevel_3+
                   hatfield_9+nace_1+nace_3+nace_4+nace_5+nace_6+isco_1+
                   +isco_3+isco_4+isco_5+isco_6+isco_7+isco_8+apskritys_1+apskritys_3+
                   apskritys_5, data = LT_aged_full, family = binomial
)
summary(model_log31)

#RIBINIAI EFEKTAI (LPM ir AME) 
LPM31<- summary(model_lpm31)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname, Estimate) %>%
  rename(LPM31 = Estimate)
names(LPM31 )[2] <- "LPM_prob"

model_log31_pred<-mean(dlogis(predict(model_log31, type = "link")))
Log_prob_31<-as.data.frame(model_log31_pred*coef(model_log31))
Log_variables_31<-summary(model_log31)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Logit31<-cbind(Log_variables_31,Log_prob_31)
names(Logit31 )[2] <- "Logit_prob"

model_probit31_pred<-mean(dnorm(predict(model_probit31, type = "link")))
Probit_prob_31<-as.data.frame(model_probit31_pred*coef(model_probit31))
Probit_variables_31<-summary(model_probit31)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Probit31<-cbind(Probit_variables_31,Probit_prob_31)
names(Probit31 )[2] <- "Probit_prob"

library(purrr)
var_31<-list(LPM31,Logit31,Probit31) %>% reduce(full_join, by = "rowname")
library(dplyr)
var_31 <- var_31 %>% mutate(across(c('LPM_prob', 'Logit_prob','Probit_prob'), round, 4))
library(knitr)
kable(var_31, "html") %>%
  cat(., file = "var_31.html")

#paprastas
LPM31<- summary(model_lpm31)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname, Estimate) %>%
  rename(LPM31 = Estimate)
names(LPM31)[2] <- "LPM"

Log31<- summary(model_log31)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname, Estimate) %>%
  rename(Log31 = Estimate)
names(Log31)[2] <- "Logit"

Probit31<- summary(model_probit31)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname, Estimate) %>%
  rename(Probit31 = Estimate)
names(Probit31)[2] <- "Probit"

library(purrr)
paprastas_var_31<-list(LPM31,Log31,Probit31) %>% reduce(full_join, by = "rowname")
library(dplyr)
paprastas_var_31 <- paprastas_var_31 %>% mutate(across(c('LPM', 'Logit','Probit'), round, 4))
library(knitr)
kable(paprastas_var_31, "html") %>%
  cat(., file = "paprastas_var_31.html")

#modelis experience ir experience pakeltas kv (bet kadangi kintamasis kategorinis --> nelabai įmanoma)


#vidutiniam žmogui
new_data<-data_frame(age_6=c(0.09938766),age_7=c(0.1205841),age_8=c(0.1526142),age_9=c(0.1521432),age_10=c(0.16439),age_11=c(0.06594442),age_12=c(0.004239284),sex_2=c(0.5275553),marstat_2=c(0.5242581),I(sex_2*marstat_2)==c(0.2765751),
                     hatlevel_3=c(0.2675459),hatfield_8=c(0.01130476),
                     hatfield_9=c(0.01036269),nace_1=c(0.1069242),nace_4=c(0.20584080),nace_5=c(0.0715968),nace_6=c(0.1709845),
                     isco_5=c(0.1130476),isco_6=c(0.0626472),isco_9=c(0.08337259),isco_0=c(0.1917098),existpr_0=c(0.03909562),apskritys_1=c(0.1719265),apskritys_3=c(0.08525671),
                     apskritys_5=c(0.1102214))
predict(model_lpm31, new_data)
#0.4645123


library(tibble)

new_data<-data_frame(age_6=c(0.09938766),age_7=c(0.1205841),age_8=c(0.1526142),age_9=c(0.1521432),age_10=c(0.16439),age_11=c(0.06594442),age_12=c(0.004239284),sex_2=c(0.5275553),marstat_2=c(0.5242581),I(sex_2*marstat_2)==c(0.2765751),
                     hatlevel_3=c(0.2675459),
                     hatfield_9=c(0.01036269),nace_1=c(0.1069242),nace_3=c(0.08243052),nace_4=c(0.20584080),nace_5=c(0.0715968),nace_6=c(0.1709845),isco_1=c(0.02826189),
                     isco_3=c(0.05887894),isco_4=c(0.0287329),isco_5=c(0.1130476),isco_6=c(0.0626472),isco_7=c(0.1300047),isco_8=c(0.0612341),apskritys_1=c(0.1719265),apskritys_3=c(0.08525671),
                     apskritys_5=c(0.1102214))
predict(model_log31, new_data, type = "response")
#vidutinio asmens tikimybė yra 0.5221827

new_data<-data_frame(age_6=c(0.09938766),age_7=c(0.1205841),age_8=c(0.1526142),age_9=c(0.1521432),age_10=c(0.16439),age_11=c(0.06594442),age_12=c(0.004239284),sex_2=c(0.5275553),marstat_2=c(0.5242581),I(sex_2*marstat_2)==c(0.2765751),
                     hatlevel_3=c(0.2675459),
                     hatfield_9=c(0.01036269),nace_1=c(0.1069242),nace_4=c(0.20584080),nace_5=c(0.0715968),nace_6=c(0.1709845),isco_1=c(0.02826189),
                     isco_3=c(0.05887894),isco_4=c(0.0287329),isco_5=c(0.1130476),isco_6=c(0.0626472),isco_7=c(0.1300047),isco_8=c(0.0612341),apskritys_1=c(0.1719265),apskritys_3=c(0.08525671),
                     apskritys_5=c(0.1102214))

predict(model_probit31, new_data, type = "response")
#vidutinio asmens tikimybė yra 0.5232716

log_prob<-predict(model_log31, type = "response")
log<- dnorm(log_prob,mean(log_prob),sd(log_prob))

probit_prob<-predict(model_probit31, type = "response")
probit<- dnorm(probit_prob,mean(probit_prob),sd(probit_prob))

lpm_prob<-fitted.values(model_lpm31)
lpm<- dnorm(lpm_prob,mean(lpm_prob),sd(lpm_prob))



# Plotting the PDF(Normal Distribution Function
plot(lpm_prob,lpm)
plot(log_prob,log)
plot(probit_prob,probit)


qqnorm(lpm_prob)
qqline(lpm_prob)

qqnorm(log_prob)
qqline(log_prob)

qqnorm(probit_prob)
qqline(probit_prob)


res_lpm<-residuals(model_lpm31)
qqnorm(res_lpm)
qqline(res_lpm,col="red")
plot(density(res_lpm))

res_log<-residuals(model_log31)
qqnorm(res_log)
qqline(res_log,col="red")
plot(density(res_log))

res_probit<-residuals(model_probit31)
qqnorm(res_probit)
qqline(res_probit)
plot(density(res_probit))

x<-rstandard(model_lpm31)

probDist<-pnorm(x)
<-plot(ppoints(length(x)),sort(probDist),main = "PP grafikas", xlab = "Stebimos tikimybės",
     ylab ="Tikėtinos tikimybės")
abline(0,1)
shapiro.test(model_lpm31$residuals)

library(rms)

# Partial residual plots
partialResiduals <- residuals(model, type = "partial")
crPlots(model, ~ predictor1, smooth = TRUE, residuals = partialResiduals)

# Component-plus-residual (partial residual) plots
crPlots(model, ~ predictor1, type = "component", smooth = TRUE)

# Non-parametric smoothing
plot(Predict(model, predictor1, fun = mean), lwd = 2, ylim = c(0, 1))
lines(lowess(your_data$predictor1, your_data$response), col = "red")

# Box-Tidwell test
library(car)
boxTidwell(model_lpm31)

library(ggplot2)

res_log<-residuals(model_log31, type = "partial")
summary(LT_aged_full)
LT_aged_full_res<-LT_aged_full[!is.na(LT_aged_full$isco),]
LT_aged_full_res<-LT_aged_full_res[!is.na(LT_aged_full_res$nace),]
LT_aged_full_res<-LT_aged_full_res[!is.na(LT_aged_full_res$apskritys),]
# Partial regression plots
ggplot(LT_aged_full_res, aes(x = age_7, y = res_log[,1])) +
  geom_point() +
  geom_smooth(method = "loess") +
  labs(x = "age6", y = "Partial Residuals")

par(mfrow=c(1,1)) 
partialResiduals(model_log31, pred = "age_6", xlab = "age6")
partialResiduals(model, pred = "age_7", xlab = "age7")
crPlots(model_probit31)

res_lpm<-residuals(model_lpm31)
qqnorm(res_lpm)
qqline(res_lpm)
plot(density(res_lpm))

library(tseries)
jarque.bera.test(LT_aged_full)

shapiro.test(res_lpm)
hist(res_lpm)

mean(res_lpm)

#endogeniškumas
plot(fitted.values(model_lpm31),res_lpm)
install.packages("AER")
library(AER)
# Fit IV regression model
iv_model <- ivreg(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+sex_2+marstat_2+I(sex_2*marstat_2)+
                    hatlevel_3+
                    hatfield_8+hatfield_9+nace_1+nace_4+nace_5+nace_6+
                    +isco_5+isco_6+isco_9+isco_0+existpr_0+apskritys_1+apskritys_3+
                    apskritys_5, data = LT_aged_full)
install.packages("ivpanel")
library(ivpanel)
hausman_test <- hausman(model_lpm31, iv_model)
print(hausman_test)
plot(res_lpm ~ age_6,data = LT_aged_full)
     
     +age_7+age_8+age_9+age_10+age_11+age_12+sex_2+marstat_2+I(sex_2*marstat_2)+
       hatlevel_3+
       hatfield_8+hatfield_9+nace_1+nace_4+nace_5+nace_6+
       isco_5+isco_6+isco_9+isco_0+existpr_0+apskritys_1+apskritys_3+
       apskritys_5, data = LT_aged_full, ylab = "Residuals")




install.packages("pwr")
library(pwr)

effect_size <- 0.5  # Effect size (Cohen's d)
alpha <- 0.05      # Significance level (e.g., 0.05 for 95% confidence)
power <- 0.80      # Desired power (e.g., 0.80 for 80% power)

# Conduct power analysis for a two-sample t-test
sample_size <- pwr.t.test(d = effect_size, sig.level = alpha, power = power)$n

# View the required sample size
print(sample_size)



#heteroskedastiškumui atsparios paklaidos:
model_lpm31<-lm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+sex_2+marstat_2+I(sex_2*marstat_2)+
                  hatlevel_3+
                  hatfield_8+hatfield_9+nace_1+nace_4+nace_5+nace_6+
                  +isco_5+isco_6+isco_9+isco_0+existpr_0+apskritys_1+apskritys_3+
                  apskritys_5, data = LT_aged_full_res
)
summary(model_lpm31)
library(lmtest)
bptest(model_lpm31)
library(car)
coeftest(model_lpm31,vcov = hccm(model_lpm31, type = "hc0"))

#svertinis MKM
p0<-fitted.values(model_lpm31)
p0[p0 < 0] <- 0.0001
p0[p0 > 1] <- 0.9999
w2 <- (1 - p0)*p0

model_lpm31_a<-lm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+sex_2+marstat_2+I(sex_2*marstat_2)+
                  hatlevel_3+
                  hatfield_8+hatfield_9+nace_1+nace_4+nace_5+nace_6+
                  +isco_5+isco_6+isco_9+isco_0+existpr_0+apskritys_1+apskritys_3+
                  apskritys_5, data = LT_aged_full_res, weights = w2^-1)
summary(model_lpm31_a)

##############
summary(LT_aged_full_NA)
boxplot(as.numeric(LT_aged_full_NA))

model_lpm31<-lm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+sex_2+marstat_2+I(sex_2*marstat_2)+
                  hatlevel_3+
                  hatfield_8+hatfield_9+nace_1+nace_4+nace_5+nace_6+
                  +isco_5+isco_6+isco_9+isco_0+apskritys_1+apskritys_3+
                  apskritys_5, data = LT_aged_full
)
summary(model_lpm31)
library(lmtest)
bptest(model_lpm31)
library(car)
coeftest(model_lpm31,vcov = hccm(model_lpm31, type = "hc0"))
res_lpm<-residuals(model_lpm31)
qqnorm(res_lpm)
qqline(res_lpm,col="red")
plot(density(res_lpm))
library(car)
qqPlot(res_lpm, ylab="Residuals", xlab="Theoretical Quantiles")

