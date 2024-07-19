Q2_2018_ilg=subset(Q2_2018_ilg,select=-c(posorgwt,
                                         posstend,
                                         workobs,
                                         chcareff,
                                         deredstp,
                                         stopleng,
                                         parleav,
                                         chcaruse,
                                         stopwork,
                                         careres,
                                         chcarobs))

il_2019<-rbind(Q1_2019_ilg,Q2_2019_ilg,Q3_2019_ilg,Q4_2019_ilg)
il_2019=subset(il_2019,select=-c(posorgwt,
                                 posstend,
                                 workobs,
                                 chcareff,
                                 deredstp,
                                 stopleng,
                                 parleav,
                                 chcaruse,
                                 stopwork,
                                 careres,
                                 chcarobs))

#ILGALAIKIAI BEDARBIAI
il_2015<-rbind(Q1_2015_ilg,Q2_2015_ilg,Q3_2015_ilg,Q4_2015_ilg)
il_2016<-rbind(Q1_2016_ilg,Q2_2016_ilg,Q3_2016_ilg,Q4_2016_ilg)
il_2017<-rbind(Q1_2017_ilg,Q2_2017_ilg,Q3_2017_ilg,Q4_2017_ilg)
il_2018<-rbind(Q1_2018_ilg,Q2_2018_ilg,Q3_2018_ilg,Q4_2018_ilg)
il_2020<-rbind(Q1_2020_ilg,Q2_2020_ilg,Q3_2020_ilg,Q4_2020_ilg)
il_2020$age

il_2021<-rbind(Q1_2021_ilg,Q2_2021_ilg,Q3_2021_ilg,Q4_2021_ilg)
il_2022<-rbind(Q1_2022_ilg,Q2_2022_ilg,Q3_2022_ilg,Q4_2022_ilg)
il_2022=subset(il_2022,select = -c(findmeth,gali,genhealth))
names(il_2022)[names(il_2022) == "ObjectId"] <- "objectid"
compare_df_cols(il_2021,il_2022,return = "mismatch", bind_method = "rbind")
il_21_22<-rbind(il_2021,il_2022)
il_21_22$y <- ifelse(il_21_22$wkstat==2 , 1, 0)
il_2021_2022=subset(il_21_22,select = c(y,
                                      hhnum,
                                      coeff,
                                      age,
                                      sex,
                                      citizenship,
                                      region,
                                      hatlevel,
                                      hatfield,
                                      existpr,
                                      iscopr3d,
                                      isco4d,
                                      seekdur,
                                      availble,
                                      register,
                                      educfed4,
                                      nacepr2d,
                                      nace3d,
                                      yearpr,
                                      leavreas
                                      ))
il_2021_2022<-subset(il_2021_2022, !duplicated(subset(il_2021_2022, select=c(hhnum))))
compare_df_cols(il_2021_2022,LT_data_mod,return = "mismatch", bind_method = "rbind")
names(il_2021_2022)[names(il_2021_2022) == "citizenship"] <- "national_"
names(il_2021_2022)[names(il_2021_2022) == "educfed4"] <- "educstat"


LT_il_bedarbiai<-rbind(il_2015,il_2016,il_2017,il_2018,il_2019,il_2020)

LT_il_bed_unikalus<-subset(LT_il_bedarbiai, !duplicated(subset(LT_il_bedarbiai, select=c(hhnum))))

LT_il_bed_unikalus$nace3d

#LT_il_bed_unikalus$seekdur
#LT_il_bed_unikalus<-LT_il_bed_unikalus %>%
#  mutate(seekdur=recode(seekdur,'3'= 1))

#BUVĘ BEDARBIAI, KURIEMS PAVYKO ĮSIDARBINTI
Q2_2018_ilg_buv=subset(Q2_2018_ilg_buv,select=-c(posorgwt,
                                                 posstend,
                                                 workobs,
                                                 chcareff,
                                                 deredstp,
                                                 stopleng,
                                                 parleav,
                                                 chcaruse,
                                                 stopwork,
                                                 careres,
                                                 chcarobs))
Q4_2020_ilg_buv$intwave__________________

