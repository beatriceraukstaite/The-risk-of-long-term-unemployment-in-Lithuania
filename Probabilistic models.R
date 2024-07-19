#MODELIAI IKI 2020 
table(LT_data_models$national_)
table(LT_data_models$educstat)
table(LT_data_models$availble)
table(LT_data_models$register)
table(LT_data_models$couratt)
table(LT_data_models$hatlevel)
table(LT_data_models$hatfield)

pd_data<-pd.Da



model_lpm<-lm(y~as.character(age)+as.character(sex)+as.character(marstat)+as.character(region)+as.character(hatlevel)+
                as.character(hatvoc)+as.character(hatfield)+as.character(existpr)+as.character(yearpr)+as.character(register)+
                as.character(leavreas)+as.character(nace)+as.character(isco),data = LT_data_models)
summary(model_lpm)

model_lpm<-lm(y~as.character(age)+as.character(sex)+as.character(marstat)+as.character(region)+as.character(hatlevel)
              +as.character(hatfield)+as.character(existpr)+as.character(register)+
                as.character(leavreas)+as.character(nace)+as.character(isco),data = LT_data_models)
summary(model_lpm)

#be hatlevel
model_lpm<-lm(y~as.character(age)+as.character(sex)+as.character(marstat)+as.character(region)
              +as.character(hatfield)+as.character(existpr)+as.character(register)+
                as.character(leavreas)+as.character(nace)+as.character(isco),data = LT_data_models)
summary(model_lpm)

#be hatfield
model_lpm<-lm(y~as.character(age)+as.character(sex)+as.character(marstat)+as.character(region)+as.character(hatlevel)
              +as.character(existpr)+as.character(register)+
                as.character(leavreas)+as.character(nace)+as.character(isco),data = LT_data_models)
summary(model_lpm)
#reikšmingas marstat, kai be hatfield

model_lpm<-lm(y~as.character(age)+as.character(sex)+as.character(marstat)+as.character(register)+as.character(hatlevel)+
                as.character(leavreas)+as.character(nace)+as.character(isco),data = LT_data_models)
summary(model_lpm)
#be regiono

model_lpm<-lm(y~as.character(age)+as.character(sex)+as.character(marstat)+as.character(register)+as.character(hatlevel)+
                as.character(leavreas)+as.character(nace),data = LT_data_models)
summary(model_lpm)
#be regiono, isco

#nuo 20-24 iki 65-69 metų amžiaus grupių
LT_D2<-LT_data_models[LT_data_models$age<13,]
LT_D2<-LT_D2[LT_D2$age>2,]

model_lpm<-lm(y~as.character(age)+as.character(sex)+as.character(marstat)+as.character(hatlevel)
              +as.character(existpr)+as.character(register)+
                as.character(leavreas)+as.character(nace)+as.character(isco),data = LT_D2)
summary(model_lpm)
#3-12 amžiaus grupėse; be regiono ir hatfield

model_lpm<-lm(y~as.character(age)+as.character(sex)+as.character(marstat)+I(as.numeric(sex)*as.numeric(marstat))
              +as.character(hatlevel)+as.character(existpr)+as.character(register)+
                as.character(leavreas)+as.character(nace)+as.character(isco),data = LT_D2)
summary(model_lpm)
#NA gali indikuoti, kad yra tobulas multikolinearumas!!!!!

model_lpm_stand<-lm(scale(y)~as.character(age)+as.character(sex)+as.character(marstat)+I(as.numeric(age)*as.numeric(marstat))
              +as.character(hatlevel),data = LT_D2)
summary(model_lpm_stand)

model_lpm_stand<-lm(y~as.character(age)+as.character(sex)+as.character(marstat)+as.character(age)*as.character(marstat)
                    +as.character(hatlevel),data = LT_D2)
summary(model_lpm_stand)

plot(LT_data_models$age,LT_data_models$y)
ggplot(data = LT_data_models,aes(group=scale(y),y=scale(age)))+
  geom_boxplot()

hist(LT_data_models$age)
hist(scale(LT_data_models$age))

qqPlot(LT_data_models$age, groups = LT_data_models$y)

qqPlot(scale(LT_data_models$age), groups = LT_data_models$y)
#nieks nepasikeičia (tik skalė)

x <- qunif(ppoints(length(LT_data_models$y)))

qqplot(LT_data_models$age,qcauchy(x))
qqline(LT_data_models$age, col = "steelblue", lwd = 2)

qqnorm(LT_data_models$region)
qqline(LT_data_models$age)

hist(LT_data_models$age, breaks=50,col='red')


qqPlot(as.numeric(LT_data_models$region), groups = LT_data_models$y)


library(dplyr)
LT_D2 %>% 
  mutate_all(funs(as.numeric(as.factor(.))))

model_lpm<-lm(y~age+sex+marstat+I(sex*marstat)
              +hatfield+existpr+register+
                leavreas+nace+isco,data = LT_D2)
summary(model_lpm)
#su hatfield nereiksmingas nei age, nei sex, nei marstat

model_lpm<-lm(y~age+sex+marstat+I(age*marstat)
              +hatlevel+existpr+register+
                leavreas+nace+isco,data = LT_D2)
summary(model_lpm)
#neteisinga taip nurodyti, nes elgiasi ne kaip su kategorijomis, o kaip su skaičiais

model_lpm1<-lm(as.character(y)~as.character(age)+as.character(sex)+as.character(marstat)+I(age*marstat)
              +as.character(hatlevel)+as.character(existpr)+as.character(leavreas),data = LT_D2)
summary(model_lpm1)
#sukuria fiktyvius kitamuosius, bazinį variantą pasirenkant pirmą kategoriją kiekvieno iš kintamųjų



##############################################################

library(fastDummies)
LT_D1<-dummy_cols(LT_data_models,select_columns = c("age","sex","marstat","region","hatlevel","hatfield","nace","isco","yearpr","existpr","methoda","methodd","methodf"))
LT_D3<-LT_D1[LT_D1$age<13,]
LT_D3<-LT_D3[LT_D3$age>2,]

model_lpm1<-lm(y~age_3+age_5+age_6+age_7+age_8+age_9+age_10+age_11+age_12+sex_2+marstat_2+marstat_3+
                 hatlevel_1+hatlevel_3+hatfield_1+hatfield_2+hatfield_3+hatfield_4+hatfield_5+hatfield_6+hatfield_7+
                 hatfield_8++hatfield_9++hatfield_10++hatfield_11+nace_2+nace_3+nace_4+nace_5+nace_6+isco_2+
                 +isco_3+isco_4+isco_5+isco_6+isco_7+isco_8+isco_9+isco_0, data = LT_D3
                 )
summary(model_lpm1)
#baziniai: 25-29 metų; vyrai; nevedę; turintys vidurinį išsilavinimą; baigę pagrindinę programą; neturintys aukštojo išsilavinimo; be patirties (ekonominės veiklos rūšis pas. darbovietėje netaikoma); vadovai
table(LT_D3[LT_D3$isco==0,]$nace)
table(LT_D3[LT_D3$nace==0,]$isco)
#tobulas multikolinearumas
#nepašalinus multikolinearumo (+žemas išsilavinimo lygis):
model_lpm1<-lm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+
 hatlevel_3+hatfield_7+
 hatfield_8+hatfield_9+hatfield_11+nace_2+nace_3+nace_4+isco_2+
  isco_3+isco_4+isco_6+isco_7+isco_8+isco_9+isco_0, data = LT_D3
                )
summary(model_lpm1)
#pašalinus multikolinearumą:
model_lpm1<-lm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+
                 hatlevel_3+
                 hatfield_8++hatfield_9+nace_2+nace_3+nace_4+isco_2+
                 +isco_3+isco_4+isco_6+isco_9+isco_0, data = LT_D3
)
summary(model_lpm1)
#vidurinis išsilavinimas
table(LT_D3[LT_D3$nace==1,]$isco)
model_lpm1<-lm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+
                 hatlevel_3+hatfield_7+
                 hatfield_8++hatfield_9+hatfield_11+nace_2+nace_3+nace_4+isco_1+isco_2+
                 +isco_3+isco_4+isco_5+isco_7+isco_8+isco_9+isco_0, data = LT_D3
)
summary(model_lpm1)
#baziniai: 25-29 metų; vyrai; nevedę; turintys vidurinį išsilavinimą; baigę pagrindinę programą; neturintys aukštojo išsilavinimo; be patirties (ekonominės veiklos rūšis pas. darbovietėje netaikoma); kvalifikuoti žemės ū darbuotojai
library(lmtest)
bptest(model_lpm1)
#heteroskedastiškumas
#heteroskedastiškumui atsparios paklaidos
library(car)
coeftest(model_lpm1,vcov = hccm(model_lpm1, type = "hc0"))
                                                                                                                       
