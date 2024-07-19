View(Q4_2021)
library(dplyr)

apzvalga<-Q4_2021 %>% group_by(seekdur, wkstat) %>% summarise(N(Q4_2021$hhnum))
apzvalga

Q4_2022_ilg_buv<-Q4_2022[which(Q4_2022$seekdur==3),]
Q4_2022_ilg_buv<-Q4_2022_ilg_buv[which(Q4_2022_ilg_buv$wkstat==1),]

#nėra

Q4_2022_tr_buv<-Q4_2022[which(Q4_2022$seekdur<=2),]
Q4_2022_tr_buv<-Q4_2022_tr_buv[which(Q4_2022_tr_buv$wkstat==1),]

#nėra

Q2_2022_ilg_buv<-Q2_2022[which(Q2_2022$seekdur==3),]
Q2_2022_ilg_buv<-Q2_2022_ilg_buv[which(Q2_2022_ilg_buv$wkstat==1),]

#nėra

Q2_2022_tr_buv<-Q2_2022[which(Q2_2022$seekdur<=2),]
Q2_2022_tr_buv<-Q2_2022_tr_buv[which(Q2_2022_tr_buv$wkstat==1),]

#nėra

Q3_2022_ilg_buv<-Q3_2021[which(Q3_2022$seekdur==3),]
Q3_2022_ilg_buv<-Q3_2022_ilg_buv[which(Q3_2022_ilg_buv$wkstat==1),]

#nėra

Q3_2022_tr_buv<-Q3_2022[which(Q3_2022$seekdur<=2),]
Q3_2022_tr_buv<-Q3_2022_tr_buv[which(Q3_2022_tr_buv$wkstat==1),]

#nėra

Q1_2022_ilg_buv<-Q1_2022[which(Q1_2022$seekdur==3),]
Q1_2022_ilg_buv<-Q1_2022_ilg_buv[which(Q1_2022_ilg_buv$wkstat==1),]

#nėra

Q1_2022_tr_buv<-Q1_2022[which(Q1_2022$seekdur<=2),]
Q1_2022_tr_buv<-Q1_2022_tr_buv[which(Q1_2022_tr_buv$wkstat==1),]

#nėra


Q4_2021_ilg_buv<-Q4_2021[which(Q4_2021$seekdur==3),]
Q4_2021_ilg_buv<-Q4_2021_ilg_buv[which(Q4_2021_ilg_buv$wkstat==1),]

#nėra

Q4_2021_tr_buv<-Q4_2021[which(Q4_2021$seekdur<=2),]
Q4_2021_tr_buv<-Q4_2021_tr_buv[which(Q4_2021_tr_buv$wkstat==1),]

#nėra

Q2_2021_ilg_buv<-Q2_2021[which(Q2_2021$seekdur==3),]
Q2_2021_ilg_buv<-Q2_2021_ilg_buv[which(Q2_2021_ilg_buv$wkstat==1),]

#nėra

Q2_2021_tr_buv<-Q2_2021[which(Q2_2021$seekdur<=2),]
Q2_2021_tr_buv<-Q2_2021_tr_buv[which(Q2_2021_tr_buv$wkstat==1),]

#nėra

Q3_2021_ilg_buv<-Q3_2021[which(Q3_2021$seekdur==3),]
Q3_2021_ilg_buv<-Q3_2021_ilg_buv[which(Q3_2021_ilg_buv$wkstat==1),]

#nėra

Q3_2021_tr_buv<-Q3_2021[which(Q3_2021$seekdur<=2),]
Q3_2021_tr_buv<-Q3_2021_tr_buv[which(Q3_2021_tr_buv$wkstat==1),]

#nėra

Q1_2021_ilg_buv<-Q1_2021[which(Q1_2021$seekdur==3),]
Q1_2021_ilg_buv<-Q1_2021_ilg_buv[which(Q1_2021_ilg_buv$wkstat==1),]

#nėra

Q1_2021_tr_buv<-Q1_2021[which(Q1_2021$seekdur<=2),]
Q1_2021_tr_buv<-Q1_2021_tr_buv[which(Q1_2021_tr_buv$wkstat==1),]

#nėra

Q4_2020_ilg_buv<-Q4_2020[which(Q4_2020$seekdur==3),]
Q4_2020_ilg_buv<-Q4_2020_ilg_buv[which(Q4_2020_ilg_buv$wstator==1),]

#14 identifikuotų

Q4_2020_tr_buv<-Q4_2020[which(Q4_2020$seekdur<=2),]
Q4_2020_tr_buv<-Q4_2020_tr_buv[which(Q4_2020_tr_buv$wstator==1),]

#63 identifikuotų

