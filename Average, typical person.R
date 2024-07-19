LT_D<-read.csv("LT_data.csv")

library(lmtest)
library(car)
library(tibble)


######
#vidutinis žmogus kaip bazinis
model_lpm<-lm(y~age_3+age_4+age_5+age_10+age_11+age_12+
                hatlevel_3+hatfield_0+hatfield_1+
                +nace_2+nace_3+nace_5+
                +isco_5+isco_6+isco_9+isco_0
              +region_9, data = LT_D
)
summary(model_lpm)
bptest(model_lpm)
coeftest(model_lpm,vcov = hccm(model_lpm, type = "hc0"))

coef(model_lpm)[1]
#0.3200924

model_log<-glm(y~age_10+age_11+age_12+
                 hatlevel_3+hatfield_0+hatfield_3+hatfield_4+hatfield_5+
                 hatfield_10+nace_1+nace_5+nace_6+isco_1+isco_2+
                 +isco_3+isco_5+isco_6+isco_7+isco_8+isco_9+region_3
               +region_9+region_10, data = LT_D, family = binomial
)
summary(model_log)

interc_log<-coef(model_log)[1]
logit_prob <- 1 / (1 + exp(-interc_log))
logit_prob
#0.9279129

model_probit<-glm(y~age_3+age_4+age_5+age_10+age_11+age_12+I(sex_1*marstat_1)+
                    hatlevel_3+hatfield_0+
                    nace_1+nace_5+nace_6+isco_1+isco_2+
                    +isco_3+isco_5+isco_6+isco_7+isco_8+isco_9+region_3
                  +region_9+region_10, data = LT_D, family = binomial('probit')
)
summary(model_probit)

interc_probit<-coef(model_probit)[1]
probit_prob<-pnorm(interc_probit)
probit_prob
#0.9345802

#####
#Pagal moda bazinis variantas
model_lpm1<-lm(y~age_3+age_4+age_5+age_6+age_7+age_8+age_9+sex_2+marstat_2+I(sex_2*marstat_2)+
                 hatlevel_3+hatfield_0+
                 hatfield_8++hatfield_9++nace_2+nace_3+
                 +isco_5+isco_6+isco_9+isco_0+
                 +region_9, data = LT_D
)
summary(model_lpm1)
bptest(model_lpm1)
coeftest(model_lpm1,vcov = hccm(model_lpm1, type = "hc0"))
coef(model_lpm1)[1]
#0.4471113

model_log1<-glm(y~age_3+age_4+age_5+age_6+age_7+age_8+age_9+marstat_2+I(sex_2*marstat_2)+
                  hatlevel_1+hatlevel_3+hatfield_5+
                  hatfield_9+nace_1+nace_2+nace_3+nace_5+nace_6+isco_1+isco_2+
                  +isco_3+isco_4+isco_5+isco_6+isco_8+isco_9+region_3
                +region_7+region_9, data = LT_D, family = binomial()
)
summary(model_log1)

interc_log1<-coef(model_log1)[1]
logit1_prob <- 1 / (1 + exp(-interc_log1))
logit1_prob
#arba
new_data_log<-data_frame(age_3=0,age_4=0,age_5=0,age_6=0,age_7=0,age_8=0,age_9=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,
                         hatlevel_1=0,hatlevel_3=0,hatfield_5=0,
                         hatfield_9=0,nace_1=0,nace_2=0,nace_3=0,nace_5=0,nace_6=0,isco_1=0,isco_2=0,
                         isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_8=0,isco_9=0,region_3=0,
                         region_7=0,region_9=0
)
predict(model_log1, new_data_log, type = "response")
#0.9383493

model_probit1<-glm(y~age_3+age_4+age_5+age_6+age_7+age_8+age_9+marstat_2+I(sex_2*marstat_2)+
                     hatlevel_1+hatlevel_3+hatfield_0+
                     +hatfield_9+nace_1+nace_2+nace_3+nace_5+nace_6+
                     +isco_3+isco_4+isco_5+isco_6+isco_8+region_3
                   +region_7+region_9, data = LT_D, family = binomial(link = 'probit')
)
summary(model_probit1)

interc_probit1<-coef(model_probit1)[1]
probit1_prob<-pnorm(interc_probit1)
probit1_prob
#arba
new_data_probit<-data_frame(age_3=0,age_4=0,age_5=0,age_6=0,age_7=0,age_8=0,age_9=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,
                            hatlevel_1=0,hatlevel_3=0,hatfield_0=0,
                            hatfield_9=0,nace_1=0,nace_2=0,nace_3=0,nace_5=0,nace_6=0,
                            isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_8=0,region_3=0,
                            region_7=0,region_9=0
)
predict(model_probit1, new_data_probit, type = "response")
#0.9261841

####### 
#su vidutinėm reikšmėm, modos baziniam variantui
coef(model_lpm1)[1]+coef(model_lpm1)[6]+coef(model_lpm1)[9]+coef(model_lpm1)[10]+
  coef(model_lpm1)[11]+coef(model_lpm1)[15]+coef(model_lpm1)[17]
#0.6442431 (isco_4 nereikšmingas)

new_data_log<-data_frame(age_3=0,age_4=0,age_5=0,age_6=0,age_7=1,age_8=0,age_9=0,sex_2=1,marstat_2=1,I(sex_2*marstat_2)==1,
                         hatlevel_1=0,hatlevel_3=0,hatfield_5=0,
                         hatfield_9=1,nace_1=0,nace_2=0,nace_3=1,nace_5=0,nace_6=0,isco_1=0,isco_2=0,
                         isco_3=0,isco_4=1,isco_5=0,isco_6=0,isco_8=0,isco_9=0,region_3=0,
                         region_7=0,region_9=0
)
predict(model_log1, new_data_log, type = "response")
#0.3460935

new_data_probit<-data_frame(age_3=0,age_4=0,age_5=0,age_6=0,age_7=1,age_8=0,age_9=0,sex_2=1,marstat_2=1,I(sex_2*marstat_2)==1,
                            hatlevel_1=0,hatlevel_3=0,hatfield_0=0,
                            hatfield_9=1,nace_1=0,nace_2=0,nace_3=1,nace_5=0,nace_6=0,
                            isco_3=0,isco_4=1,isco_5=0,isco_6=0,isco_8=0,region_3=0,
                            region_7=0,region_9=0
)
predict(model_probit1, new_data_probit, type = "response")
#0.4796266

