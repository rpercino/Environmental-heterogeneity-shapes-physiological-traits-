# Environmental heterogeneity shapes physiological traits in tropical direct-developing frogs

### This is a repository of the manuscript "Environmental heterogeneity shapes physiological traits in tropical direct-developing frogs"

### Data base
 **Database_night_r**


 #### Body Temperature ####
  
* Model 1: tmp1<-lm(BodyTemp ~ Elevation + Pop + Domain:Elevation, data = dfnight) 


* Model 2: tmp2<-lm(BodyTemp ~ Elevation + Pop + Weight + Domain:Elevation, data = dfnight)


 #### Results

```
Model selection based on AICc:

      K     AICc Delta_AICc AICcWt Cum.Wt        LL
tmp2 22 490.5313     0.0000      1      1 -220.3742
tmp1 21 682.6525   192.1212      0      1 -318.3851

```

```
tmp3
Multiple R-squared:  0.9421,	Adjusted R-squared:  0.9356

F-statistic: 144.1 on 20 and 177 DF,  p-value: < 2.2e-16

```

#### Air Temperature ####
* Model tmp2<-lm(AirTemp ~ Elevation + Pop + Domain:Elevation, data = dfnight)
 
 
 ### Results
 ````
 Multiple R-squared:  0.9066,	Adjusted R-squared:  0.8999 
F-statistic: 135.8 on 19 and 266 DF,  p-value: < 2.2e-16
 
 
#### Substrate Temperature ####

* Model tmp2<-lm(SubsTemp ~ Elevation + Pop + Domain:Elevation, data = dfnight)

 ### Results
 
```
Multiple R-squared:  0.8993,	Adjusted R-squared:  0.8921

F-statistic:   125 on 19 and 266 DF,  p-value: < 2.2e-16
```

