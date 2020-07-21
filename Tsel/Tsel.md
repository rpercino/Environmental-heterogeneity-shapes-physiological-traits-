# Environmental heterogeneity shapes physiological traits in tropical direct-developing frogs

### This is a repository of the manuscript in development "Environmental heterogeneity shapes physiological traits in tropical direct-developing frogs"

###### Ruth Percino-Daniel, José M. Contreras López, Oswaldo Téllez-Valdés, Fausto R. Méndez de la Cruz, Alejandro Gonzalez-Voyer and Daniel Piñero.


### Data bases

* Preferred temperature (Tsel)

The data file is **myvar3** 

## Models

* tsel0<-gls(Temperature ~ Pop:Elevation, correlation = corCompSymm( form = ~1|Indv), weights=varIdent(form=~1|Domain), data = myvar3, na.action=na.omit)


* tsel<-gls(Temperature ~ Pop:Elevation + Domain, correlation = corCompSymm( form = ~1|Indv), weights=varIdent(form=~1|Domain), data = myvar3, na.action=na.omit)


* tsel1<-gls(Temperature ~ Pop + Elevation, correlation = corCompSymm( form = ~1|Indv), weights=varIdent(form=~1|Domain), data = myvar3, na.action=na.omit) 


* tsel2<-gls(Temperature ~ Pop + Domain:Elevation, correlation = corCompSymm( form = ~1|Indv), weights=varIdent(form=~1|Domain), data = myvar3, na.action=na.omit)


* tsel3<-gls(Temperature ~ Elevation:Pop + Domain, correlation = corAR1( form = ~1|Indv), weights=varIdent(form=~1|Domain), data = myvar3, na.action=na.omit)


* tsel4<-gls(Temperature ~ Pop + Elevation, correlation = corAR1( form = ~1|Indv), weights=varIdent(form=~1|Domain), data = myvar3, na.action=na.omit) 


* tsel5<-gls(Temperature ~ Pop + Domain:Elevation, correlation = corCompSymm( form = ~1|Indv), data = myvar3, na.action=na.omit)

#### Results

```
     df      AIC		BIC
tsel  25 4196.547	4318.888
tsel0 21 4295.828	4398.679
tsel1 21 4119.159	4222.011
tsel2 25 4072.990	4195.332
tsel3 25 4194.151	4316.493
tsel4 21 4109.922	4212.774
tsel5 21 4102.885	4205.652
```

```
Model selection based on AICc:

       K     AICc Delta_AICc AICcWt Cum.Wt    Res.LL
tsel2 25 4074.318     0.0000      1      1 -2011.495
tsel5 21 4103.825    29.5068      0      1 -2030.442
tsel4 21 4110.862    36.5440      0      1 -2033.961
tsel1 21 4120.099    45.7810      0      1 -2038.580
tsel3 25 4195.479   121.1610      0      1 -2072.076
tsel  25 4197.874   123.5565      0      1 -2073.273
tsel0 21 4296.768   222.4496      0      1 -2126.914

```