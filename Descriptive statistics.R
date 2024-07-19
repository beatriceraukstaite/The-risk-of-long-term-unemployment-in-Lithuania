library(dplyr)
summary(LT_D3)

LT_data_models<-na.omit(LT_data_mod)
table(LT_data_models$y)
table(LT_data_mod$y)

LT_data_models_2022<-na.omit(LT_data_mod_2022)
table(LT_data_models_2022$y)
#2 lentelės: iki 2020 metų ir iki 2022 metų

summary(LT_data_mod)
library(summarytools)
ctable(x=LT_data_mod$y,
       y=LT_data_mod$age,
       chisq=TRUE,
       headings = FALSE)

stby(
  list(x=LT_data_models$y,
       y=LT_data_models$age),
  INDICES = LT_data_models$sex,
  FUN = ctable) 
#vyrų ilgalaikių bedarbių daugiausiai yra 3-4 ir 8-10 amžiaus grupėse, o moterų tarpe 8-10 amžiaus grupėse (procentiškai 9 ir 10 grupėse matoma didesnė dalis, nei vyrų, t.y. akivaizdus skirtumas)
library(ggplot2)
ggplot(data=LT_data_models,aes(fill=y)) + 
  geom_bar( aes(x=age, y= sex) , stat = "identity") 

stby(
  LT_data_models,
  INDICES = LT_data_models$sex,
  FUN = descr,
  stats="common") 

barplot(table(LT_data_models$y))

library(Hmisc)
rcorr(as.matrix(LT_data_models))
typeof(LT_data_models)

plot(LT_data_models$existpr,LT_data_models$yearpr,xlim=c(1,2),ylim=c(1,9))
ggplot(LT_data_models, aes(x=LT_data_models$existpr, y=LT_data_models$yearpr))+ 
  geom_point()+ 
  xlim(0,2)+ 
  ylim(1,9)
table(LT_data_models$existpr)

library(tidyverse)
age_region<-LT_data_models %>%
  group_by(region)%>%
  summarise(m=mean(age))
ggplot(data = age_region,aes(m,reorder(region,m)))+
  geom_point(color="blue", size = 2)+ theme_minimal() + 
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())+
  geom_segment(aes(x = 7, 
                   xend = m, 
                   y = reorder(region, m), 
                   yend = reorder(region, m)),
               color = "lightgrey")+
  labs (x = "Amžiaus grupės",
        y = "LT Apskritys",
        title = "Vidutinės amžiaus grupės pagal Lietuvos apskritis")

typeof(LT_data_models$sex)

#pagal lytį!!!
library(ggplot2)
age_y_plot<-LT_data_models %>%
  group_by(age, y,sex)%>%
  summarise(v=n())

age_y_plot %>%
  filter(sex %in% c("1","2")) %>%
  ggplot(mapping=aes(age,group = sex)) +
  geom_density(aes(fill=factor(sex)),adjust=0.38, alpha=0.15)+
  facet_grid(y~.)+
  guides(fill=guide_legend(title = "Lytis"))+
  theme_bw()

vyr_age_y_plot
table(LT_data_models$age,LT_data_models$sex,LT_data_models$y)
library(ggridges)

#lievai
p<-age_y_plot %>%
  filter(sex %in% c("1","2")) %>%
  ggplot(mapping=aes(age)) +
  geom_density(aes(colour=factor(sex),fill=factor(sex)),adjust=0.38, alpha=0.15)+
  facet_grid(y~.)+
  guides(fill=guide_legend(title = "Lytis"))+
  theme_bw()
print(p)
typeof(vyr_age_y_plot$age)
as.character(vyr_age_y_plot$age)

ggplot(data=age_y_plot,mapping=aes(x=age,y=v)) +
  geom_bar(aes(x=age,y=v, fill=factor(sex)),stat="identity",alpha=0.2)+
  guides(fill=guide_legend(title = "Lytis"))+
  labs(x="Amžius",y="Kiekis")+
  theme_bw()+
  facet_grid(y~.)
#geriau