#baziniai: 25-29 metų; vyrai; nevedę; turintys žemą išsilavinimą; baigę pagrindinę programą; ekon.veikla: žemės ūkis, miškininkystė ir žuvininkystė; vadovai

model_log1<-glm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+
                 hatlevel_3+hatfield_7+
                 hatfield_8++hatfield_9+hatfield_11+nace_2+nace_3+nace_4+nace_5+nace_6+isco_2+
                 +isco_3+isco_4+isco_5+isco_6+isco_7+isco_8+isco_9, data = LT_D3,family = binomial
)
summary(model_log1)
#panaikinus isco_0 --> visi isco ir nace tapo reikšmingi (ko nebuvo, buvo tik vienas su 1% reikšmingumu)
#kaip ir tiesiniame - lyties ir šeimyninės padėties reikšmingumas išnyksta
model_log1<-glm(y~age_6+age_7+age_9+age_10+age_11+age_12+marstat_2+
                 hatlevel_3+
                 +hatfield_11+nace_2+nace_3+nace_5+isco_1+isco_2+
                 +isco_3+isco_4+isco_5+isco_7+isco_8+isco_9, data = LT_D3, family = binomial()
)
summary(model_log1)

model_log1<-glm(y~age_3+age_5+age_6+age_7+age_8+age_9+age_10+age_11+age_12+sex_2+marstat_2+marstat_3+
                 hatlevel_1+hatlevel_3+hatfield_1+hatfield_2+hatfield_3+hatfield_4+hatfield_5+hatfield_6+hatfield_7+
                 hatfield_8++hatfield_9++hatfield_10++hatfield_11+nace_2+nace_3+nace_4+nace_5+nace_6+isco_1+isco_2+
                 +isco_3+isco_4+isco_5+isco_7+isco_8+isco_9+isco_0, data = LT_D3, family = binomial()
)
summary(model_llog1)

max(predict(model_log1, type = "response")) 

model_log1.or=exp(coef(model_log1))
library(stargazer)
stargazer(model_log1, type="text", coef=list(model_log1.or), p.auto=FALSE)
stargazer(model_log1, type="html", out="lodel_log1.htm", coef=list(model_log1.or), p.auto=FALSE)
#gauname šansų santykį (iš jų atėmus 1 ir padauginus iš 100 --> gausime tikimybę procentais būti priskirtam 1 grupei (jei teigiamas gaunasi))
model_log1.pred <- predict(model_log1, type="response") 
summary(model_log1.pred)
#tikimybė (mean*100), kai visi nepriklausomi kintamieji yra vidurkyje

prob.model_log1<-round(predict(model_log1,type = "response"),5)
min(prob.model_log1)
prob.model_log1<-as.data.frame(prob.model_log1)
head(prob.model_log1,3)
max(predict(model_log1,type = "response"))
min(predict(model_log1,type = "response"))

nam_1656<-LT_D3[1656,]
coef(model_probit1)
coef(model_lpm1)
which(prob.model_log1 == 0.0014)
#taip reikia skaičiuoti, atsižvelgiant į kintamąjį:
predict(model_probit1, newdata = LT_D3[624,], type = "response")*coef(model_probit1)[9]
predict(model_probit1, newdata = LT_D3[1656,], type = "response")*coef(model_probit1)[9]
coef(model_lpm1)[9]
#labai skiriasi tikimybės 
newdata = LT_D3[LT_D3$age==8,]
newdata = newdata[newdata$sex==2,]

predict(model_probit1, newdata[624,] , type = "response")

model_probit1<-glm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+
                 hatlevel_3+hatfield_7+
                 hatfield_8++hatfield_9+hatfield_11+nace_2+nace_3+nace_4+nace_5+nace_6+isco_2+
                 +isco_3+isco_4+isco_5+isco_6+isco_7+isco_8+isco_9, data = LT_D3, family = binomial(link = 'probit')
)
summary(model_probit1)
#panaikinus isco_0 --> visi isco ir nace tapo labai reikšmingi 

model_probit1<-glm(y~age_6+age_7+age_9+age_10+age_11+age_12+marstat_2+
                 hatlevel_3+
                 +hatfield_11+nace_2+nace_3+isco_1+isco_2+
                 +isco_3+isco_4+isco_5+isco_7+isco_8+isco_9, data = LT_D3, family = binomial(link = 'probit')
)
summary(model_probit1)

model_probit1.or=exp(coef(model_probit1))
library(stargazer)
stargazer(model_probit1, type="text", coef=list(model_probit1.or), p.auto=FALSE)
stargazer(model_probit1, type="html", out="model_probit1.htm", coef=list(model_probit1.or), p.auto=FALSE)
#gauname šansų santykį (iš jų atėmus 1 ir padauginus iš 100 --> gausime tikimybę procentais būti priskirtam 1 grupei (jei teigiamas gaunasi))

model_probit1.pred <- predict(model_probit1, type="response") 
summary(model_probit1.pred)
#tikimybė (mean*100), kai visi nepriklausomi kintamieji yra vidurkyje

LPM1<- summary(model_lpm1)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname, Estimate) %>%
  rename(LPM1 = Estimate)
names(LPM1 )[2] <- "LPM_prob"

model_log1_pred<-mean(dnorm(predict(model_log1, type = "link")))
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


table(LT_D3[LT_D3$isco_0==1,]$existpr_0)
table(LT_D3[LT_D3$existpr_0==1,]$isco_0)


LT_D3 %>%
  group_by(isco,y)%>%
  summarise(v=n())
#isco==0 yra tik ilgalaikių bedarbių grupėje - dėl to tikimybė tokia didelė

LT_D4<-LT_D3[LT_D3$isco!=0,]
table(LT_D4$y)
#sumažėja 397 ilgalaikiais bedarbiais ir lieka tik 437, kai oponentų yra 914
#model_lpm2<-lm(y~age_3+age_5+age_6+age_7+age_8+age_9+age_10+age_11+age_12+sex_2+marstat_2+marstat_3+
#                 hatlevel_2+hatlevel_3+hatfield_1+hatfield_2+hatfield_3+hatfield_4+hatfield_5+hatfield_6+hatfield_7+
 ##                hatfield_8++hatfield_9++hatfield_10++hatfield_11+nace_1+nace_2+nace_3+nace_4+nace_5+nace_6+isco_2+
  #               +isco_3+isco_4+isco_5+isco_6+isco_7+isco_8+isco_9, data = LT_D4
#)
#summary(model_lpm2)
#Labai suprastėja modelio prognozavimo galia
#dėl duomenų trūkumo, prastai gaunasi, pašalinus isco=0

model_lpm3<-lm(y~age_3+age_4+age_5+age_6+age_7+age_8+age_9+
                 hatlevel_3+hatfield_7+
                 hatfield_8++hatfield_9+hatfield_11+nace_2+nace_3+nace_4+isco_2+
                 +isco_3+isco_4+isco_6+isco_9+isco_0, data = LT_D3
)
summary(model_lpm3)
#baziniai: 55-59 metų; vyrai; nevedę; turintys vidurinį išsilavinimą; baigę pagrindinę programą; neturintys aukštojo išsilavinimo; be patirties (ekonominės veiklos rūšis pas. darbovietėje netaikoma); vadovai

library(lmtest)
bptest(model_lpm3)
library(car)
coeftest(model_lpm3,vcov = hccm(model_lpm3, type = "hc0"))

model3<-lm(y~age_3+age_4+age_5+age_6+age_7+age_8+age_9+age_11+age_12+sex_2+marstat_2+marstat_3+
                 hatlevel_1+hatlevel_3+hatfield_1+hatfield_2+hatfield_3+hatfield_4+hatfield_5+hatfield_6+hatfield_7+
                 hatfield_8++hatfield_9++hatfield_10++hatfield_11+nace_2+nace_3+nace_4+nace_5+nace_6+isco_2+
                 +isco_3+isco_4+isco_5+isco_6+isco_7+isco_8+isco_9+isco_0, data = LT_D3
)
summary(model3)

model_log3<-glm(y~age_3+age_4+age_5+age_10+age_11+
                 hatlevel_3+hatfield_7+
                 hatfield_8++hatfield_9+hatfield_11+nace_2+nace_3+nace_4+nace_5+nace_6+isco_2+
                 +isco_3+isco_4+isco_5+isco_6+isco_7+isco_8+isco_9, data = LT_D3,family = binomial
)
summary(model_log3)
#marstat3, hatfield10, isco0 nereišmingiausi
#taip pat kaip model_log1 po isco0 pašalinimo
library(car)
vif(model_log3)

max(predict(model_log3, type = "response")) 

model_log3.or=exp(coef(model_log3))
library(stargazer)
stargazer(model_log3, type="text", coef=list(model_log3.or), p.auto=FALSE)
stargazer(model_log3, type="html", out="lodel_log3.htm", coef=list(model_log3.or), p.auto=FALSE)

