# The-risk-of-long-term-unemployment-in-Lithuania
Estimating the risk of long-term unemployment by applying qualitative response models to data from the labour force survey

# Data
Qualitative data from 2015-2022 is used for the research.

# Purpose of the project
This project aims to assess the determinants of the risk of long-term unemployment in the Lithuanian labour market based on qualitative discrete response models (probabilistic models).
The models were estimated by applying AME; adding different groups of variables (to identify significant factors and their changes); estimating single cases

The dependent variable is a binomial variable corresponding to a Bernoulli distribution and takes the value of 1 when a person has been unemployed for 12 months or more and 0 when a person has been unemployed but has found work.

# Navigation through files
R:
Long-term unemployed - long-term unemployed;
Former long-term unemployed - formerly unemployed;
Data processing - data ready for analysis;
Descriptive statistics - Descriptive statistics;
Probabilistic models - construction of models with the highest predictive power;
Probabilistic models LT 2022 -  expanded the sample range by two additional years and fitted the data to the models with the highest predictive power;
Case-specific application 2022 - probability estimation for average and extreme individuals;
Clustered models and pseudo R sq - calculation of AME, information criteria (AIC) and pseudo R squared;
Average, typical person - assessment of different combinations of personal characteristics

ASSESSMENT OF THE MOST IMPORTANT FACTORS FOR DIFFERENT GROUPS OF PEOPLE:
Influence of age;
Influence of marital status between occupations;
Influence of education by occupation;
Influence of education by age 

DISTRIBUTION OF DEPENDENT VARIABLE:
relation between age and marital status by values of dependent variable

ESTIMATION OF MODELS:
simple var_31 (with odds ratios);
var_31 (with AME);
models_log31 

# Conclusions
The significance of the factors that contribute to the risk of long-term unemployment is related to age, educational attainment, occupational characteristics and marital status. In Lithuania, the risk of long-term unemployment is found to be related to those working in the industrial and construction sectors. In the context of the biological concept, no significant difference was observed, except in the case of marital status, revealing different effects for the opposite sex: for women, family commitment increases the risk of long-term unemployment, while for men the effect is the opposite. However, the effect of education on the risk of long-term unemployment is more pronounced than that of marital status, irrespective of gender. 