#pagal šeimyninę padėtį!!!
mar_y_plot<-LT_data_models %>%
  group_by(marstat,age,y)%>%
  summarise(v=n())

mar_y_plot %>%
  filter(marstat %in% c("1","2","3")) %>%
  ggplot(mapping=aes(age,group = marstat)) +
  geom_density(aes(fill=factor(marstat)),adjust=0.35, alpha=0.15)+
  facet_grid(y~.)+
  guides(fill=guide_legend(title = "Šeimyninė padėtis"))+
  theme_bw()

#geras sitas:
ggplot(data=mar_y_plot,mapping=aes(x=age,y=v)) +
  geom_bar(aes(x=age,y=v, fill=factor(marstat)),stat="identity",alpha=0.2)+
  guides(fill=guide_legend(title = "Šeimyninė padėtis"))+
  labs(x="Amžius",y="Kiekis")+
  theme_bw()+
  facet_grid(y~.)


educ_age_y_plot<-LT_data_models %>%
  group_by(hatfield,age,y)%>%
  summarise(v=n())

ggplot(data=educ_age_y_plot,mapping=aes(x=age,y=v)) +
  geom_bar(aes(x=age,y=v, fill=factor(hatfield)),stat="identity",alpha=0.2)+
  guides(fill=guide_legend(title = "Įgyto išsilavinimo programa"))+
  labs(x="Amžius",y="Kiekis")+
  theme_bw()+
  facet_grid(y~.)


dat<-LT_data_models %>%
  group_by(age)%>%
  summarise(v=n())
dat

#profesija
library(dplyr)
prof_plot<-LT_data %>%
  group_by(y,sex,iscopr3d,isco4d)%>%
  summarise(v=n())
ed_plot<-LT_data_models %>%
  group_by(y,sex,age,isco)%>%
  summarise(v=n())
table(LT_data_models[LT_data_models$age==4]$isco)

prof_plot<-transform(prof_plot,isco=ifelse(y=="0",isco4d,iscopr3d))
prof_plot_NA_rem<-na.omit(prof_plot)

prof_plot_NA_rem<-prof_plot_NA_rem[prof_plot_NA_rem$isco!="99",]

ggplot(prof_plot_NA_rem,mapping=aes(x=isco,y=v)) +
  geom_bar(aes(x=v,y=reorder(isco,v), fill=factor(y)),stat="identity",alpha=0.2)+
  guides(fill=guide_legend(title = "Statusas"))+
  labs(x="Kiekis",y="Profesija")+
  theme_bw()

#atsižvelgiant ir į lytį:
ggplot(prof_plot_NA_rem,mapping=aes(x=isco,y=v)) +
  geom_bar(aes(x=v,y=isco, fill=factor(y)),stat="identity",alpha=0.2)+
  guides(fill=guide_legend(title = "Statusas"))+
  labs(x="Kiekis",y="Profesija")+
  facet_grid(sex~.)+
  theme_bw()

#ekonominė veikla
ekon_plot<-LT_data %>%
  group_by(y,sex,nacepr2d,nace3d)%>%
  summarise(v=n())

ekon_plot<-transform(ekon_plot,nace=ifelse(y=="0",nace3d,nacepr2d))
ekon_plot_NA_rem<-na.omit(ekon_plot)

ekon_plot_NA_rem<-ekon_plot_NA_rem %>%
  mutate(nace=recode(nace, "000"="0"))
  
ggplot(ekon_plot_NA_rem,mapping=aes(x=nace,y=v)) +
  geom_bar(aes(x=v,y=nace, fill=factor(y)),stat="identity",alpha=0.2)+
  guides(fill=guide_legend(title = "Statusas"))+
  labs(x="Kiekis",y="Ekonominės veiklos rūšis")+
  theme_bw()

#atsižvelgiant ir į lytį:
ggplot(ekon_plot_NA_rem,mapping=aes(x=nace,y=v)) +
  geom_bar(aes(x=v,y=nace, fill=factor(y)),stat="identity",alpha=0.2)+
  guides(fill=guide_legend(title = "Statusas"))+
  labs(x="Kiekis",y="Ekonominės veiklos rūšis")+
  facet_grid(sex~.)+
  theme_bw()