#gauname šansų santykį (iš jų atėmus 1 ir padauginus iš 100 --> gausime tikimybę procentais būti priskirtam 1 grupei (jei teigiamas gaunasi))
model_log3.pred <- predict(model_log3, type="response") 
summary(model_log3.pred)

model_probit3<-glm(y~age_3+age_4+age_5+age_7+age_8+age_9+age_11+
             hatlevel_3+hatfield_7+
             +hatfield_9+hatfield_11+nace_2+nace_3+nace_4+nace_5+nace_6+isco_2+
             +isco_3+isco_4+isco_5+isco_6+isco_7+isco_8+isco_9, data = LT_D3, family = binomial(link = 'probit')
)
summary(model_probit3)

model_probit3.or=exp(coef(model_probit3))
library(stargazer)
stargazer(model_probit3, type="text", coef=list(model_probit3.or), p.auto=FALSE)
stargazer(model_probit3, type="html", out="model_probit3.htm", coef=list(model_probit3.or), p.auto=FALSE)
#gauname šansų santykį (iš jų atėmus 1 ir padauginus iš 100 --> gausime tikimybę procentais būti priskirtam 1 grupei (jei teigiamas gaunasi))

model_probit3.pred <- predict(model_probit3, type="response") 
summary(model_probit3.pred)
#tikimybė (mean*100), kai visi nepriklausomi kintamieji yra vidurkyje



model_lpm4<-lm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+
                 hatlevel_3+hatfield_7+
                 hatfield_8++hatfield_9+hatfield_11+nace_2+nace_3+nace_4+
                 +isco_5+isco_6+isco_9+isco_0, data = LT_D3
)
summary(model_lpm4)
#baziniai: 25-29 metų; vyrai; nevedę; turintys vidurinį išsilavinimą; baigę pagrindinę programą; neturintys aukštojo išsilavinimo; be patirties (ekonominės veiklos rūšis pas. darbovietėje netaikoma); kvalifikuoti darbininkai ir amatininkai

library(lmtest)
bptest(model_lpm4)
library(car)
coeftest(model_lpm4,vcov = hccm(model_lpm4, type = "hc0"))

model4<-lm(y~age_3+age_5+age_6+age_7+age_8+age_9+age_10+age_11+age_12+sex_2+marstat_2+marstat_3+
              hatlevel_1+hatlevel_3+hatfield_1+hatfield_2+hatfield_3+hatfield_4+hatfield_5+hatfield_6+hatfield_7+
              hatfield_8++hatfield_9++hatfield_10++hatfield_11+nace_2+nace_3+nace_4+nace_5+nace_6+isco_1+isco_2+
              +isco_3+isco_4+isco_5+isco_6+isco_8+isco_9+isco_0, data = LT_D3
)
summary(model4)

model_log4<-glm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+
                 hatlevel_3+
                 hatfield_9+nace_2+nace_3+nace_4+nace_5+nace_6+isco_2+
                 +isco_3+isco_4+isco_6+isco_8+isco_9, data = LT_D3, family = binomial
)
summary(model_log4)
#po isco0 panaikinimo, jau ne visi isco tokie reikšmingi
#hatfield sumažėjo
model_log4.or=exp(coef(model_log4))
library(stargazer)
stargazer(model_log4, type="text", coef=list(model_log4.or), p.auto=FALSE)
stargazer(model_log4, type="html", out="lodel_log4.htm", coef=list(model_log4.or), p.auto=FALSE)

#gauname šansų santykį (iš jų atėmus 1 ir padauginus iš 100 --> gausime tikimybę procentais būti priskirtam 1 grupei (jei teigiamas gaunasi))
model_log4.pred <- predict(model_log4, type="response") 
summary(model_log4.pred)

model_probit4<-glm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+
             hatlevel_3+
            +hatfield_9+nace_2+nace_3+nace_4+nace_5+nace_6+isco_2+
             +isco_4+isco_6+isco_8+isco_9, data = LT_D3, family = binomial(link = 'probit')
)
summary(model_probit4)
#ne taip reikšmingumas isco išaugo, pašalinus isco0

model_probit4.or=exp(coef(model_probit4))
library(stargazer)
stargazer(model_probit4, type="text", coef=list(model_probit4.or), p.auto=FALSE)
stargazer(model_probit4, type="html", out="model_probit4.htm", coef=list(model_probit4.or), p.auto=FALSE)
#gauname šansų santykį (iš jų atėmus 1 ir padauginus iš 100 --> gausime tikimybę procentais būti priskirtam 1 grupei (jei teigiamas gaunasi))

model_probit4.pred <- predict(model_probit4, type="response") 
summary(model_probit4.pred)
#tikimybė (mean*100), kai visi nepriklausomi kintamieji yra vidurkyje


model_lpm5<-lm(y~age_6+age_10+age_11+age_12+
                 hatlevel_1+hatlevel_2+hatfield_0+hatfield_1+hatfield_3+hatfield_5+
                +hatfield_10+nace_2+nace_3+isco_1+isco_2+
                 +isco_3+isco_4+isco_5+isco_7+isco_8+isco_9+isco_0, data = LT_D3
)
summary(model_lpm5)
#baziniai: 25-29 metų; vyrai; nevedę; turintys aukštąjį išsilavinimą; baigę žemės ūkis, miškininkystė, veterinarija; ek. veikl.:žemės ūkis, miškininkystė ir žuvininkystė; kvalifikuoti žemės, miško, žuvininkystės, ūkio darbuotojai
library(lmtest)
bptest(model_lpm5)
library(car)
coeftest(model_lpm5,vcov = hccm(model_lpm5, type = "hc0"))

model5<-glm(y~age_3+age_5+age_6+age_7+age_8+age_9+age_10+age_11+age_12+sex_2+marstat_2+marstat_3+
                 hatlevel_1+hatlevel_2+hatfield_0+hatfield_1+hatfield_2+hatfield_3+hatfield_4+hatfield_5+hatfield_6+hatfield_7+
                 +hatfield_9++hatfield_10++hatfield_11+nace_2+nace_3+nace_4+nace_5+nace_6+isco_1+isco_2+
                 +isco_3+isco_4+isco_5+isco_7+isco_8+isco_9+isco_0, data = LT_D3, family = binomial
)
summary(model5)
model_log5<-glm(y~age_6+age_7+age_9+age_10+age_11+age_12+marstat_2+
                  hatlevel_1+hatlevel_2+
                  +hatfield_11+nace_2+nace_3+nace_5+isco_1+isco_2+
                  +isco_3+isco_4+isco_5+isco_7+isco_8+isco_9, data = LT_D3, family = binomial
)
summary(model_log5)
#šeimyninė padėtis išliko reikšminga
model_log5.or=exp(coef(model_log5))
library(stargazer)
stargazer(model_log5, type="text", coef=list(model_log5.or), p.auto=FALSE)
stargazer(model_log5, type="html", out="lodel_log5.htm", coef=list(model_log5.or), p.auto=FALSE)

#gauname šansų santykį (iš jų atėmus 1 ir padauginus iš 100 --> gausime tikimybę procentais būti priskirtam 1 grupei (jei teigiamas gaunasi))
model_log5.pred <- predict(model_log5, type="response") 
summary(model_log5.pred)

model_probit5<-glm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+marstat_2+
              hatlevel_1+hatlevel_2+
              +nace_2+nace_3+isco_1+isco_2+
              +isco_3+isco_4+isco_5+isco_7+isco_8+isco_9, data = LT_D3, family = binomial(link = 'probit')
)
summary(model_probit5)

model_probit5.or=exp(coef(model_probit5))
library(stargazer)
stargazer(model_probit5, type="text", coef=list(model_probit5.or), p.auto=FALSE)
stargazer(model_probit5, type="html", out="model_probit5.htm", coef=list(model_probit5.or), p.auto=FALSE)
#gauname šansų santykį (iš jų atėmus 1 ir padauginus iš 100 --> gausime tikimybę procentais būti priskirtam 1 grupei (jei teigiamas gaunasi))

model_probit5.pred <- predict(model_probit5, type="response") 
summary(model_probit5.pred)
#tikimybė (mean*100), kai visi nepriklausomi kintamieji yra vidurkyje


model6<-lm(y~age_3+age_5+age_6+age_7+age_8+age_9+age_10+age_11+age_12+sex_2+marstat_2+marstat_3+
                 hatlevel_1+hatlevel_3+hatfield_1+hatfield_2+hatfield_3+hatfield_4+hatfield_5+hatfield_6+hatfield_7+
                 hatfield_8++hatfield_9++hatfield_10++hatfield_11+nace_1+nace_3+nace_4+nace_5+nace_6+isco_1+
                 +isco_3+isco_4+isco_5+isco_6+isco_7+isco_8+isco_9+isco_0+region_1+region_2+region_3+region_4+region_5
               +region_6+region_7+region_8+region_9, data = LT_D3
)
summary(model6)