names(Q4_2020_ilg_buv)[names(Q4_2020_ilg_buv) == "intwave__________________"] <- "intwave"

Q2_2018_tr_buv=subset(Q2_2018_tr_buv,select=-c(posorgwt,
                                               posstend,
                                               workobs,
                                               chcareff,
                                               deredstp,
                                               stopleng,
                                               parleav,
                                               chcaruse,
                                               stopwork,
                                               careres,
                                               chcarobs))

names(Q4_2020_tr_buv)[names(Q4_2020_tr_buv) == "intwave__________________"] <- "intwave"


il_2015_buv<-rbind(Q1_2015_ilg_buv,Q2_2015_ilg_buv,Q3_2015_ilg_buv,Q4_2015_ilg_buv)
il_2016_buv<-rbind(Q1_2016_ilg_buv,Q2_2016_ilg_buv,Q3_2016_ilg_buv,Q4_2016_ilg_buv)
il_2017_buv<-rbind(Q1_2017_ilg_buv,Q2_2017_ilg_buv,Q3_2017_ilg_buv,Q4_2017_ilg_buv)
il_2018_buv<-rbind(Q1_2018_ilg_buv,Q2_2018_ilg_buv,Q3_2018_ilg_buv,Q4_2018_ilg_buv)
il_2019_buv<-rbind(Q1_2019_ilg_buv,Q2_2019_ilg_buv,Q3_2019_ilg_buv,Q4_2019_ilg_buv)
il_2020_buv<-rbind(Q1_2020_ilg_buv,Q2_2020_ilg_buv,Q3_2020_ilg_buv,Q4_2020_ilg_buv)

tr_2015_buv<-rbind(Q1_2015_tr_buv,Q2_2015_tr_buv,Q3_2015_tr_buv,Q4_2015_tr_buv)
tr_2016_buv<-rbind(Q1_2016_tr_buv,Q2_2016_tr_buv,Q3_2016_tr_buv,Q4_2016_tr_buv)
tr_2017_buv<-rbind(Q1_2017_tr_buv,Q2_2017_tr_buv,Q3_2017_tr_buv,Q4_2017_tr_buv)
tr_2018_buv<-rbind(Q1_2018_tr_buv,Q2_2018_tr_buv,Q3_2018_tr_buv,Q4_2018_tr_buv)
tr_2019_buv<-rbind(Q1_2019_tr_buv,Q2_2019_tr_buv,Q3_2019_tr_buv,Q4_2019_tr_buv)
tr_2020_buv<-rbind(Q1_2020_tr_buv,Q2_2020_tr_buv,Q3_2020_tr_buv,Q4_2020_tr_buv)

tr_2019_buv=subset(tr_2019_buv,select=-c(posorgwt,
                                 posstend,
                                 workobs,
                                 chcareff,
                                 deredstp,
                                 stopleng,
                                 parleav,
                                 chcaruse,
                                 stopwork,
                                 careres,
                                 chcarobs))

il_2019_buv=subset(il_2019_buv,select=-c(posorgwt,
                                         posstend,
                                         workobs,
                                         chcareff,
                                         deredstp,
                                         stopleng,
                                         parleav,
                                         chcaruse,
                                         stopwork,
                                         careres,
                                         chcarobs))

LT_il_tr_bedarbiai_buv<-rbind(tr_2015_buv,tr_2016_buv,tr_2017_buv,tr_2018_buv,tr_2019_buv,tr_2020_buv,il_2015_buv,
                              il_2016_buv,il_2017_buv,il_2018_buv,il_2019_buv,il_2020_buv)

LT_il_tr_bed_buv_unikalus<-subset(LT_il_tr_bedarbiai_buv, !duplicated(subset(LT_il_tr_bedarbiai_buv, select=c(hhnum))))

library(xlsx)
un=subset(LT_il_tr_bed_buv_unikalus,select = c(hhnum))
write.xlsx(un, file = "un.xlsx")

LT_il_tr_bed_buv_unikalus[LT_il_tr_bed_buv_unikalus$hhnum %in% c('98311','98351','98951'),]