Q2_2020_ilg_buv<-Q2_2020[which(Q2_2020$seekdur==3),]
Q2_2020_ilg_buv<-Q2_2020_ilg_buv[which(Q2_2020_ilg_buv$wstator==1),]

#14 identifikuotų

Q2_2020_tr_buv<-Q2_2020[which(Q2_2020$seekdur<=2),]
Q2_2020_tr_buv<-Q2_2020_tr_buv[which(Q2_2020_tr_buv$wstator==1),]

#51 identifikuotų

Q3_2020_ilg_buv<-Q3_2020[which(Q3_2020$seekdur==3),]
Q3_2020_ilg_buv<-Q3_2020_ilg_buv[which(Q3_2020_ilg_buv$wstator==1),]

#9 identifikuotų

Q3_2020_tr_buv<-Q3_2020[which(Q3_2020$seekdur<=2),]
Q3_2020_tr_buv<-Q3_2020_tr_buv[which(Q3_2020_tr_buv$wstator==1),]

#74 identifikuotų

Q1_2020_ilg_buv<-Q1_2020[which(Q1_2020$seekdur==3),]
Q1_2020_ilg_buv<-Q1_2020_ilg_buv[which(Q1_2020_ilg_buv$wstator==1),]

#14 identifikuotų

Q1_2020_tr_buv<-Q1_2020[which(Q1_2020$seekdur<=2),]
Q1_2020_tr_buv<-Q1_2020_tr_buv[which(Q1_2020_tr_buv$wstator==1),]

#60 identifikuotų

Q1_2020_ilg_buv$hhnum
Q2_2020_ilg_buv$hhnum
Q3_2020_ilg_buv$hhnum
Q4_2020_ilg_buv$hhnum

Q1_2020_tr_buv$hhnum
Q2_2020_tr_buv$hhnum
Q3_2020_tr_buv$hhnum
Q4_2020_tr_buv$hhnum

Q1_2019_ilg_buv<-Q1_2019[which(Q1_2019$seekdur==3),]
Q1_2019_ilg_buv<-Q1_2019_ilg_buv[which(Q1_2019_ilg_buv$wstator==1),]

#21 identifikuotų

Q1_2019_tr_buv<-Q1_2019[which(Q1_2019$seekdur<=2),]
Q1_2019_tr_buv<-Q1_2019_tr_buv[which(Q1_2019_tr_buv$wstator==1),]

#69 identifikuotų

Q2_2019_ilg_buv<-Q2_2019[which(Q2_2019$seekdur==3),]
Q2_2019_ilg_buv<-Q2_2019_ilg_buv[which(Q2_2019_ilg_buv$wstator==1),]

#23 identifikuotų

Q2_2019_tr_buv<-Q2_2019[which(Q2_2019$seekdur<=2),]
Q2_2019_tr_buv<-Q2_2019_tr_buv[which(Q2_2019_tr_buv$wstator==1),]

#65 identifikuotų


Q3_2019_ilg_buv<-Q3_2019[which(Q3_2019$seekdur==3),]
Q3_2019_ilg_buv<-Q3_2019_ilg_buv[which(Q3_2019_ilg_buv$wstator==1),]

#13 identifikuotų

Q3_2019_tr_buv<-Q3_2019[which(Q3_2019$seekdur<=2),]
Q3_2019_tr_buv<-Q3_2019_tr_buv[which(Q3_2019_tr_buv$wstator==1),]

#64 identifikuotų

Q4_2019_ilg_buv<-Q4_2019[which(Q4_2019$seekdur==3),]
Q4_2019_ilg_buv<-Q4_2019_ilg_buv[which(Q4_2019_ilg_buv$wstator==1),]

#7 identifikuotų

Q4_2019_tr_buv<-Q4_2019[which(Q4_2019$seekdur<=2),]
Q4_2019_tr_buv<-Q4_2019_tr_buv[which(Q4_2019_tr_buv$wstator==1),]

#62 identifikuotų

Q1_2019_ilg_buv$hhnum
Q2_2019_ilg_buv$hhnum
Q3_2019_ilg_buv$hhnum
Q4_2019_ilg_buv$hhnum

Q1_2019_tr_buv$hhnum
Q2_2019_tr_buv$hhnum
Q3_2019_tr_buv$hhnum
Q4_2019_tr_buv$hhnum

Q1_2018_ilg_buv<-Q1_2018[which(Q1_2018$seekdur==3),]
Q1_2018_ilg_buv<-Q1_2018_ilg_buv[which(Q1_2018_ilg_buv$wstator==1),]

#24 identifikuotų