#baziniai: 25-29 metų; vyrai; nevedę; turintys vidurinį išsilavinimą; baigę pagrindinę programą; neturintys aukštojo išsilavinimo; ekon. veikl r: pramonė; specialistai ; vilnius
#p0 <- fitted(model_lpm6)
#p0[p0 < 0] <- 0.0001
#p0[p0 > 1] <- 0.9999
#w2 <- (1 - p0)*p0

#model_lpm6x<-lm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+
         #        hatlevel_3+hatfield_7+
          #       hatfield_8++hatfield_9+hatfield_11+nace_1+nace_4+nace_5+nace_6+
           #      +isco_5+isco_6+isco_9+isco_0
        #       +region_9, data = LT_D3,weights = w2^-1
#)
#summary(model_lpm6x) 
library(lmtest)
bptest(model_lpm6)
library(car)
coeftest(model_lpm6,vcov = hccm(model_lpm6, type = "hc0"))

model_lpm6<-lm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+
                 hatlevel_3+hatfield_7+
                 hatfield_8++hatfield_9+hatfield_11+nace_1+nace_4+nace_5+nace_6+
                 +isco_5+isco_6+isco_9+isco_0
               +region_9, data = LT_D3
)
summary(model_lpm6) 
library(car)
vif(model_lpm6)

model_log6<-glm(y~age_10+age_11+age_12+marstat_2+
                 hatlevel_3+hatfield_4+
                 hatfield_8++hatfield_9+hatfield_11+nace_1+nace_3+nace_4+nace_5+nace_6+
                 +isco_3+isco_4+isco_6+isco_8+isco_9+region_3
               +region_9, data = LT_D3, family = binomial
)
summary(model_log6)
#prieš panaikinant nace0, buvo mažiau reikšmingų nace
model_log6.or=exp(coef(model_log6))
library(stargazer)
stargazer(model_log6, type="text", coef=list(model_log6.or), p.auto=FALSE)
stargazer(model_log6, type="html", out="lodel_log6.htm", coef=list(model_log6.or), p.auto=FALSE)

#gauname šansų santykį (iš jų atėmus 1 ir padauginus iš 100 --> gausime tikimybę procentais būti priskirtam 1 grupei (jei teigiamas gaunasi))
model_log6.pred <- predict(model_log6, type="response") 
summary(model_log6.pred)

model_probit6<-glm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+marstat_2+
             hatlevel_3+hatfield_4+hatfield_7+
             hatfield_8++hatfield_9+hatfield_11+nace_1+nace_3+nace_4+nace_5+nace_6+isco_1+
             isco_4+isco_5+isco_6+isco_7+isco_8
           +region_9, data = LT_D3, family = binomial(link = 'probit')
)
summary(model_probit6)

model_probit6.or=exp(coef(model_probit6))
library(stargazer)
stargazer(model_probit6, type="text", coef=list(model_probit6.or), p.auto=FALSE)
stargazer(model_probit6, type="html", out="model_probit6.htm", coef=list(model_probit6.or), p.auto=FALSE)
#gauname šansų santykį (iš jų atėmus 1 ir padauginus iš 100 --> gausime tikimybę procentais būti priskirtam 1 grupei (jei teigiamas gaunasi))

model_probit6.pred <- predict(model_probit6, type="response") 
summary(model_probit6.pred)
#tikimybė (mean*100), kai visi nepriklausomi kintamieji yra vidurkyje



#baziniai: 25-29 metų; vyrai; nevedę; turintys vidurinį išsilavinimą; baigę pagrindinę programą; ekon. veikl r: finansinė ir draudimo veikla, admins, apt...; paslaugų sektroiaus darbuotojai ir pardavėjai ; vilnius
model_lpm7<-lm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+
                hatlevel_3+hatfield_7+
                 hatfield_8++hatfield_9+hatfield_11+nace_2+nace_3+nace_4+isco_2+
                 +isco_3+isco_4+isco_6+isco_9+isco_0
               +region_9, data = LT_D3
)
summary(model_lpm7)
library(lmtest)
bptest(model_lpm7)
library(car)
coeftest(model_lpm7,vcov = hccm(model_lpm7, type = "hc0"))

model7<-glm(y~age_3+age_5+age_6+age_7+age_8+age_9+age_10+age_11+age_12+sex_2+marstat_2+marstat_3+
                 hatlevel_1+hatlevel_3+hatfield_1+hatfield_2+hatfield_3+hatfield_4+hatfield_5+hatfield_6+hatfield_7+
                 hatfield_8++hatfield_9++hatfield_10++hatfield_11+nace_1+nace_2+nace_3+nace_4+nace_6+isco_1+
                 +isco_2+isco_3+isco_4+isco_6+isco_7+isco_8+isco_9+isco_0+region_1+region_2+region_3+region_4+region_5
               +region_6+region_7+region_8+region_9, data = LT_D3, family = binomial
)
summary(model7)

model_log7<-glm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+
                hatlevel_3+hatfield_7+
                  hatfield_8++hatfield_9+hatfield_11+nace_1+nace_2+nace_3+nace_4+nace_6+
                  +isco_2+isco_3+isco_4+isco_6+isco_7+isco_8+region_2+region_4
                +region_6+region_7+region_8+region_9, data = LT_D3, family = binomial
)
summary(model_log7)
#isco ir nace tapo labai reikšmingi, panaikinus isco0; nei sex, nei marstat nebereikšmingi
model_log7.or=exp(coef(model_log7))
library(stargazer)
stargazer(model_log7, type="text", coef=list(model_log7.or), p.auto=FALSE)
stargazer(model_log7, type="html", out="lodel_log7.htm", coef=list(model_log7.or), p.auto=FALSE)

#gauname šansų santykį (iš jų atėmus 1 ir padauginus iš 100 --> gausime tikimybę procentais būti priskirtam 1 grupei (jei teigiamas gaunasi))
model_log7.pred <- predict(model_log7, type="response") 
summary(model_log7.pred)

model_probit7<-glm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+marstat_2+
              hatlevel_1+hatlevel_3+hatfield_7+
            +nace_1+nace_4+
              +isco_2+isco_3+isco_4+isco_6+isco_7+isco_8+isco_9
            +region_7+region_9, data = LT_D3, family = binomial(link = 'probit')
)
summary(model_probit7)
#pašalinus isco0 --> isco pasidarė labai reikšmingi, o nace reikšmingumą labai sumažino
model_probit7.or=exp(coef(model_probit7))
library(stargazer)
stargazer(model_probit7, type="text", coef=list(model_probit7.or), p.auto=FALSE)
stargazer(model_probit7, type="html", out="model_probit7.htm", coef=list(model_probit7.or), p.auto=FALSE)
#gauname šansų santykį (iš jų atėmus 1 ir padauginus iš 100 --> gausime tikimybę procentais būti priskirtam 1 grupei (jei teigiamas gaunasi))

model_probit7.pred <- predict(model_probit7, type="response") 
summary(model_probit7.pred)
#tikimybė (mean*100), kai visi nepriklausomi kintamieji yra vidurkyje


#baziniai: 45-49 metų; vyrai; nevedę; turintys vidurinį išsilavinimą; baigę pagrindinę programą; neturintys aukštojo išsilavinimo; ekon. veikl r: pramonė; specialistai ; vilnius
model_lpm8<-lm(y~age_3+age_4+age_5+age_10+age_11+age_12+
                 hatlevel_3+hatfield_7+
                 hatfield_8++hatfield_9+hatfield_11+nace_1+nace_4+nace_5+nace_6+
                 +isco_5+isco_6+isco_9+isco_0
               +region_9, data = LT_D3
)
summary(model_lpm8)
library(lmtest)
bptest(model_lpm8)
library(car)
coeftest(model_lpm8,vcov = hccm(model_lpm8, type = "hc0"))

model8<-glm(y~age_3+age_4+age_5+age_6+age_7++age_9+age_10+age_11+age_12+sex_2+marstat_2+marstat_3+
              hatlevel_1+hatlevel_3+hatfield_1+hatfield_2+hatfield_3+hatfield_4+hatfield_5+hatfield_6+hatfield_7+
              hatfield_8++hatfield_9++hatfield_10++hatfield_11+nace_1+nace_3+nace_4+nace_5+nace_6+isco_1+
              +isco_3+isco_4+isco_5+isco_6+isco_7+isco_8+isco_9+isco_0+region_1+region_2+region_3+region_4+region_5
            +region_6+region_7+region_8+region_9, data = LT_D3, family = binomial
)
summary(model8)

model_log8<-glm(y~age_3+age_4+age_5+age_7+age_10+age_11+marstat_2+
            hatlevel_3+
              hatfield_9+nace_1+nace_3+nace_4+nace_5+nace_6+
              +isco_3+isco_4+isco_6+isco_8+isco_9+region_3
            +region_9, data = LT_D3, family = binomial
)
summary(model_log8)
model_log8.or=exp(coef(model_log8))
library(stargazer)
stargazer(model_log8, type="text", coef=list(model_log8.or), p.auto=FALSE)
stargazer(model_log8, type="html", out="lodel_log8.htm", coef=list(model_log8.or), p.auto=FALSE)