##aukščiausio įgyto išsilavinimo  pasiskirtstymas tarp grupių 
educ_plot<-LT_data_models %>%
  group_by(y,sex,hatlevel)%>%
  summarise(v=n())

ggplot(educ_plot,mapping=aes(x=v,y=hatlevel)) +
  geom_bar(aes(x=v,y=hatlevel, fill=factor(y)),stat="identity",alpha=0.2)+
  guides(fill=guide_legend(title = "Statusas"))+
  labs(x="Kiekis",y="Aukščiausias įgytas išsilavinimas")+
  facet_grid(sex~.)+
  theme_bw()

typeof(educ_plot$hatlevel)
educ_plot$hatlevel<-as.character(educ_plot$hatlevel)

#aukščiausio įgyto išsilavinimo studijų programos pasiskirstymas tarp grupių
ed_field_plot<-LT_data_models %>%
  group_by(y,sex,hatfield)%>%
  summarise(v=n())

ggplot(ed_field_plot,mapping=aes(x=v,y=hatfield)) +
  geom_bar(aes(x=v,y=hatfield, fill=factor(y)),stat="identity",alpha=0.2)+
  guides(fill=guide_legend(title = "Statusas"))+
  labs(x="Kiekis",y="Aukščiausiai įgyto išsilavinimo programa")+
  facet_grid(sex~.)+
  theme_bw()

#Regioninis pasiskirstymas tarp grupių 
region_plot<-LT_data_models %>%
  group_by(y,sex,region)%>%
  summarise(v=n())

ggplot(region_plot,mapping=aes(x=v,y=region)) +
  geom_bar(aes(x=v,y=region, fill=factor(y)),stat="identity",alpha=0.2)+
  guides(fill=guide_legend(title = "Statusas"))+
  labs(x="Kiekis",y="Regionas")+
  theme_bw()

ggplot(region_plot,mapping=aes(x=v,y=region)) +
  geom_bar(aes(x=v,y=region, fill=factor(y)),stat="identity",alpha=0.2)+
  guides(fill=guide_legend(title = "Statusas"))+
  labs(x="Kiekis",y="Regionas")+
  facet_grid(sex~.)+
  theme_bw()

#Laikinas ar nuolatinis įsidarbinimas
temp_plot<-LT_data %>%
  group_by(y,sex,temp)%>%
  summarise(v=n())

temp_plot<-temp_plot[temp_plot$y!="1",]
ggplot(temp_plot,mapping=aes(x=v,y=temp)) +
  geom_bar(aes(x=v,y=temp, fill=factor(sex)),stat="identity",alpha=0.2)+
  guides(fill=guide_legend(title = "Lytis"))+
  labs(x="Kiekis",y="Įsidarbinimo tipas")+
  theme_bw()

temp_plot$temp<-as.character(temp_plot$temp)

#Ilgalaikio bedarbio patirtis
work_ex_plot<-LT_data_models %>%
  group_by(y,sex,existpr)%>%
  summarise(v=n())

work_ex_plot$existpr<-as.character(work_ex_plot$existpr)

work_ex_plot<-work_ex_plot[work_ex_plot$y!="0",]
ggplot(work_ex_plot,mapping=aes(x=v,y=existpr)) +
  geom_bar(aes(x=v,y=existpr, fill=factor(sex)),stat="identity",alpha=0.2)+
  guides(fill=guide_legend(title = "Lytis"))+
  labs(x="Kiekis",y="Ilgalaikio bedarbo darbinė patirts")+
  theme_bw()

#Paskutinį kartą dirbti metai
dat_plot<-LT_data_models %>%
  group_by(y,sex,yearpr)%>%
  summarise(v=n())

dat_plot$yearpr<-as.character(dat_plot$yearpr)

dat_plot<-dat_plot[dat_plot$y!="0",]
ggplot(dat_plot,mapping=aes(x=v,y=yearpr)) +
  geom_bar(aes(x=v,y=yearpr, fill=factor(sex)),stat="identity",alpha=0.2)+
  guides(fill=guide_legend(title = "Lytis"))+
  labs(x="Kiekis",y="Paskutinį kartą dirbti metai")+
  theme_bw()

