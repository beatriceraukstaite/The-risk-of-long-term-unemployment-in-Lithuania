
#Amziaus itaka
#20-34 metu
new_data<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=1,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)
new_data<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=1,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)

new_data_log<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,nace_3=0,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")
new_data_log<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,nace_3=0,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")

new_data_probit<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")
new_data_probit<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")


#35-39 metu
new_data<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=1, age_7=0,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=1,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)
new_data<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=1, age_7=0,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=1,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)

new_data_log<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=1, age_7=0,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,nace_3=0,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")
new_data_log<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=1, age_7=0,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,nace_3=0,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")

new_data_probit<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=1, age_7=0,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")
new_data_probit<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=1, age_7=0,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")

#40-44 metu
new_data<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=1,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)
new_data<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=1,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)

new_data_log<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,nace_3=0,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")
new_data_log<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,nace_3=0,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")

new_data_probit<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")
new_data_probit<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")

#45-49 metu
new_data<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=0,age_8=1,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=1,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)
new_data<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=0,age_8=1,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=1,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)

new_data_log<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=0,age_8=1,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,nace_3=0,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")
new_data_log<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=0,age_8=1,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,nace_3=0,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")

new_data_probit<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=0,age_8=1,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")
new_data_probit<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=0,age_8=1,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")

#50-54 metu
new_data<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=1,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=1,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)
new_data<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=1,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=1,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)

new_data_log<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=1,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,nace_3=0,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")
new_data_log<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=1,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,nace_3=0,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")

new_data_probit<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=1,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")
new_data_probit<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=1,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")

#55-59 metu
new_data<-data_frame(age_10=1,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=1,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)
new_data<-data_frame(age_10=1,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=1,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)

new_data_log<-data_frame(age_10=1,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,nace_3=0,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")
new_data_log<-data_frame(age_10=1,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,nace_3=0,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")

new_data_probit<-data_frame(age_10=1,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")
new_data_probit<-data_frame(age_10=1,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")

#60-64 metu
new_data<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=0,age_11=1,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=1,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)
new_data<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=0,age_11=1,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=1,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)

new_data_log<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=0,age_11=1,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,nace_3=0,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")
new_data_log<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=0,age_11=1,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,nace_3=0,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")

new_data_probit<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=0,age_11=1,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")
new_data_probit<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=0,age_11=1,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")

#65-69 metu
new_data<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=0,age_11=0,age_12=1,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=1,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)
new_data<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=0,age_11=0,age_12=1,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=1,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)

new_data_log<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=0,age_11=0,age_12=1,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,nace_3=0,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")
new_data_log<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=0,age_11=0,age_12=1,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,nace_3=0,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")

new_data_probit<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=0,age_11=0,age_12=1,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")
new_data_probit<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=0,age_8=0,age_9=0,age_11=0,age_12=1,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")