#gauname šansų santykį (iš jų atėmus 1 ir padauginus iš 100 --> gausime tikimybę procentais būti priskirtam 1 grupei (jei teigiamas gaunasi))
model_log8.pred <- predict(model_log8, type="response") 
summary(model_log8.pred)

model_probit8<-glm(y~age_3+age_4+age_5++age_10+age_11+age_12+marstat_2+
              hatlevel_3+hatfield_4+hatfield_7+
              hatfield_8++hatfield_9+hatfield_11+nace_1+nace_3+nace_4+nace_5+nace_6+isco_1+
              +isco_4+isco_5+isco_6+isco_7+isco_8
            +region_7+region_9, data = LT_D3, family = binomial(link = 'probit')
)
summary(model_probit8)
#pašalinus isco0 --> nace ir irsco reikšmingumas labai išaugo
model_probit8.or=exp(coef(model_probit8))
library(stargazer)
stargazer(model_probit8, type="text", coef=list(model_probit8.or), p.auto=FALSE)
stargazer(model_probit8, type="html", out="model_probit8.htm", coef=list(model_probit8.or), p.auto=FALSE)
#gauname šansų santykį (iš jų atėmus 1 ir padauginus iš 100 --> gausime tikimybę procentais būti priskirtam 1 grupei (jei teigiamas gaunasi))

model_probit8.pred <- predict(model_probit8, type="response") 
summary(model_probit8.pred)
#tikimybė (mean*100), kai visi nepriklausomi kintamieji yra vidurkyje


#baziniai: 45-49 metų; vyrai; nevedę; vilnius
model_lpm9<-lm(y~age_3+age_4+age_5+age_9+age_10+age_11+marstat_2+marstat_3+
                 region_2+region_4+region_5
               +region_6+region_7+region_8+region_9, data = LT_D3
)
summary(model_lpm9)
library(lmtest)
bptest(model_lpm9)
library(car)
coeftest(model_lpm9,vcov = hccm(model_lpm9, type = "hc0"))

model9<-glm(y~age_3+age_4+age_5+age_6+age_7+age_9+age_10+age_11+age_12+sex_2+marstat_2+marstat_3+
              region_1+region_2+region_3+region_4+region_5
            +region_6+region_7+region_8+region_9, data = LT_D3, family = binomial
)
summary(model9)

model_log9<-glm(y~age_3+age_4+age_5+age_9+age_10+age_11+marstat_2+marstat_3+
              region_2+region_4+region_5
            +region_6+region_7+region_8+region_9, data = LT_D3, family = binomial
)
summary(model_log9)
#lytis išnyko
model_log9.or=exp(coef(model_log9))
library(stargazer)
stargazer(model_log9, type="text", coef=list(model_log9.or), p.auto=FALSE)
stargazer(model_log9, type="html", out="lodel_log9.htm", coef=list(model_log9.or), p.auto=FALSE)

#gauname šansų santykį (iš jų atėmus 1 ir padauginus iš 100 --> gausime tikimybę procentais būti priskirtam 1 grupei (jei teigiamas gaunasi))
model_log9.pred <- predict(model_log9, type="response") 
summary(model_log9.pred)
#bazinis nereikšmingas, kai mažai kintamųjų

model_probit9<-glm(y~age_3+age_4+age_5+age_9+age_10+age_11+marstat_2+marstat_3+
              region_2+region_4+region_5
            +region_6+region_7+region_8+region_9, data = LT_D3, family = binomial(link = 'probit')
)
summary(model_probit9)
model_probit9.or=exp(coef(model_probit9))
library(stargazer)
stargazer(model_probit9, type="text", coef=list(model_probit9.or), p.auto=FALSE)
stargazer(model_probit9, type="html", out="model_probit9.htm", coef=list(model_probit9.or), p.auto=FALSE)
#gauname šansų santykį (iš jų atėmus 1 ir padauginus iš 100 --> gausime tikimybę procentais būti priskirtam 1 grupei (jei teigiamas gaunasi))

model_probit9.pred <- predict(model_probit9, type="response") 
summary(model_probit9.pred)
#tikimybė (mean*100), kai visi nepriklausomi kintamieji yra vidurkyje




#baziniai: 45-49 metų; vyrai; nevedę; turintys žemą išsilavinimą; baigę pagrindinę programą; vilnius
model_lpm10<-lm(y~age_3+age_4+age_5+age_10+age_11+sex_2+marstat_2+marstat_3+
                 hatlevel_2+hatlevel_3+hatfield_4+hatfield_7+
                 +hatfield_11+region_1+region_3
               +region_9, data = LT_D3
)
summary(model_lpm10)
library(lmtest)
bptest(model_lpm10)
library(car)
coeftest(model_lpm10,vcov = hccm(model_lpm10, type = "hc0"))

table(LT_D3[LT_D3$hatfield==0,]$isco)

model10<-glm(y~age_3+age_4+age_5+age_6+age_7+age_9+age_10+age_11+age_12+sex_2+marstat_2+marstat_3+
                 hatlevel_2+hatlevel_3+hatfield_1+hatfield_2+hatfield_3+hatfield_4+hatfield_5+hatfield_6+hatfield_7+
                 hatfield_8++hatfield_9++hatfield_10++hatfield_11+region_1+region_2+region_3+region_4+region_5
               +region_6+region_7+region_8+region_9, data = LT_D3, family = binomial
)
summary(model10)

model_log10<-glm(y~age_3+age_4+age_5+age_10+age_11+sex_2+marstat_2+marstat_3+
               hatlevel_2+hatlevel_3+hatfield_4+hatfield_7+
              +hatfield_11+region_1+region_3
             +region_9, data = LT_D3, family = binomial
)
summary(model_log10)
model_log10.or=exp(coef(model_log10))
library(stargazer)
stargazer(model_log10, type="text", coef=list(model_log10.or), p.auto=FALSE)
stargazer(model_log10, type="html", out="lodel_log10.htm", coef=list(model_log10.or), p.auto=FALSE)

#gauname šansų santykį (iš jų atėmus 1 ir padauginus iš 100 --> gausime tikimybę procentais būti priskirtam 1 grupei (jei teigiamas gaunasi))
model_log10.pred <- predict(model_log10, type="response") 
summary(model_log10.pred)
#bazinis nereikšmingas, kai mažai kintamųjų

model_probit10<-glm(y~age_3+age_4+age_5+age_10+age_11+sex_2+marstat_2+marstat_3+
               hatlevel_2+hatlevel_3+hatfield_4+hatfield_7+
               +hatfield_11+region_1+region_3
             +region_9, data = LT_D3, family = binomial(link = 'probit')
)
summary(model_probit10)
model_probit10.or=exp(coef(model_probit10))
library(stargazer)
stargazer(model_probit10, type="text", coef=list(model_probit10.or), p.auto=FALSE)
stargazer(model_probit10, type="html", out="model_probit10.htm", coef=list(model_probit10.or), p.auto=FALSE)
#gauname šansų santykį (iš jų atėmus 1 ir padauginus iš 100 --> gausime tikimybę procentais būti priskirtam 1 grupei (jei teigiamas gaunasi))

model_probit10.pred <- predict(model_probit10, type="response") 
summary(model_probit10.pred)
#tikimybė (mean*100), kai visi nepriklausomi kintamieji yra vidurkyje

#baziniai: 45-49 metų; vyrai; nevedę; turintys aukštąjį išsilavinimą; baigę verslo, administravimo, teisės programą;  vilnius
model_lpm11<-lm(y~age_3+age_4+age_5+age_10+age_11+marstat_2+marstat_3+
                 hatlevel_1+hatlevel_2+hatfield_0+hatfield_1+hatfield_5+
                 +region_1+region_3
               +region_9, data = LT_D3
)
summary(model_lpm11)
library(lmtest)
bptest(model_lpm11)
library(car)
coeftest(model_lpm11,vcov = hccm(model_lpm11, type = "hc0"))

model11<-glm(y~age_3+age_4+age_5+age_6+age_7+age_9+age_10+age_11+age_12+sex_2+marstat_2+marstat_3+
               hatlevel_1+hatlevel_2+hatfield_0+hatfield_1+hatfield_2+hatfield_3+hatfield_5+hatfield_6+hatfield_7+
               hatfield_8++hatfield_9++hatfield_10++hatfield_11+region_1+region_2+region_3+region_4+region_5
             +region_6+region_7+region_8+region_9, data = LT_D3, family = binomial
)
summary(model11)