#LT_il_tr_bed_buv_unikalus$seekdur
#library(dplyr)
#LT_il_tr_bed_buv_unikalus<-LT_il_tr_bed_buv_unikalus %>%
#  mutate(seekdur=recode(seekdur,'1'=0,'2'=0,'3'=0))

typeof(LT_il_tr_bed_buv_unikalus$seekdur)
#ILGALAIKIAI BEDARBIAI IR ĮSIDARBINĘ BUVĘ BEDARBIAI
LT_data<-rbind(LT_il_bed_unikalus,LT_il_tr_bed_buv_unikalus)

#priklausomo kintamojo pasiskirstymas atitinka
LT_data %>% count(LT_data$seekdur)

LT_data$y <- ifelse(LT_data$wstator==2 , 1, 0)

LT_il_bed_unikalus %>% count(LT_il_bed_unikalus$wstator)

LT_il_tr_bed_buv_unikalus %>% count(LT_il_tr_bed_buv_unikalus$wstator)

#NAUJAS KINTAMASIS <-PRIKLAUSOMAS MODELIUOSE
LT_data$y <- ifelse(LT_data$wstator==2 , 1, 0)
LT_data %>% count(LT_data$y)

#REIKALINGŲ KINTAMŲJŲ PASILIKIMAS MODELIAMS (priklausomas ir nepriklausomi)
#su subset atrenkam, po to rename(dplyr) pervadinam

colnames(LT_data)
colnames(Q3_2022)
colnames(Q3_2021)


library(janitor)
compare_df_cols(LT_data,Q3_2022)
compare_df_cols(LT_data,Q3_2022,return = "mismatch", bind_method = "rbind")
#National=Citizenship; Educstat=Educfed4, Wsrtator=wkstat
#2019 yra ar lankė kursus (COURATT), valandų sk. tam skirtas (COURLEN); COURATT artimiausias yra EDUCFED4 ir EDUCNFE4 (EDUCFED14), EDUCLEVL; MARSTAT
#2022 yra tėvo (cobfath) ir motinos (cobmoth) gimimo šalis; findmeth (veiksmingiausias būdas darbui susirasti); su sveikata susiję (gali, genhealth)
#2022 findmeth, o 2019 method_ (išskaidyta)
#2022 wantwork (asmens noras dirbti, net ir neieškančio darbo)

compare_df_cols(Q3_2022,Q3_2021)
compare_df_cols(Q3_2022,Q3_2021,return = "mismatch", bind_method = "rbind")
#2021 nėra apie sveikatą, findmeth


compare_df_cols(LT_data,Q3_2021)
compare_df_cols(LT_data,Q3_2021,return = "mismatch", bind_method = "rbind")
#2021 method_ nėra
#National=Citizenship;
#2021 yra tėvo (cobfath) ir motinos (cobmoth) gimimo šalis;
#2019 yra ar lankė kursus (COURATT), valandų sk. tam skirtas (COURLEN);

#DUOMENYS MODELIAMS (PRIKLAUSOMAS+NEPRIKLAUSOMI)
LT_data_mod=subset(LT_data,select = c(y,
                                      hhnum,
                                      coeff,
                                      age,
                                      sex,
                                      marstat,
                                      national_,
                                      region,
                                      hatlevel,
                                      hatvoc,
                                      hatfield,
                                      existpr,
                                      iscopr3d,
                                      isco4d,
                                      seekdur,
                                      availble,
                                      register,
                                      educstat,
                                      courlen,
                                      couratt,
                                      nacepr2d,
                                      nace3d,
                                      yearpr,
                                      leavreas,
                                      methoda,
                                      methodb,
                                      methodc,
                                      methodd,
                                      methode,
                                      methodf,
                                      methodm))

summary(LT_data_mod)

#DUOMENŲ PERKODAVIMAS
library(dplyr)
LT_data_mod$region<-dplyr::recode(LT_data_mod$region,"001"="1","002"="2","003"="3",
                           "004"="4","005"="5","006"="6","007"="7","008"="8","009"="9",'00A'="10", 
                           "21"="1","22"="2","23"="3",
                           "24"="4","25"="5","26"="6","27"="7","28"="8","29"="9",'11'="10")

