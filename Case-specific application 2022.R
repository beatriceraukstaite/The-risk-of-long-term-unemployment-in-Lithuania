
new_data<-data_frame(age_6=c(0.09938766),age_7=c(0.1205841),age_8=c(0.1526142),age_9=c(0.1521432),age_10=c(0.16439),age_11=c(0.06594442),age_12=c(0.004239284),sex_2=c(0.5275553),marstat_2=c(0.5242581),I(sex_2*marstat_2)==c(0.2765751),
                     hatlevel_3=c(0.2675459),hatfield_8=c(0.01130476),
                     hatfield_9=c(0.01036269),nace_1=c(0.1069242),nace_4=c(0.20584080),nace_5=c(0.0715968),nace_6=c(0.1709845),
                     isco_5=c(0.1130476),isco_6=c(0.0626472),isco_9=c(0.08337259),isco_0=c(0.1917098),existpr_0=c(0.03909562),apskritys_1=c(0.1719265),apskritys_3=c(0.08525671),
                     apskritys_5=c(0.1102214))
predict(model_lpm31, new_data)
#0.4645123 
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
#0.5232716 

#kraštutinis atvejis
max(predict(model_lpm31)) 
#1.24979
max(predict(model_log31, type = "response")) 
#0.98642
max(predict(model_probit31, type = "response")) 
#0.99163
prob.model_lpm31<-predict(model_lpm31)
prob.model_lpm31<-round(prob.model_lpm31, digits = 5)
prob.model_log31<-predict(model_log31, type = "response")
prob.model_log31<-round(prob.model_log31, digits = 5)
prob.model_probit31<-predict(model_probit31, type = "response")
prob.model_probit31<-round(prob.model_probit31, digits = 5)

which(prob.model_lpm31 == 1.24979)
#1438 ir 1166 eilutė
which(prob.model_log31 == 0.98643)
#893  972 1449 1514 1529 1982 2000 2007 
#711  774 1177 1239 1251 1640 1650 1652 
which(prob.model_probit31 == 0.99163)
# 893  972 1449 1514 1529 1982 2000 2007 
#711  774 1177 1239 1251 1640 1650 1652 

min(predict(model_lpm31)) 
#-0.24841
min(predict(model_log31, type = "response")) 
#0.002143
min(predict(model_probit31, type = "response")) 
#0.0002661

which(prob.model_lpm31 == -0.24841)
#192 ir 153 eilutė
which(prob.model_log31 == 0.00214)
#1581,1287
which(prob.model_probit31 == 0.00027)
#1581,1287

max_prob<-LT_aged_full[c(1438,1166,893,972,1449, 1514, 1529, 1982, 2000, 2007,711,774, 1177, 1239, 1251, 1640, 1650, 1652 ),]
min_prob<-LT_aged_full[c(192,153,1581,1287),]

summary(max_prob)
#daugiau nevedusių/neištekėjusių, nes vidurkis žemesnis nei visos imties
#daugiau vyrų, nes vidurkis žemesnis nei visos imties
#daugiau vyresnio amžiaus, vidurkis žemesnis nei visos imties
#didžioji dalis priklauso kitiems miestams
#didžioji dalis turėjo darbinę patirtį

summary(min_prob)
#didžioji dalis vedę/ištekėję
#jaunesnio amžiaus, nes vidurkis žemesnis nei visos imties
#vien vyrai
#pusė su auktštuoju
#pusė dirba žemės ūkio veikloje kvalifikuotais žemės ūkio darbuotojais
#didžioji dalis priklauso didmiesčiams