model_log11<-glm(y~age_3+age_4+age_5+age_10+age_11+marstat_2+marstat_3+
               hatlevel_1+hatlevel_2+hatfield_0+hatfield_5+
               region_1+region_3
             +region_9, data = LT_D3, family = binomial
)
summary(model_log11)
#lytis išnyksta
model_log11.or=exp(coef(model_log11))
library(stargazer)
stargazer(model_log11, type="text", coef=list(model_log11.or), p.auto=FALSE)
stargazer(model_log11, type="html", out="lodel_log11.htm", coef=list(model_log11.or), p.auto=FALSE)

#gauname šansų santykį (iš jų atėmus 1 ir padauginus iš 100 --> gausime tikimybę procentais būti priskirtam 1 grupei (jei teigiamas gaunasi))
model_log11.pred <- predict(model_log11, type="response") 
summary(model_log11.pred)

model_probit11<-glm(y~age_3+age_4+age_5+age_10+age_11+marstat_2+marstat_3+
               hatlevel_1+hatlevel_2+hatfield_0+hatfield_5+
               +region_1+region_3
             +region_9, data = LT_D3, family = binomial(link = 'probit')
)
summary(model_probit11)

model_probit11.or=exp(coef(model_probit11))
library(stargazer)
stargazer(model_probit11, type="text", coef=list(model_probit11.or), p.auto=FALSE)
stargazer(model_probit11, type="html", out="model_probit11.htm", coef=list(model_probit11.or), p.auto=FALSE)
#gauname šansų santykį (iš jų atėmus 1 ir padauginus iš 100 --> gausime tikimybę procentais būti priskirtam 1 grupei (jei teigiamas gaunasi))

model_probit11.pred <- predict(model_probit11, type="response") 
summary(model_probit11.pred)
#tikimybė (mean*100), kai visi nepriklausomi kintamieji yra vidurkyje



#baziniai: 45-49 metų; vyrai; nevedę; turintys vidurinį išsilavinimą; baigę pagrindinę programą;  vilnius
model_lpm12<-lm(y~age_3+age_4+age_5+age_10+age_11+sex_2+marstat_2+marstat_3+
                 hatlevel_1+hatlevel_3+hatfield_4+hatfield_7+
                 hatfield_11+region_1+region_3
               +region_9, data = LT_D3
)
summary(model_lpm12)
library(lmtest)
bptest(model_lpm12)
library(car)
coeftest(model_lpm12,vcov = hccm(model_lpm12, type = "hc0"))

model12<-glm(y~age_3+age_4+age_5+age_6+age_7+age_9+age_10+age_11+age_12+sex_2+marstat_2+marstat_3+
               hatlevel_1+hatlevel_3+hatfield_1+hatfield_2+hatfield_3+hatfield_4+hatfield_5+hatfield_6+hatfield_7+
               hatfield_8++hatfield_9++hatfield_10++hatfield_11+region_1+region_2+region_3+region_4+region_5
             +region_6+region_7+region_8+region_9, data = LT_D3, family = binomial
)
summary(model12)

model_log12<-glm(y~age_3+age_4+age_5+age_10+age_11+sex_2+marstat_2+marstat_3+
               hatlevel_1+hatlevel_3+hatfield_4+hatfield_7+
               +hatfield_11+region_1+region_3
            +region_9, data = LT_D3, family = binomial
)
summary(model_log12)
model_log12.or=exp(coef(model_log12))
library(stargazer)
stargazer(model_log12, type="text", coef=list(model_log12.or), p.auto=FALSE)
stargazer(model_log12, type="html", out="lodel_log12.htm", coef=list(model_log12.or), p.auto=FALSE)

#gauname šansų santykį (iš jų atėmus 1 ir padauginus iš 100 --> gausime tikimybę procentais būti priskirtam 1 grupei (jei teigiamas gaunasi))
model_log12.pred <- predict(model_log12, type="response") 
summary(model_log12.pred)

model_probit12<-glm(y~age_3+age_4+age_5+age_10+age_11+sex_2+marstat_2+marstat_3+
               hatlevel_1+hatlevel_3+hatfield_4+hatfield_7+
               +hatfield_11+region_1+region_3
             +region_9, data = LT_D3, family = binomial(link = 'probit')
)
summary(model_probit12)
model_probit12.or=exp(coef(model_probit12))
library(stargazer)
stargazer(model_probit12, type="text", coef=list(model_probit12.or), p.auto=FALSE)
stargazer(model_probit12, type="html", out="model_probit12.htm", coef=list(model_probit12.or), p.auto=FALSE)
#gauname šansų santykį (iš jų atėmus 1 ir padauginus iš 100 --> gausime tikimybę procentais būti priskirtam 1 grupei (jei teigiamas gaunasi))

model_probit12.pred <- predict(model_probit12, type="response") 
summary(model_probit12.pred)
#tikimybė (mean*100), kai visi nepriklausomi kintamieji yra vidurkyje




#baziniai: 45-49 metų; vyrai; nevedę; ištekėjusi moteris; turintys vidurinį išsilavinimą; baigę pagrindinę programą;vilnius
model_lpm13<-lm(y~age_6+age_10+age_11+sex_2+marstat_2+I(sex_2*marstat_2)+
                 hatlevel_3+hatfield_4+hatfield_7+
                 +hatfield_9+hatfield_11+region_1+region_3
               +region_9, data = LT_D3
)
summary(model_lpm13)
library(lmtest)
bptest(model_lpm13)
library(car)
coeftest(model_lpm13,vcov = hccm(model_lpm13, type = "hc0"))

model13<-glm(y~age_3+age_4+age_5+age_6+age_7+age_9+age_10+age_11+age_12+sex_2+marstat_2+marstat_3+I(sex_2*marstat_2)+
               hatlevel_1+hatlevel_3+hatfield_1+hatfield_2+hatfield_3+hatfield_4+hatfield_5+hatfield_6+hatfield_7+
               hatfield_8++hatfield_9++hatfield_10++hatfield_11+region_1+region_2+region_3+region_4+region_5
             +region_6+region_7+region_8+region_9, data = LT_D3, family = binomial
)
summary(model13)

model_log13<-glm(y~age_10+age_11+sex_2+marstat_2+I(sex_2*marstat_2)+
               hatlevel_3+hatfield_4+hatfield_7+
               hatfield_9+hatfield_11+region_1+region_3
             +region_9, data = LT_D3, family = binomial
)
summary(model_log13)
model_log13.or=exp(coef(model_log13))
library(stargazer)
stargazer(model_log13, type="text", coef=list(model_log13.or), p.auto=FALSE)
stargazer(model_log13, type="html", out="lodel_log13.htm", coef=list(model_log13.or), p.auto=FALSE)

#gauname šansų santykį (iš jų atėmus 1 ir padauginus iš 100 --> gausime tikimybę procentais būti priskirtam 1 grupei (jei teigiamas gaunasi))
model_log13.pred <- predict(model_log13, type="response") 
summary(model_log13.pred)

model_probit13<-glm(y~age_10+age_11+sex_2+marstat_2+I(sex_2*marstat_2)+
               hatlevel_3+hatfield_4+hatfield_7+
               +hatfield_9+hatfield_11+region_1+region_3
             +region_9, data = LT_D3, family = binomial(link = 'probit')
)
summary(model_probit13)

model_probit13.or=exp(coef(model_probit13))
library(stargazer)
stargazer(model_probit13, type="text", coef=list(model_probit13.or), p.auto=FALSE)
stargazer(model_probit13, type="html", out="model_probit13.htm", coef=list(model_probit13.or), p.auto=FALSE)
#gauname šansų santykį (iš jų atėmus 1 ir padauginus iš 100 --> gausime tikimybę procentais būti priskirtam 1 grupei (jei teigiamas gaunasi))

model_probit13.pred <- predict(model_probit13, type="response") 
summary(model_probit13.pred)
#tikimybė (mean*100), kai visi nepriklausomi kintamieji yra vidurkyje




#baziniai: 45-49 metų; vyrai; nevedę; ištekėjusi moteris; turintys vidurinį išsilavinimą; baigę pagrindinę programą; ekon.veikla: pramonė; kvalifikuoti darbininkai ir amatininkai
model_lpm14<-lm(y~age_3+age_4+age_5+age_10+age_11+age_12+marstat_2+I(sex_2*marstat_2)+
                 hatlevel_3+hatfield_7+
                 hatfield_8++hatfield_9+hatfield_11+nace_1+nace_4+nace_5+nace_6+
                 +isco_5+isco_6+isco_9+isco_0, data = LT_D3
)
summary(model_lpm14)
library(lmtest)
bptest(model_lpm14)
library(car)
coeftest(model_lpm14,vcov = hccm(model_lpm14, type = "hc0"))