#Kodėl paliko darbą
cause_plot<-LT_data_models %>%
  group_by(y,sex,leavreas)%>%
  summarise(v=n())

cause_plot$leavreas<-as.character(cause_plot$leavreas)

cause_plot<-cause_plot[cause_plot$y!="0",]
ggplot(cause_plot,mapping=aes(x=v,y=leavreas)) +
  geom_bar(aes(x=v,y=leavreas, fill=factor(sex)),stat="identity",alpha=0.2)+
  guides(fill=guide_legend(title = "Lytis"))+
  labs(x="Kiekis",y="Darbo netekimo priežastys")+
  theme_bw()

#Kokiu dažniausiu metodu bedarbiai ieškojo darbo 
LT_data_models<-transform(LT_data_models,method=ifelse(y=="0",nace3d,nacepr2d))

ekon_plot_NA_rem<-ekon_plot_NA_rem %>%
  mutate(nace=recode(nace, "000"="0"))

method_a<-LT_data_models %>%
  group_by(methoda,y="1",sex)%>%
  summarise(v=n())
method_a<-method_a[method_a$methoda!=c("0","9"),]
method_a<-method_a[method_a$methoda!=c("0","9"),]
method_a<-method_a %>%
  mutate(methoda=recode(methoda, "1"="methoda"))

method_b<-LT_data_models %>%
  group_by(methodb,y="1",sex)%>%
  summarise(v=n())
method_b<-method_b[method_b$methodb!=c("0","9"),]
method_b<-method_b[method_b$methodb!=c("0","9"),]
method_b<-method_b %>%
  mutate(methodb=recode(methodb, "1"="methodb"))

method_c<-LT_data_models %>%
  group_by(methodc,y="1",sex)%>%
  summarise(v=n())
method_c<-method_c[method_c$methodc!=c("0","9"),]
method_c<-method_c[method_c$methodc!=c("0","9"),]
method_c<-method_c %>%
  mutate(methodc=recode(methodc, "1"="methodc"))

method_d<-LT_data_models %>%
  group_by(methodd,y="1",sex)%>%
  summarise(v=n())
method_d<-method_d[method_d$methodd!=c("0","9"),]
method_d<-method_d[method_d$methodd!=c("0","9"),]
method_d<-method_d %>%
  mutate(methodd=recode(methodd, "1"="methodd"))

method_e<-LT_data_models %>%
  group_by(methode,y="1",sex)%>%
  summarise(v=n())
method_e<-method_e[method_e$methode!=c("0","9"),]
method_e<-method_e[method_e$methode!=c("0","9"),]
method_e<-method_e %>%
  mutate(methode=recode(methode, "1"="methode"))

method_f<-LT_data_models %>%
  group_by(methodf,y="1",sex)%>%
  summarise(v=n())
method_f<-method_f[method_f$methodf!=c("0","9"),]
method_f<-method_f[method_f$methodf!=c("0","9"),]
method_f<-method_f %>%
  mutate(methodf=recode(methodf, "1"="methodf"))

method_m<-LT_data_models %>%
  group_by(methodm,y="1",sex)%>%
  summarise(v=n())
method_m<-method_m[method_m$methodm!=c("0","9"),]
method_m<-method_m[method_m$methodm!=c("0","9"),]
method_m<-method_m %>%
  mutate(methodm=recode(methodm, "1"="methodm"))

method_a$sex<-as.character(method_a$sex)
method_b$sex<-as.character(method_b$sex)
method_c$sex<-as.character(method_c$sex)
method_d$sex<-as.character(method_d$sex)
method_e$sex<-as.character(method_e$sex)
method_f$sex<-as.character(method_f$sex)
method_m$sex<-as.character(method_m$sex)
colnames<-c("methoda","methodb","methodc","methodd","methode","methodf","methodm")
method<-rbind(method_a,method_b,method_c,method_d,method_e,method_f,method_m)

methods <- cbind(x = na.omit(unlist(method[ , colnames])),
                   method[ , ! colnames(method) %in% colnames, drop = FALSE])
