#šeimyninės padėties įtaka kiekvienam pagal lytį konkrečios profesijos atveju
#nevedę ir netekėjusios
#nace 1, isco 6
new_data<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=1,nace_4=0,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=0,isco_6=1,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)
new_data<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=1,nace_4=0,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=0,isco_6=1,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)

new_data_log<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=1,nace_4=0,nace_3=0,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=0,isco_6=1,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")
new_data_log<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=1,nace_4=0,nace_3=0,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=0,isco_6=1,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")

new_data_probit<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=1,nace_4=0,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=0,isco_6=1,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")
new_data_probit<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=1,nace_4=0,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=0,isco_6=1,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")

#nace 2, isco 7
new_data<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=0,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)
new_data<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=0,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)

new_data_log<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,nace_3=0,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=1,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")
new_data_log<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,nace_3=0,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=1,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")

new_data_probit<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=1,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")
new_data_probit<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=1,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")

#nace 3, isco 7
new_data<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=0,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)
new_data<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=0,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)

new_data_log<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,nace_3=1,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=1,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")
new_data_log<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,nace_3=1,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=1,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")

new_data_probit<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=1,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")
new_data_probit<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=1,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")

#nace 4, isco 5
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


#nace 5, isco 2
new_data<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                     nace_5=1,nace_6=0,isco_0=0,isco_5=0,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)
new_data<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                     nace_5=1,nace_6=0,isco_0=0,isco_5=1,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)

new_data_log<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,nace_3=0,
                         nace_5=1,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")
new_data_log<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,nace_3=0,
                         nace_5=1,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")

new_data_probit<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                            nace_5=1,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")
new_data_probit<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                            nace_5=1,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")

#nace 6, isco 2
new_data<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                     nace_5=0,nace_6=1,isco_0=0,isco_5=0,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)
new_data<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                     nace_5=0,nace_6=1,isco_0=0,isco_5=1,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)

new_data_log<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,nace_3=0,
                         nace_5=0,nace_6=1,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")
new_data_log<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,nace_3=0,
                         nace_5=0,nace_6=1,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")