model14<-glm(y~age_3+age_4+age_5+age_6+age_7+age_9+age_10+age_11+age_12+sex_2+marstat_2+marstat_3+I(sex_2*marstat_2)+
               hatlevel_1+hatlevel_3+hatfield_1+hatfield_2+hatfield_3+hatfield_4+hatfield_5+hatfield_6+hatfield_7+
               hatfield_8++hatfield_9++hatfield_10++hatfield_11+nace_1+nace_3+nace_4+nace_5+nace_6+isco_1+
               +isco_2+isco_3+isco_4+isco_5+isco_6+isco_8+isco_9+isco_0, data = LT_D3, family = binomial
)
summary(model14)

model_log14<-glm(y~age_3+age_4+age_5+age_7+age_10+age_11+age_12+sex_2+marstat_2+I(sex_2*marstat_2)+
                   hatlevel_3+hatfield_5+
                   +hatfield_9+nace_1+nace_3+nace_4+nace_5+nace_6+
                   +isco_4+isco_6+isco_8+isco_9, data = LT_D3, family = binomial
)
summary(model_log14)

#average merginal effects:
model_log14_pred<-mean(dlogis(predict(model_log14, type = "link")))
model_log14_pred*coef(model_log14)

model_log14.or=exp(coef(model_log14))
library(stargazer)
stargazer(model_log14, type="text", coef=list(model_log14.or), p.auto=FALSE)
stargazer(model_log14, type="html", out="lodel_log14.htm", coef=list(model_log14.or), p.auto=FALSE)

#gauname šansų santykį (iš jų atėmus 1 ir padauginus iš 100 --> gausime tikimybę procentais būti priskirtam 1 grupei (jei teigiamas gaunasi))
model_log14.pred <- predict(model_log14, type="response") 
summary(model_log14.pred)


model_probit14<-glm(y~age_3+age_4+age_5+age_7+age_10+age_11+age_12+sex_2+marstat_2+I(sex_2*marstat_2)+
               hatlevel_3+hatfield_5+
               hatfield_9+nace_1+nace_3+nace_4+nace_5+nace_6+
               +isco_2+isco_4+isco_6+isco_8+isco_9, data = LT_D3, family = binomial(link = 'probit')
)
summary(model_probit14)

model_probit14_pred<-mean(dnorm(predict(model_probit14, type = "link")))
model_probit14_pred*coef(model_probit14)

LPM14<- summary(model_lpm14)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname, Estimate) %>%
  rename(LPM14 = Estimate)
names(LPM14 )[2] <- "LPM_prob"

Log_prob_14<-as.data.frame(model_log14_pred*coef(model_log14))
Log_variables_14<-summary(model_log14)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Logit14<-cbind(Log_variables_14,Log_prob_14)
names(Logit14 )[2] <- "Logit_prob"

Probit_prob_14<-as.data.frame(model_probit14_pred*coef(model_probit14))
Probit_variables_14<-summary(model_probit14)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname) 
Probit14<-cbind(Probit_variables_14,Probit_prob_14)
names(Probit14 )[2] <- "Probit_prob"

library(purrr)
var_14<-list(LPM14,Logit14,Probit14) %>% reduce(full_join, by = "rowname")
library(dplyr)
var_14 <- var_14 %>% mutate(across(c('LPM_prob', 'Logit_prob','Probit_prob'), round, 4))


model_probit14.or=exp(coef(model_probit14))
library(stargazer)
stargazer(model_probit14, type="text", coef=list(model_probit14.or), p.auto=FALSE)
stargazer(model_probit14, type="html", out="model_probit14.htm", coef=list(model_probit14.or), p.auto=FALSE)
#gauname šansų santykį (iš jų atėmus 1 ir padauginus iš 100 --> gausime tikimybę procentais būti priskirtam 1 grupei (jei teigiamas gaunasi))

model_probit14.pred <- predict(model_probit14, type="response") 
summary(model_probit14.pred)
#tikimybė (mean*100), kai visi nepriklausomi kintamieji yra vidurkyje
list(model_lpm14,model_log14,model_probit14)

MM1 <- summary(M1)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname, Estimate, `Std. Error`) %>%
  rename(M1 = Estimate, sig.M1 = `Std. Error`)
MM2 <- summary(M2)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname, Estimate, `Std. Error`) %>%
  rename(M2 = Estimate, sig.M2 = `Std. Error`)
MM3 <- summary(M3)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname, Estimate, `Std. Error`) %>%
  rename(M3 = Estimate, sig.M3 = `Std. Error`)
MM4 <- summary(M4)$coefficients %>% as.data.frame %>% rownames_to_column() %>% select(rowname, Estimate, `Std. Error`) %>%
  rename(M4 = Estimate, sig.M4 = `Std. Error`)



model_lpm15<-lm(y~age_3+age_4+age_5+age_10+age_11+age_12+sex_2+marstat_2+I(sex_2*marstat_2)+
                hatlevel_3+hatfield_7+
                 hatfield_8++hatfield_9+hatfield_11+nace_1+nace_4+nace_5+nace_6+
                 +isco_5+isco_6+isco_9+isco_0+region_2
                +region_9, data = LT_D3
)
summary(model_lpm15)
#baziniai: 45-49 metų; vyrai; nevedę; ištekėjusi moteris; turintys vidurinį išsilavinimą; baigę pagrindinę programą; ekon.veikla: pramonė; kvalifikuoti darbininkai ir amatininkai; vilnius
model_lpm15<-lm(y~age_3+age_4+age_5+age_10+age_11+age_12+sex_2+marstat_2+I(sex_2*marstat_2)+
                  hatlevel_3+hatfield_7+
                  hatfield_8++hatfield_9+hatfield_11+nace_1+nace_4+nace_5+nace_6+
                  +isco_5+isco_6+isco_9+isco_0
                +region_9, data = LT_D3
)
summary(model_lpm15)
library(lmtest)
bptest(model_lpm15)
library(car)
coeftest(model_lpm15,vcov = hccm(model_lpm15, type = "hc0"))
#klasikinė white korekcija

model15<-glm(y~age_3+age_4+age_5+age_6+age_7+age_9+age_10+age_11+age_12+sex_2+marstat_2+marstat_3+I(sex_2*marstat_2)+
               hatlevel_1+hatlevel_3+hatfield_1+hatfield_2+hatfield_3+hatfield_4+hatfield_5+hatfield_6+hatfield_7+
               hatfield_8++hatfield_9++hatfield_10++hatfield_11+nace_1+nace_3+nace_4+nace_5+nace_6+isco_1+
               +isco_2+isco_3+isco_4+isco_5+isco_6+isco_8+isco_9+isco_0+region_1+region_2+region_3+region_4+region_5
             +region_6+region_7+region_8+region_9, data = LT_D3, family = binomial
)
summary(model15)

model_log15<-glm(y~age_3+age_4+age_5+age_7+age_10+age_11+age_12+sex_2+marstat_2+I(sex_2*marstat_2)+
                   hatlevel_3+hatfield_5+
                   +hatfield_9+nace_1+nace_3+nace_4+nace_5+nace_6+isco_1+
                   +isco_2+isco_3+isco_4+isco_5+isco_6+isco_8+region_3
                 +region_9, data = LT_D3, family = binomial
)
summary(model_log15)
model_log15.or=exp(coef(model_log15))
library(stargazer)
stargazer(model_log15, type="text", coef=list(model_log15.or), p.auto=FALSE)
stargazer(model_log15, type="html", out="lodel_log15.htm", coef=list(model_log15.or), p.auto=FALSE)

#gauname šansų santykį (iš jų atėmus 1 ir padauginus iš 100 --> gausime tikimybę procentais būti priskirtam 1 grupei (jei teigiamas gaunasi))
model_log15.pred <- predict(model_log15, type="response") 
summary(model_log15.pred)

model_probit15<-glm(y~age_3+age_4+age_5+age_7+age_10+age_11+sex_2+marstat_2+I(sex_2*marstat_2)+
               hatlevel_3+hatfield_4+
               hatfield_8++hatfield_9+hatfield_11+nace_1+nace_3+nace_4+nace_5+nace_6+
               +isco_3+isco_4+isco_6+isco_8+isco_9+region_3
             +region_9, data = LT_D3, family = binomial(link = 'probit')
)
summary(model_probit15)




#baziniai: 45-49 metų; vyrai; nevedę; vedęs vyras; turintys vidurinį išsilavinimą; baigę pagrindinę programą; ekon.veikla: pramonė; kvalifikuoti darbininkai ir amatininkai; vilnius
model_lpm16<-lm(y~age_3+age_4+age_5+age_10+age_11+age_12+I(sex_1*marstat_2)+
                  hatlevel_3+hatfield_7+
                  hatfield_8++hatfield_9+hatfield_11+nace_1+nace_4+nace_5+nace_6+
                  +isco_5+isco_6+isco_9+isco_0
                +region_9, data = LT_D3
)
summary(model_lpm16)
library(lmtest)
bptest(model_lpm16)
library(car)
coeftest(model_lpm16,vcov = hccm(model_lpm16, type = "hc0"))