methods  

ggplot(methods,mapping=aes(x=v,y=fct_reorderv)) +
  geom_bar(aes(x=v,y=reorder(x,v), fill=factor(sex)),stat="identity",alpha=0.2)+
  guides(fill=guide_legend(title = "Lytis"))+
  labs(x="Kiekis",y="Naudoti metodai įsidarbinimui")+
  theme_bw()

#### MODOS
find_mode <- function(x) {
  uniq_x <- unique(x)
  counts <- tabulate(match(x, uniq_x))
  mode_index <- which.max(counts)
  return(uniq_x[mode_index])
}

mode_age <- find_mode(LT_D3$age)
print(mode_age) 
#10

mode_region <- find_mode(LT_D3$region)
print(mode_region) 
#10

mode_hatlevel <- find_mode(LT_D3$hatlevel)
print(mode_hatlevel) 
#2

mode_hatfield <- find_mode(LT_D6$hatfield)
print(mode_hatfield) 
#11

mode_nace <- find_mode(LT_D5$nace)
print(mode_nace) 
#4

LT_D5<-LT_D3[LT_D3$nace!=0,]

mode_isco <- find_mode(LT_D5$isco)
print(mode_isco) 
#7

LT_D6<-LT_D3[LT_D3$hatfield!=11,]


######
library(ggplot2)
#pagal šeimyninę padėtį!!!
mar_y_plot<-LT_aged_full %>%
  group_by(marstat,age,y)%>%
  summarise(v=n())

mar_y_plot %>%
  filter(marstat %in% c("1","2","3")) %>%
  ggplot(mapping=aes(age,group = marstat)) +
  geom_density(aes(fill=factor(marstat)),adjust=0.35, alpha=0.15)+
  facet_grid(y~.)+
  guides(fill=guide_legend(title = "Šeimyninė padėtis"))+
  theme_bw()

#aukščiausio įgyto išsilavinimo studijų programos pasiskirstymas tarp grupių
ed_field_plot<-LT_data_models %>%
  group_by(y,sex,hatfield)%>%
  summarise(v=n())

library(dplyr)
mar_y_plot<-LT_aged_full %>%
  group_by(marstat,age,y)%>%
  summarise(v=n())

y_names<-c('1'="Ilgalaikiai bedarbiai",
           '0'="Buvę bedarbiai")

seim<-ggplot(data=mar_y_plot,mapping=aes(x=age,y=v)) +
  geom_bar(aes(x=age,y=v, fill=factor(marstat)),stat="identity",alpha=0.2)+
  guides(fill=guide_legend(title = "Šeimyninė padėtis"))+
  labs(x="Amžius",y="Kiekis")+
  theme_classic()+
  facet_grid(y~.,labeller = as_labeller(y_names))

seim+
  scale_x_continuous(breaks=seq(3,12,by=1))+ scale_fill_manual(values = c("azure4", "darkgreen", "deeppink"),
                                                               labels = c("Nevedęs/Netekėjusi", "Vedęs/Ištekėjusi","Našlys/Našlė, Išsituokęs/Išsituokusi"))+
  theme(text = element_text(family = "Times New Roman"))


hatfield<-LT_aged_full %>%
  group_by(hatfield,y)%>%
  summarise(v=n())

nace<-LT_aged_full %>%
  group_by(nace,hatlevel,y)%>%
  summarise(v=n())

apsk<-LT_aged_full %>%
  group_by(apskritys,age)%>%
  summarise(v=n())

nace_isco<-LT_aged_full %>%
  group_by(nace,isco)%>%
  summarise(v=n())

nace_sex<-LT_aged_full %>%
  group_by(nace,sex)%>%
  summarise(v=n())


hatlevel_sex<-LT_aged_full %>%
  group_by(hatlevel,sex)%>%
  summarise(v=n())

marstat_sex<-LT_aged_full %>%
  group_by(marstat,sex)%>%
  summarise(v=n())


isco_y<-LT_aged_full %>%
  group_by(isco,y)%>%
  summarise(v=n())


                   