new_data_probit<-data_frame(age_10=0,sex_2=0,marstat_2=0,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                            nace_5=0,nace_6=1,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")
new_data_probit<-data_frame(age_10=0,sex_2=1,marstat_2=0,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                            nace_5=0,nace_6=1,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")


#vedęs ir ištekėjusi
#nace 1, isco 6
new_data<-data_frame(age_10=0,sex_2=0,marstat_2=1,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=1,nace_4=0,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=0,isco_6=1,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)
new_data<-data_frame(age_10=0,sex_2=1,marstat_2=1,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=1,nace_4=0,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=0,isco_6=1,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)

new_data_log<-data_frame(age_10=0,sex_2=0,marstat_2=1,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=1,nace_4=0,nace_3=0,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=0,isco_6=1,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")
new_data_log<-data_frame(age_10=0,sex_2=1,marstat_2=1,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=1,nace_4=0,nace_3=0,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=0,isco_6=1,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")

new_data_probit<-data_frame(age_10=0,sex_2=0,marstat_2=1,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=1,nace_4=0,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=0,isco_6=1,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")
new_data_probit<-data_frame(age_10=0,sex_2=1,marstat_2=1,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=1,nace_4=0,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=0,isco_6=1,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")

#nace 2, isco 7
new_data<-data_frame(age_10=0,sex_2=0,marstat_2=1,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=0,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)
new_data<-data_frame(age_10=0,sex_2=1,marstat_2=1,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=0,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)

new_data_log<-data_frame(age_10=0,sex_2=0,marstat_2=1,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,nace_3=0,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=1,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")
new_data_log<-data_frame(age_10=0,sex_2=1,marstat_2=1,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,nace_3=0,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=1,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")

new_data_probit<-data_frame(age_10=0,sex_2=0,marstat_2=1,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=1,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")
new_data_probit<-data_frame(age_10=0,sex_2=1,marstat_2=1,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=1,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")

#nace 3, isco 7
new_data<-data_frame(age_10=0,sex_2=0,marstat_2=1,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=0,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)
new_data<-data_frame(age_10=0,sex_2=1,marstat_2=1,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=0,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)

new_data_log<-data_frame(age_10=0,sex_2=0,marstat_2=1,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,nace_3=1,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=1,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")
new_data_log<-data_frame(age_10=0,sex_2=1,marstat_2=1,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,nace_3=1,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=1,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")

new_data_probit<-data_frame(age_10=0,sex_2=0,marstat_2=1,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=1,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")
new_data_probit<-data_frame(age_10=0,sex_2=1,marstat_2=1,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=1,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")

#nace 4, isco 5
new_data<-data_frame(age_10=0,sex_2=0,marstat_2=1,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=1,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)
new_data<-data_frame(age_10=0,sex_2=1,marstat_2=1,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                     nace_5=0,nace_6=0,isco_0=0,isco_5=1,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)

new_data_log<-data_frame(age_10=0,sex_2=0,marstat_2=1,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,nace_3=0,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")
new_data_log<-data_frame(age_10=0,sex_2=1,marstat_2=1,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,nace_3=0,
                         nace_5=0,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")

new_data_probit<-data_frame(age_10=0,sex_2=0,marstat_2=1,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")
new_data_probit<-data_frame(age_10=0,sex_2=1,marstat_2=1,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=1,
                            nace_5=0,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=1,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")


#nace 5, isco 2
new_data<-data_frame(age_10=0,sex_2=0,marstat_2=1,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                     nace_5=1,nace_6=0,isco_0=0,isco_5=0,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)
new_data<-data_frame(age_10=0,sex_2=1,marstat_2=1,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                     nace_5=1,nace_6=0,isco_0=0,isco_5=0,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)

new_data_log<-data_frame(age_10=0,sex_2=0,marstat_2=1,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,nace_3=0,
                         nace_5=1,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")
new_data_log<-data_frame(age_10=0,sex_2=1,marstat_2=1,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,nace_3=0,
                         nace_5=1,nace_6=0,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")

new_data_probit<-data_frame(age_10=0,sex_2=0,marstat_2=1,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                            nace_5=1,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")
new_data_probit<-data_frame(age_10=0,sex_2=1,marstat_2=1,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                            nace_5=1,nace_6=0,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")

#nace 6, isco 2
new_data<-data_frame(age_10=0,sex_2=0,marstat_2=1,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                     nace_5=0,nace_6=1,isco_0=0,isco_5=0,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)
new_data<-data_frame(age_10=0,sex_2=1,marstat_2=1,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                     hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                     nace_5=0,nace_6=1,isco_0=0,isco_5=0,isco_6=0,isco_9=0, existpr_0=0, apskritys_1=1,apskritys_3=0,
                     apskritys_5=0
)
predict(model_lpm31, new_data)

new_data_log<-data_frame(age_10=0,sex_2=0,marstat_2=1,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,nace_3=0,
                         nace_5=0,nace_6=1,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")
new_data_log<-data_frame(age_10=0,sex_2=1,marstat_2=1,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                         hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,nace_3=0,
                         nace_5=0,nace_6=1,isco_1=0,
                         isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                         apskritys_5=0
)
predict(model_log31, new_data_log, type = "response")

new_data_probit<-data_frame(age_10=0,sex_2=0,marstat_2=1,I(sex_2*marstat_2)==0,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                            nace_5=0,nace_6=1,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")
new_data_probit<-data_frame(age_10=0,sex_2=1,marstat_2=1,I(sex_2*marstat_2)==1,hatlevel_3=0,age_6=0, age_7=1,age_8=0,age_9=0,age_11=0,age_12=0,
                            hatfield_8=0,hatfield_9=0,nace_1=0,nace_4=0,
                            nace_5=0,nace_6=1,isco_1=0,
                            isco_3=0,isco_4=0,isco_5=0,isco_6=0,isco_7=0,isco_8=0,apskritys_1=1,apskritys_3=0,
                            apskritys_5=0
)
predict(model_probit31, new_data_probit, type = "response")
