Q4_2022<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2022m_Q4_uzimtumas.csv")

Q4_2022<-Q4_2022[which(Q4_2022$intwave==1),]
Q4_2022<-Q4_2022[which(Q4_2022$wkstat==2),]
Q4_2022_ilg<-Q4_2022[which(Q4_2022$seekdur==3),]
#34

Q2_2022<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2022m_Q2_uzimtumas.csv")

Q2_2022<-Q2_2022[which(Q2_2022$intwave==1),]
Q2_2022<-Q2_2022[which(Q2_2022$wkstat==2),]
Q2_2022_ilg<-Q2_2022[which(Q2_2022$seekdur==3),]

#40

Q3_2022<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2022m_Q3_uzimtumas.csv")

Q3_2022<-Q3_2022[which(Q3_2022$intwave==1),]
Q3_2022<-Q3_2022[which(Q3_2022$wkstat==2),]
Q3_2022_ilg<-Q3_2022[which(Q3_2022$seekdur==3),]
#32

Q1_2022<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2022m_Q1_uzimtumas.csv")

Q1_2022<-Q1_2022[which(Q1_2022$intwave==1),]
Q1_2022<-Q1_2022[which(Q1_2022$wkstat==2),]
Q1_2022_ilg<-Q1_2022[which(Q1_2022$seekdur==3),]
#44

Q1_2022_ilg$hhnum
Q2_2022_ilg$hhnum
Q3_2022_ilg$hhnum
Q4_2022_ilg$hhnum


Q4_2021<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2021m_Q4_uzimtumas.csv")

Q4_2021<-Q4_2021[which(Q4_2021$intwave==1),]
Q4_2021<-Q4_2021[which(Q4_2021$wkstat==2),]
Q4_2021_ilg<-Q4_2021[which(Q4_2021$seekdur==3),]


Q2_2021<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2021_2.csv")

Q2_2021<-Q2_2021[which(Q2_2021$intwave==1),]
Q2_2021<-Q2_2021[which(Q2_2021$wkstat==2),]
Q2_2021_ilg<-Q2_2021[which(Q2_2021$seekdur==3),]



Q3_2021<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2021m_Q3_uzimtumas.csv")

Q3_2021<-Q3_2021[which(Q3_2021$intwave==1),]
Q3_2021<-Q3_2021[which(Q3_2021$wkstat==2),]
Q3_2021_ilg<-Q3_2021[which(Q3_2021$seekdur==3),]


Q1_2021<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2021m_Q1_uzimtumas.csv")

Q1_2021<-Q1_2021[which(Q1_2021$intwave==1),]
Q1_2021<-Q1_2021[which(Q1_2021$wkstat==2),]
Q1_2021_ilg<-Q1_2021[which(Q1_2021$seekdur==3),]




Q4_2020<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2020_4.csv")

Q4_2020<-Q4_2020[which(Q4_2020$intwave==1),]
Q4_2020<-Q4_2020[which(Q4_2020$wstator==2),]
Q4_2020_ilg<-Q4_2020[which(Q4_2020$seekdur==3),]


Q2_2020<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2020_2.csv")

Q2_2020<-Q2_2020[which(Q2_2020$intwave==1),]
Q2_2020<-Q2_2020[which(Q2_2020$wstator==2),]
Q2_2020_ilg<-Q2_2020[which(Q2_2020$seekdur==3),]


Q3_2020<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2020_3.csv")

Q3_2020<-Q3_2020[which(Q3_2020$intwave==1),]
Q3_2020<-Q3_2020[which(Q3_2020$wstator==2),]
Q3_2020_ilg<-Q3_2020[which(Q3_2020$seekdur==3),]



Q1_2020<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2020_1.csv")

Q1_2020<-Q1_2020[which(Q1_2020$intwave==1),]
Q1_2020<-Q1_2020[which(Q1_2020$wstator==2),]
Q1_2020_ilg<-Q1_2020[which(Q1_2020$seekdur==3),]


Q1_2020_ilg$hhnum
Q2_2020_ilg$hhnum
Q3_2020_ilg$hhnum
Q4_2020_ilg$hhnum


Q1_2019<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2019_1.csv")

Q1_2019<-Q1_2019[which(Q1_2019$intwave==1),]
Q1_2019<-Q1_2019[which(Q1_2019$wstator==2),]
Q1_2019_ilg<-Q1_2019[which(Q1_2019$seekdur==3),]


Q2_2019<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2019_2.csv")

Q2_2019<-Q2_2019[which(Q2_2019$intwave==1),]
Q2_2019<-Q2_2019[which(Q2_2019$wstator==2),]
Q2_2019_ilg<-Q2_2019[which(Q2_2019$seekdur==3),]


Q3_2019<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2019_3.csv")

Q3_2019<-Q3_2019[which(Q3_2019$intwave==1),]
Q3_2019<-Q3_2019[which(Q3_2019$wstator==2),]
Q3_2019_ilg<-Q3_2019[which(Q3_2019$seekdur==3),]


Q4_2019<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2019_4.csv")

Q4_2019<-Q4_2019[which(Q4_2019$intwave==1),]
Q4_2019<-Q4_2019[which(Q4_2019$wstator==2),]
Q4_2019_ilg<-Q4_2019[which(Q4_2019$seekdur==3),]



Q1_2019_ilg$hhnum
Q2_2019_ilg$hhnum
Q3_2019_ilg$hhnum
Q4_2019_ilg$hhnum


Q1_2018<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2018_1.csv")