#ankstesnės darbo patirties įvertinima
model_lpm17<-lm(y~age_3+age_6+age_7+age_8+age_9+age_10+age_11+age_12+marstat_2+
                  hatlevel_3+hatfield_2+hatfield_3+hatfield_4+hatfield_7+
                  +hatfield_9++hatfield_11+existpr_0+region_1
                +region_9, data = LT_D3
)
summary(model_lpm17)
library(lmtest)
bptest(model_lpm17)
library(car)
coeftest(model_lpm17,vcov = hccm(model_lpm17, type = "hc0"))

model_log17<-glm(y~age_6+age_10+age_11+sex_2+marstat_2+marstat_3+
              hatlevel_3+hatfield_4+hatfield_7+
              hatfield_9+hatfield_11+region_1+region_3+
            region_9, data = LT_D3, family = binomial
)
summary(model_log17)
#ankstesnės darbo patirties turėjimo kintamasis neturi visai įtakos (didelis labai standartinis nuokrypis, labai maža z statistika) 
#išnyksta tada daugelio atveju amžiaus grupių reikšmingumas
model_log17.or=exp(coef(model_log17))
library(stargazer)
stargazer(model_log17, type="text", coef=list(model_log17.or), p.auto=FALSE)
stargazer(model_log17, type="html", out="lodel_log17.htm", coef=list(model_log17.or), p.auto=FALSE)

model17<-glm(y~age_3+age_5+age_6+age_7+age_8+age_9+age_10+age_11+age_12+sex_2+marstat_2+marstat_3+
               hatlevel_1+hatlevel_3+hatfield_1+hatfield_2+hatfield_3+hatfield_4+hatfield_5+hatfield_6+hatfield_7+
               hatfield_8++hatfield_9++hatfield_10++hatfield_11+existpr_0+region_1+region_2+region_3+region_4+region_5
             +region_6+region_7+region_8+region_9, data = LT_D3, family = binomial
)
summary(model17)

model_probit17<-glm(y~age_6+age_10+age_11+marstat_2+
               hatlevel_3+hatfield_4+hatfield_7+
              ++hatfield_9+hatfield_11+region_1+region_3
             +region_9, data = LT_D3, family = binomial(link = 'probit')
)
summary(model_probit17)
#baziniai: 25-29 metų; vyrai; nevedę; turintys vidurinį išsilavinimą; baigę pagrindinę programą;turintys darbinę patirtį, vilnius


model_lpm18<-lm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+sex_2+marstat_2+I(sex_2*marstat_2)+
               hatlevel_3+
               hatfield_8++hatfield_9+nace_1+nace_4+nace_5+nace_6+
               +isco_5+isco_6+isco_9+isco_0+existpr_0
             +region_9, data = LT_D3
)
summary(model_lpm18)
library(lmtest)
bptest(model_lpm18)
library(car)
coeftest(model_lpm18,vcov = hccm(model_lpm18, type = "hc0"))
library(car)
vif(model_lpm18)


model18<-glm(y~age_3+age_5+age_6+age_7+age_8+age_9+age_10+age_11+age_12+sex_2+marstat_2+marstat_3+I(sex_2*marstat_2)+
               hatlevel_1+hatlevel_3+hatfield_1+hatfield_2+hatfield_3+hatfield_4+hatfield_5+hatfield_6+hatfield_7+
               hatfield_8++hatfield_9++hatfield_10++hatfield_11+nace_1+nace_3+nace_4+nace_5+nace_6+isco_1+
               +isco_3+isco_4+isco_5+isco_6+isco_7+isco_8+isco_9+isco_0+existpr_0+region_1+region_2+region_3+region_4+region_5
             +region_6+region_7+region_8+region_9, data = LT_D3, family = binomial
)
summary(model18)

model_log18<-glm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+sex_2+marstat_2+I(sex_2*marstat_2)+
               hatlevel_3+
               hatfield_9+nace_1+nace_3+nace_4+nace_5+nace_6+isco_1+
               +isco_3+isco_4+isco_5+isco_6+isco_7+isco_8
             +region_9, data = LT_D3, family = binomial
)
summary(model_log18)
#labai nereikšmingas darbinės patirties turėjimas
library(car)
vif(model_log18)

model_log18.or=exp(coef(model_log18))
library(stargazer)
stargazer(model_log18, type="text", coef=list(model_log18.or), p.auto=FALSE)
stargazer(model_log18, type="html", out="lodel_log18.htm", coef=list(model_log18.or), p.auto=FALSE)

model_probit18<-glm(y~age_6+age_9+age_10+age_11+age_12+sex_2+marstat_2+I(sex_2*marstat_2)+
               hatlevel_3+hatfield_4+
               hatfield_8++hatfield_9+hatfield_11+nace_1+nace_3+nace_4+nace_5+nace_6+
               +isco_3+isco_4+isco_6+isco_8+isco_9+region_3
             +region_9, data = LT_D3, family = binomial(link = 'probit')
)
summary(model_probit18)
library(car)
vif(model_probit18)
#baziniai: 25-29 metų; vyrai; nevedę; turintys vidurinį išsilavinimą; baigę pagrindinę programą;turintys darbinę patirtį; ekon. veikl r: pramonė; specialistai ;vilnius



################### nepasiteisinę žemiau 
#be darbinės patirties
model_log19<-glm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+sex_2+marstat_2+I(sex_2*marstat_2)+
               hatlevel_3+
               +hatfield_9+nace_1+nace_3+nace_4+nace_5+nace_6+isco_1+
               +isco_3+isco_4+isco_5+isco_6+isco_7+isco_8
             +region_9, data = LT_D3, family = binomial
)
summary(model_log19)

model_probit19<-glm(y~age_6+age_9+age_10+age_11+age_12+sex_2+marstat_2+I(sex_2*marstat_2)+
               hatlevel_3+hatfield_4+
               hatfield_8++hatfield_9+hatfield_11+nace_1+nace_3+nace_4+nace_5+nace_6+
               +isco_3+isco_4+isco_6+isco_8+isco_9+region_3
             +region_9, data = LT_D3, family = binomial(link = 'probit')
)
summary(model_probit19)



#be darbinės patirties ir regiono
model_log20<-glm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+sex_2+marstat_2+I(sex_2*marstat_2)+
               hatlevel_3+
               +hatfield_9+nace_1+nace_3+nace_4+nace_5+nace_6+isco_1+
               +isco_3+isco_4+isco_5+isco_6+isco_7+isco_8, data = LT_D3, family = binomial
)
summary(model_log20)

model_probit20<-glm(y~age_6+age_7+age_8+age_9+age_10+age_11+age_12+sex_2+marstat_2+I(sex_2*marstat_2)+
                   hatlevel_3+
                   ++hatfield_9++hatfield_11+nace_1+nace_3+nace_4+nace_5+nace_6+isco_1+
                   +isco_3+isco_4+isco_5+isco_6+isco_7+isco_8, data = LT_D3, family = binomial(link = 'probit')
)
summary(model_probit20)


table(LT_D3[LT_D3$nace==1,]$isco)
table(LT_D3[LT_D3$isco==6,]$hatlevel)



model_log21<-glm(y~age_6+age_7+age_9+age_10+age_11+age_12+marstat_2+I(sex_2*marstat_2)+
               hatlevel_3+hatfield_7+
               +hatfield_9++hatfield_11+nace_2+nace_3+nace_5+isco_1+isco_2+
               +isco_3+isco_4+isco_5+isco_7+isco_8+isco_9, data = LT_D3, family = binomial
)
summary(model_log21)

summary(as.numeric(LT_D3$region))
summary(LT_D3)
table(LT_D3[LT_D3$hatfield==9,]$isco)
#pagal vidutines reikšmes
model_log21<-glm(y~age_3+age_4+age_5+age_6+age_8+age_9+age_10+age_11+age_12+sex_2+marstat_2+marstat_3+I(sex_2*marstat_2)+
                   hatlevel_1+hatlevel_3+hatfield_0+hatfield_1+hatfield_2+hatfield_3+hatfield_4+hatfield_5+hatfield_6+hatfield_7+
                   hatfield_8+hatfield_10++hatfield_11+nace_1+nace_2+nace_3+nace_4+nace_5+isco_1+
                   +isco_3+isco_4+isco_5+isco_6+isco_7+isco_8+isco_9+isco_0+existpr_0+region_1+region_2+region_3+region_4+region_5
                 +region_7+region_8+region_9+region_10, data = LT_D3, family = binomial
)
summary(model_log21)

model_log21<-glm(y~age_3+age_4+age_5+age_10+age_11+sex_2+marstat_2+I(sex_2*marstat_2)+
                   hatlevel_3+hatfield_0+hatfield_1+
                   +nace_1+nace_4+nace_5+isco_1+
                   +isco_3+isco_4+isco_5+isco_6+isco_7+isco_8+isco_9+
                 +region_9, data = LT_D3, family = binomial
)
summary(model_log21)