Q1_2018_tr_buv<-Q1_2018[which(Q1_2018$seekdur<=2),]
Q1_2018_tr_buv<-Q1_2018_tr_buv[which(Q1_2018_tr_buv$wstator==1),]

#81 identifikuotų

Q2_2018_ilg_buv<-Q2_2018[which(Q2_2018$seekdur==3),]
Q2_2018_ilg_buv<-Q2_2018_ilg_buv[which(Q2_2018_ilg_buv$wstator==1),]

#30 identifikuotų

Q2_2018_tr_buv<-Q2_2018[which(Q2_2018$seekdur<=2),]
Q2_2018_tr_buv<-Q2_2018_tr_buv[which(Q2_2018_tr_buv$wstator==1),]

#60 identifikuotų


Q3_2018_ilg_buv<-Q3_2018[which(Q3_2018$seekdur==3),]
Q3_2018_ilg_buv<-Q3_2018_ilg_buv[which(Q3_2018_ilg_buv$wstator==1),]

#28 identifikuotų

Q3_2018_tr_buv<-Q3_2018[which(Q3_2018$seekdur<=2),]
Q3_2018_tr_buv<-Q3_2018_tr_buv[which(Q3_2018_tr_buv$wstator==1),]

#56 identifikuotų

Q4_2018_ilg_buv<-Q4_2018[which(Q4_2018$seekdur==3),]
Q4_2018_ilg_buv<-Q4_2018_ilg_buv[which(Q4_2018_ilg_buv$wstator==1),]

#20 identifikuotų

Q4_2018_tr_buv<-Q4_2018[which(Q4_2018$seekdur<=2),]
Q4_2018_tr_buv<-Q4_2018_tr_buv[which(Q4_2018_tr_buv$wstator==1),]

#61 identifikuotų

Q1_2018_ilg_buv$hhnum
Q2_2018_ilg_buv$hhnum
Q3_2018_ilg_buv$hhnum
Q4_2018_ilg_buv$hhnum

Q1_2018_tr_buv$hhnum
Q2_2018_tr_buv$hhnum
Q3_2018_tr_buv$hhnum
Q4_2018_tr_buv$hhnum

Q1_2017_ilg_buv<-Q1_2017[which(Q1_2017$seekdur==3),]
Q1_2017_ilg_buv<-Q1_2017_ilg_buv[which(Q1_2017_ilg_buv$wstator==1),]

#43 identifikuotų

Q1_2017_tr_buv<-Q1_2017[which(Q1_2017$seekdur<=2),]
Q1_2017_tr_buv<-Q1_2017_tr_buv[which(Q1_2017_tr_buv$wstator==1),]

#67 identifikuotų

Q2_2017_ilg_buv<-Q2_2017[which(Q2_2017$seekdur==3),]
Q2_2017_ilg_buv<-Q2_2017_ilg_buv[which(Q2_2017_ilg_buv$wstator==1),]

#41 identifikuotų

Q2_2017_tr_buv<-Q2_2017[which(Q2_2017$seekdur<=2),]
Q2_2017_tr_buv<-Q2_2017_tr_buv[which(Q2_2017_tr_buv$wstator==1),]

#76 identifikuotų

Q3_2017_ilg_buv<-Q3_2017[which(Q3_2017$seekdur==3),]
Q3_2017_ilg_buv<-Q3_2017_ilg_buv[which(Q3_2017_ilg_buv$wstator==1),]

#28 identifikuotų

Q3_2017_tr_buv<-Q3_2017[which(Q3_2017$seekdur<=2),]
Q3_2017_tr_buv<-Q3_2017_tr_buv[which(Q3_2017_tr_buv$wstator==1),]

#80 identifikuotų

Q4_2017_ilg_buv<-Q4_2017[which(Q4_2017$seekdur==3),]
Q4_2017_ilg_buv<-Q4_2017_ilg_buv[which(Q4_2017_ilg_buv$wstator==1),]

#16 identifikuotų

Q4_2017_tr_buv<-Q4_2017[which(Q4_2017$seekdur<=2),]
Q4_2017_tr_buv<-Q4_2017_tr_buv[which(Q4_2017_tr_buv$wstator==1),]

#74 identifikuotų

Q1_2017_ilg_buv$hhnum
Q2_2017_ilg_buv$hhnum
Q3_2017_ilg_buv$hhnum
Q4_2017_ilg_buv$hhnum

Q1_2017_tr_buv$hhnum
Q2_2017_tr_buv$hhnum
Q3_2017_tr_buv$hhnum
Q4_2017_tr_buv$hhnum

Q1_2016_ilg_buv<-Q1_2016[which(Q1_2016$seekdur==3),]
Q1_2016_ilg_buv<-Q1_2016_ilg_buv[which(Q1_2016_ilg_buv$wstator==1),]