LT_data_mod %>% count(LT_data_mod$region)

LT_data_mod %>% count(LT_data_mod$national_)
LT_data_mod$national_<-dplyr::recode(LT_data_mod$national_,"00" = "0","LT" = "1")

LT_data_mod %>% count(LT_data_mod$nacepr2d)
LT_data_mod$nacepr2d<-dplyr::recode(LT_data_mod$nacepr2d,"000" = "0","0" = "0","A" = "1","B_E" = "2",
                                    "F" = "3","G_J" = "4","K_N" = "5","O_U" = "6")
LT_data_mod$nace3d<-dplyr::recode(LT_data_mod$nace3d,"000" = "0","A" = "1","B_E" = "2",
                                    "F" = "3","G_J" = "4","K_N" = "5","O_U" = "6")

LT_data_mod %>% count(LT_data_mod$iscopr3d)
LT_data_mod$iscopr3d<-dplyr::recode(LT_data_mod$iscopr3d,"9_0" = "9","99" = "0")

LT_data_mod %>% count(LT_data_mod$isco4d)
LT_data_mod$isco4d<-dplyr::recode(LT_data_mod$isco4d,"9_0" = "9","99" = "0")
table(LT_data_mod$isco4d)
LT_data_mod %>% count(LT_data_mod$hatfield)
LT_data_mod$hatfield<-dplyr::recode(LT_data_mod$hatfield,"0"="0","100" = "1","200" = "2","300" = "3","400" = "4",
                                    "500" = "5","600" = "6","700" = "7","800" = "8","900" = "9","1000" = "10","9999" = "11")

LT_data_mod %>% count(LT_data_mod$leavreas)


LT_data_iki_2020=subset(LT_data_mod,select = c(y,
                                      hhnum,
                                      coeff,
                                      age,
                                      sex,
                                      national_,
                                      region,
                                      hatlevel,
                                      hatfield,
                                      existpr,
                                      iscopr3d,
                                      isco4d,
                                      seekdur,
                                      availble,
                                      register,
                                      educstat,
                                      nacepr2d,
                                      nace3d,
                                      yearpr,
                                      leavreas))
compare_df_cols(LT_data_iki_2020,il_2021_2022,return = "mismatch", bind_method = "rbind")
il_2021_2022 %>% count(il_2021_2022$leavreas)
il_2021_2022$leavreas<-dplyr::recode(il_2021_2022$leavreas,"1" = "0","2" = "1","3" = "2","4" = "3",
                                    "5" = "4","6" = "5")

LT_data_mod_2022<-rbind(LT_data_iki_2020,il_2021_2022)

LT_data_mod_2022<-subset(LT_data_mod_2022, !duplicated(subset(LT_data_mod_2022, select=c(hhnum))))


library(dplyr)
LT_data_mod_2022$region<-dplyr::recode(LT_data_mod_2022$region,"001"="1","002"="2","003"="3",
                                  "004"="4","005"="5","006"="6","007"="7","008"="8","009"="9",'00A'="10", 
                                  "21"="1","22"="2","23"="3",
                                  "24"="4","25"="5","26"="6","27"="7","28"="8","29"="9",'11'="10")

LT_data_mod_2022%>% count(LT_data_mod_2022$region)

LT_data_mod_2022 %>% count(LT_data_mod_2022$national_)
LT_data_mod$national_<-dplyr::recode(LT_data_mod$national_,"00" = "0","LT" = "1")

LT_data_mod_2022 %>% count(LT_data_mod_2022$nacepr2d)
LT_data_mod_2022$nacepr2d<-dplyr::recode(LT_data_mod_2022$nacepr2d,"000" = "0","0" = "0","A" = "1","B_E" = "2",
                                    "F" = "3","G_J" = "4","K_N" = "5","O_U" = "6","  A" = "1","  F" = "3")
table(LT_data_mod_2022$nacepr2d)
table(il_2021_2022$nacepr2d)
table(LT_data_iki_2020$nacepr2d)