Q1_2018<-Q1_2018[which(Q1_2018$intwave==1),]
Q1_2018<-Q1_2018[which(Q1_2018$wstator==2),]
Q1_2018_ilg<-Q1_2018[which(Q1_2018$seekdur==3),]

Q2_2018<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2018_2.csv")

Q2_2018<-Q2_2018[which(Q2_2018$intwave==1),]
Q2_2018<-Q2_2018[which(Q2_2018$wstator==2),]
Q2_2018_ilg<-Q2_2018[which(Q2_2018$seekdur==3),]
Q2_2018_ilg$hhnum

Q3_2018<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2018_3.csv")

Q3_2018<-Q3_2018[which(Q3_2018$intwave==1),]
Q3_2018<-Q3_2018[which(Q3_2018$wstator==2),]
Q3_2018_ilg<-Q3_2018[which(Q3_2018$seekdur==3),]



Q4_2018<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2018_4.csv")

Q4_2018<-Q4_2018[which(Q4_2018$intwave==1),]
Q4_2018<-Q4_2018[which(Q4_2018$wstator==2),]
Q4_2018_ilg<-Q4_2018[which(Q4_2018$seekdur==3),]



Q1_2018_ilg$hhnum
Q2_2018_ilg$hhnum
Q3_2018_ilg$hhnum
Q4_2018_ilg$hhnum


Q1_2017<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2017_1.csv")

Q1_2017<-Q1_2017[which(Q1_2017$intwave==1),]
Q1_2017<-Q1_2017[which(Q1_2017$wstator==2),]
Q1_2017_ilg<-Q1_2017[which(Q1_2017$seekdur==3),]


Q2_2017<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2017_2.csv")

Q2_2017<-Q2_2017[which(Q2_2017$intwave==1),]
Q2_2017<-Q2_2017[which(Q2_2017$wstator==2),]
Q2_2017_ilg<-Q2_2017[which(Q2_2017$seekdur==3),]



Q3_2017<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2017_3.csv")

Q3_2017<-Q3_2017[which(Q3_2017$intwave==1),]
Q3_2017<-Q3_2017[which(Q3_2017$wstator==2),]
Q3_2017_ilg<-Q3_2017[which(Q3_2017$seekdur==3),]



Q4_2017<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2017_4.csv")

Q4_2017<-Q4_2017[which(Q4_2017$intwave==1),]
Q4_2017<-Q4_2017[which(Q4_2017$wstator==2),]
Q4_2017_ilg<-Q4_2017[which(Q4_2017$seekdur==3),]



Q1_2017_ilg$hhnum
Q2_2017_ilg$hhnum
Q3_2017_ilg$hhnum
Q4_2017_ilg$hhnum


Q1_2016<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2016_1.csv")

Q1_2016<-Q1_2016[which(Q1_2016$intwave==1),]
Q1_2016<-Q1_2016[which(Q1_2016$wstator==2),]
Q1_2016_ilg<-Q1_2016[which(Q1_2016$seekdur==3),]


Q2_2016<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2016_2.csv")

Q2_2016<-Q2_2016[which(Q2_2016$intwave==1),]
Q2_2016<-Q2_2016[which(Q2_2016$wstator==2),]
Q2_2016_ilg<-Q2_2016[which(Q2_2016$seekdur==3),]


Q3_2016<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2016_3.csv")

Q3_2016<-Q3_2016[which(Q3_2016$intwave==1),]
Q3_2016<-Q3_2016[which(Q3_2016$wstator==2),]
Q3_2016_ilg<-Q3_2016[which(Q3_2016$seekdur==3),]


Q4_2016<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2016_4.csv")

Q4_2016<-Q4_2016[which(Q4_2016$intwave==1),]
Q4_2016<-Q4_2016[which(Q4_2016$wstator==2),]
Q4_2016_ilg<-Q4_2016[which(Q4_2016$seekdur==3),]



Q1_2016_ilg$hhnum
Q2_2016_ilg$hhnum
Q3_2016_ilg$hhnum
Q4_2016_ilg$hhnum


Q1_2015<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2015_1.csv")

Q1_2015<-Q1_2015[which(Q1_2015$intwave==1),]
Q1_2015<-Q1_2015[which(Q1_2015$wstator==2),]
Q1_2015_ilg<-Q1_2015[which(Q1_2015$seekdur==3),]



Q2_2015<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2015_2.csv")

Q2_2015<-Q2_2015[which(Q2_2015$intwave==1),]
Q2_2015<-Q2_2015[which(Q2_2015$wstator==2),]
Q2_2015_ilg<-Q2_2015[which(Q2_2015$seekdur==3),]



Q3_2015<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2015_3.csv")

Q3_2015<-Q3_2015[which(Q3_2015$intwave==1),]
Q3_2015<-Q3_2015[which(Q3_2015$wstator==2),]
Q3_2015_ilg<-Q3_2015[which(Q3_2015$seekdur==3),]



Q4_2015<-read.csv("~/Documents/Baigiamojo darbo tyrimas/Duomenys/2015_4.csv")

Q4_2015<-Q4_2015[which(Q4_2015$intwave==1),]
Q4_2015<-Q4_2015[which(Q4_2015$wstator==2),]
Q4_2015_ilg<-Q4_2015[which(Q4_2015$seekdur==3),]



Q1_2015_ilg$hhnum
Q2_2015_ilg$hhnum
Q3_2015_ilg$hhnum
Q4_2015_ilg$hhnum