#47 identifikuotų

Q1_2016_tr_buv<-Q1_2016[which(Q1_2016$seekdur<=2),]
Q1_2016_tr_buv<-Q1_2016_tr_buv[which(Q1_2016_tr_buv$wstator==1),]

#10 identifikuotų

Q2_2016_ilg_buv<-Q2_2016[which(Q2_2016$seekdur==3),]
Q2_2016_ilg_buv<-Q2_2016_ilg_buv[which(Q2_2016_ilg_buv$wstator==1),]

#37 identifikuotų

Q2_2016_tr_buv<-Q2_2016[which(Q2_2016$seekdur<=2),]
Q2_2016_tr_buv<-Q2_2016_tr_buv[which(Q2_2016_tr_buv$wstator==1),]

#82 identifikuotų


Q3_2016_ilg_buv<-Q3_2016[which(Q3_2016$seekdur==3),]
Q3_2016_ilg_buv<-Q3_2016_ilg_buv[which(Q3_2016_ilg_buv$wstator==1),]

#32 identifikuotų

Q3_2016_tr_buv<-Q3_2016[which(Q3_2016$seekdur<=2),]
Q3_2016_tr_buv<-Q3_2016_tr_buv[which(Q3_2016_tr_buv$wstator==1),]

#69 identifikuotų

Q4_2016_ilg_buv<-Q4_2016[which(Q4_2016$seekdur==3),]
Q4_2016_ilg_buv<-Q4_2016_ilg_buv[which(Q4_2016_ilg_buv$wstator==1),]

#30 identifikuotų

Q4_2016_tr_buv<-Q4_2016[which(Q4_2016$seekdur<=2),]
Q4_2016_tr_buv<-Q4_2016_tr_buv[which(Q4_2016_tr_buv$wstator==1),]

#59 identifikuotų

Q1_2016_ilg_buv$hhnum
Q2_2016_ilg_buv$hhnum
Q3_2016_ilg_buv$hhnum
Q4_2016_ilg_buv$hhnum

Q1_2016_tr_buv$hhnum
Q2_2016_tr_buv$hhnum
Q3_2016_tr_buv$hhnum
Q4_2016_tr_buv$hhnum


Q1_2015_ilg_buv<-Q1_2015[which(Q1_2015$seekdur==3),]
Q1_2015_ilg_buv<-Q1_2015_ilg_buv[which(Q1_2015_ilg_buv$wstator==1),]

#39 identifikuotų

Q1_2015_tr_buv<-Q1_2015[which(Q1_2015$seekdur<=2),]
Q1_2015_tr_buv<-Q1_2015_tr_buv[which(Q1_2015_tr_buv$wstator==1),]

#89 identifikuotų

Q2_2015_ilg_buv<-Q2_2015[which(Q2_2015$seekdur==3),]
Q2_2015_ilg_buv<-Q2_2015_ilg_buv[which(Q2_2015_ilg_buv$wstator==1),]

#44 identifikuotų

Q2_2015_tr_buv<-Q2_2015[which(Q2_2015$seekdur<=2),]
Q2_2015_tr_buv<-Q2_2015_tr_buv[which(Q2_2015_tr_buv$wstator==1),]

#89 identifikuotų

Q3_2015_ilg_buv<-Q3_2015[which(Q3_2015$seekdur==3),]
Q3_2015_ilg_buv<-Q3_2015_ilg_buv[which(Q3_2015_ilg_buv$wstator==1),]

#40 identifikuotų

Q3_2015_tr_buv<-Q3_2015[which(Q3_2015$seekdur<=2),]
Q3_2015_tr_buv<-Q3_2015_tr_buv[which(Q3_2015_tr_buv$wstator==1),]

#83 identifikuotų

Q4_2015_ilg_buv<-Q4_2015[which(Q4_2015$seekdur==3),]
Q4_2015_ilg_buv<-Q4_2015_ilg_buv[which(Q4_2015_ilg_buv$wstator==1),]

#45 identifikuotų

Q4_2015_tr_buv<-Q4_2015[which(Q4_2015$seekdur<=2),]
Q4_2015_tr_buv<-Q4_2015_tr_buv[which(Q4_2015_tr_buv$wstator==1),]

#80 identifikuotų


Q1_2015_ilg_buv$hhnum
Q2_2015_ilg_buv$hhnum
Q3_2015_ilg_buv$hhnum
Q4_2015_ilg_buv$hhnum

Q1_2015_tr_buv$hhnum
Q2_2015_tr_buv$hhnum
Q3_2015_tr_buv$hhnum
Q4_2015_tr_buv$hhnum