LT_data_mod_2022 %>% count(LT_data_mod_2022$nace3d)
LT_data_mod_2022$nace3d<-dplyr::recode(LT_data_mod_2022$nace3d,"000" = "0","0" = "0","A" = "1","B_E" = "2",
                                         "F" = "3","G_J" = "4","K_N" = "5","O_U" = "6")

LT_data_mod_2022 %>% count(LT_data_mod_2022$iscopr3d)
LT_data_mod_2022$iscopr3d<-dplyr::recode(LT_data_mod_2022$iscopr3d,"9_0" = "9","99" = "0"," 99" = "0","  1" = "1",
                                         "  2" = "2","  3" = "3","  4" = "4","  5" = "5","  6" = "6","  7" = "7","  8" = "8")
table(LT_data_mod_2022$iscopr3d)
table(il_2021_2022$iscopr3d)
LT_data_mod_2022 %>% count(LT_data_mod_2022$isco4d)
LT_data_mod_2022$isco4d<-dplyr::recode(LT_data_mod_2022$isco4d,"9_0" = "9","99" = "0"," 99" = "0")
table(LT_data_mod_2022$isco4d)

LT_data_mod_2022 %>% count(LT_data_mod_2022$hatfield)
LT_data_mod_2022$hatfield<-dplyr::recode(LT_data_mod_2022$hatfield,"0"="0","100" = "1","200" = "2","300" = "3","400" = "4",
                                    "500" = "5","600" = "6","700" = "7","800" = "8","900" = "9","1000" = "10","9999" = "11")

table(LT_data_mod_2022$hatfield)
library(tibble)
LT_data_mod_2022<-LT_data_mod_2022 %>%
  add_column(marstat=NA)
#-------ID HHNUM
gyv_uz<-read.csv("~/Downloads/GyvUzimtumas.csv")
gyv_uz_edited<-subset(gyv_uz,select=c(X_id,hhnum))

n_distinct(LT_data$hhnum)
hhnum_id<-merge(x=data_frame(LT_data),y=data_frame(gyv_uz_edited),by="hhnum",all.x = TRUE)
hhnum_id<-hhnum_id[!duplicated(hhnum_id$hhnum), ]
hhnum_id<-subset(hhnum_id,select = c(X_id,hhnum))

gyv_uz<-read.csv("~/Downloads/GyvUzimtumas.csv")
gyv_uz_edited<-subset(gyv_uz,select=c(X_id,hhnum))
gyv_uz_edited
gyv_uz_edited[gyv_uz_edited$hhnum==30078,]

n_distinct(LT_data_mod_2022$hhnum)
hhnum_id_22<-merge(x=data_frame(LT_data_mod_2022),y=data_frame(gyv_uz_edited),by="hhnum",all.x = TRUE)
hhnum_id_22<-merge(hhnum_id_22, gyv_uz_edited[, c("X_id", "hhnum")], by="hhnum")
hhnum_id_22<-hhnum_id_22[!duplicated(hhnum_id_22$hhnum), ]
hhnum_id_22<-subset(hhnum_id_22,select = c(X_id.x,hhnum))
write.csv(hhnum_id_22,"hhnum_id_2022.csv")
#------done

LT_data_mod$nace<-ifelse(LT_data_mod$nace3d=='0',LT_data_mod$nacepr2d, LT_data_mod$nace3d)
LT_data_mod$isco<-ifelse(LT_data_mod$isco4d=='0',LT_data_mod$iscopr3d, LT_data_mod$isco4d)

LT_data_mod=subset(LT_data_mod,select = -c(isco4d,iscopr3d,nace3d,nacepr2d))

LT_data_mod_2022$nace<-ifelse(LT_data_mod_2022$nace3d=='0',LT_data_mod_2022$nacepr2d, LT_data_mod_2022$nace3d)
LT_data_mod_2022$isco<-ifelse(LT_data_mod_2022$isco4d=='0',LT_data_mod_2022$iscopr3d, LT_data_mod_2022$isco4d)

LT_data_mod_2022=subset(LT_data_mod_2022,select = -c(isco4d,iscopr3d,nace3d,nacepr2d))
