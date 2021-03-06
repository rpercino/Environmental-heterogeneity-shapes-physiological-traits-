# Environmental heterogeneity shapes physiological traits in tropical direct-developing frogs

### This is a repository of the manuscript in development "Environmental heterogeneity shapes physiological traits in tropical direct-developing frogs"


### Data bases

* Preferred temperature (Tsel)

The data file is **myvar3** 

upload library
#
library(nlme)

## Models

* tsel2<-gls(Temperature ~ Elevation + Pop + Weight + Domain:Elevation, correlation = corCompSymm( form = ~1|Indv), weights=varIdent(form=~1|Domain), data = myvar3, na.action=na.omit)


* tsel3<-gls(Temperature ~ Elevation + Weight + Domain:Elevation, correlation = corCompSymm( form = ~1|Indv), weights=varIdent(form=~1|Domain), data = myvar3, na.action=na.omit)


* tsel5<-gls(Temperature ~ Elevation + Pop + SVL + Weight + Domain:Elevation, correlation = corCompSymm( form = ~1|Indv), weights=varIdent(form=~1|Domain), data = myvar3, na.action=na.omit) 


* tsel6<-gls(Temperature ~ Elevation + SVL + Weight + Domain:Elevation, correlation = corCompSymm( form = ~1|Indv), weights=varIdent(form=~1|Domain), data = myvar3, na.action=na.omit)


* tsel7<-gls(Temperature ~ Elevation + Pop + SVL + Domain:Elevation, correlation = corCompSymm( form = ~1|Indv), weights=varIdent(form=~1|Domain), data = myvar3, na.action=na.omit)


* tsel8<-gls(Temperature ~ Elevation + Pop + Domain:Elevation, correlation = corCompSymm( form = ~1|Indv), weights=varIdent(form=~1|Domain), data = myvar3, na.action=na.omit)


###
#### AICc
Cand.models<-list(tsel2, tsel3, tsel5, tsel7)

Modnames<-c("tsel2", "tsel3", "tsel5", "tsel7")

print(aictab(cand.set = Cand.models, modnames = Modnames,
             second.ord = TRUE), digits = 4)


#### Results

```
Model selection based on AICc:

       K     AICc Delta_AICc AICcWt Cum.Wt    Res.LL
tsel5 28 3981.269     0.0000 0.8214 0.8214 -1961.786
tsel2 27 3984.322     3.0522 0.1786 1.0000 -1964.372
tsel7 27 4191.430   210.1605 0.0000 1.0000 -2067.965
tsel3 13 4203.145   221.8752 0.0000 1.0000 -2088.385

```

###Model 5 ###

```
Generalized least squares fit by REML
  Model: Temperature ~ Elevation + Pop + SVL + Weight + Domain:Elevation 
  Data: myvar3 
       AIC      BIC    logLik
  3979.572 4115.963 -1961.786

Correlation Structure: Compound symmetry
 Formula: ~1 | Indv 
 Parameter estimate(s):
      Rho 
0.0835123 
Variance function:
 Structure: Different standard deviations per stratum
 Formula: ~1 | Domain 
 Parameter estimates:
     Blue    Orange    Yellow     Green       Red 
1.0000000 0.7093090 0.6939673 0.7550369 0.7196525 

Coefficients:
                          Value Std.Error   t-value p-value
(Intercept)            18.32509  2.128315  8.610140  0.0000
Elevation              -0.00263  0.015863 -0.165867  0.8683
PopGNBII                0.70491  2.011691  0.350409  0.7261
PopSatMor               1.76647  2.958486  0.597086  0.5506
PopNvaLib               2.43185  9.444801  0.257481  0.7969
PopPalestina            4.63049  3.863886  1.198403  0.2311
PopSalUrb               2.46680  4.221941  0.584281  0.5592
PopPlanLib              3.31105  4.498267  0.736073  0.4619
PopArrNeg               5.01590  5.197033  0.965147  0.3347
PopCINLib               9.24224  3.160443  2.924351  0.0035
PopNBI                  5.28888  3.096519  1.708007  0.0880
PopLaLoma               7.98008  3.351273  2.381209  0.0174
PopPalmas               1.83505 10.101990  0.181653  0.8559
PopLagLon               2.26797 10.839840  0.209226  0.8343
PopRLFlor               3.85955 11.052346  0.349206  0.7270
PopAmpLag              70.95077  9.640842  7.359396  0.0000
SVL                     0.13719  0.042836  3.202741  0.0014
Weight                 -0.56566  0.237544 -2.381301  0.0174
Elevation:DomainOrange -0.00119  0.016503 -0.072270  0.9424
Elevation:DomainYellow -0.00292  0.015979 -0.182569  0.8552
Elevation:DomainRed     0.00156  0.017413  0.089350  0.9288
Elevation:DomainBlue   -0.02927  0.016503 -1.773625  0.0764

 Correlation: 
                       (Intr) Elevtn PGNBII PpStMr PpNvLb PpPlst PpSlUr PpPlnL PpArrN
Elevation              -0.921                                                        
PopGNBII                0.876 -0.975                                                 
PopSatMor               0.890 -0.988  0.983                                          
PopNvaLib               0.916 -0.999  0.980  0.991                                   
PopPalestina           -0.497  0.519 -0.489 -0.500 -0.514                            
PopSalUrb              -0.456  0.475 -0.448 -0.458 -0.471  0.994                     
PopPlanLib             -0.428  0.446 -0.420 -0.430 -0.442  0.992  0.996              
PopArrNeg              -0.375  0.387 -0.365 -0.372 -0.383  0.983  0.990  0.994       
PopCINLib              -0.572  0.617 -0.585 -0.600 -0.613  0.324  0.297  0.279  0.241
PopNBI                 -0.594  0.632 -0.599 -0.613 -0.628  0.334  0.306  0.287  0.249
PopLaLoma              -0.541  0.583 -0.552 -0.566 -0.579  0.307  0.281  0.263  0.228
PopPalmas              -0.215  0.196 -0.186 -0.189 -0.195  0.107  0.098  0.092  0.081
PopLagLon              -0.202  0.183 -0.173 -0.176 -0.181  0.100  0.092  0.086  0.076
PopRLFlor              -0.201  0.180 -0.171 -0.173 -0.178  0.099  0.091  0.085  0.075
PopAmpLag              -0.145  0.212 -0.197 -0.205 -0.210  0.115  0.105  0.098  0.084
SVL                    -0.302 -0.044  0.022  0.041  0.038 -0.028 -0.025 -0.023 -0.011
Weight                  0.190  0.084 -0.055 -0.069 -0.077  0.081  0.077  0.071  0.058
Elevation:DomainOrange  0.889 -0.963  0.939  0.951  0.962 -0.727 -0.693 -0.669 -0.619
Elevation:DomainYellow  0.912 -0.992  0.967  0.980  0.990 -0.513 -0.470 -0.441 -0.383
Elevation:DomainRed     0.851 -0.911  0.889  0.900  0.910 -0.473 -0.434 -0.407 -0.354
Elevation:DomainBlue    0.871 -0.963  0.938  0.952  0.962 -0.500 -0.458 -0.430 -0.372
                       PpCINL PopNBI PopLLm PpPlms PpLgLn PpRLFl PpAmpL SVL    Weight
Elevation                                                                            
PopGNBII                                                                             
PopSatMor                                                                            
PopNvaLib                                                                            
PopPalestina                                                                         
PopSalUrb                                                                            
PopPlanLib                                                                           
PopArrNeg                                                                            
PopCINLib                                                                            
PopNBI                  0.995                                                        
PopLaLoma               0.995  0.993                                                 
PopPalmas               0.120  0.125  0.114                                          
PopLagLon               0.112  0.117  0.106  0.999                                   
PopRLFlor               0.109  0.115  0.104  0.999  0.999                            
PopAmpLag               0.138  0.139  0.130  0.031  0.028  0.027                     
SVL                    -0.050 -0.034 -0.043  0.065  0.065  0.069 -0.175              
Weight                  0.042  0.040  0.039 -0.033 -0.034 -0.035  0.170 -0.902       
Elevation:DomainOrange -0.593 -0.608 -0.560 -0.189 -0.177 -0.174 -0.205  0.042 -0.089
Elevation:DomainYellow -0.713 -0.726 -0.682 -0.194 -0.180 -0.177 -0.211  0.045 -0.080
Elevation:DomainRed    -0.561 -0.575 -0.530 -0.582 -0.571 -0.569 -0.188  0.009 -0.055
Elevation:DomainBlue   -0.596 -0.609 -0.562 -0.185 -0.172 -0.169 -0.467  0.091 -0.125
                       Elv:DO Elv:DY Elv:DR
Elevation                                  
PopGNBII                                   
PopSatMor                                  
PopNvaLib                                  
PopPalestina                               
PopSalUrb                                  
PopPlanLib                                 
PopArrNeg                                  
PopCINLib                                  
PopNBI                                     
PopLaLoma                                  
PopPalmas                                  
PopLagLon                                  
PopRLFlor                                  
PopAmpLag                                  
SVL                                        
Weight                                     
Elevation:DomainOrange                     
Elevation:DomainYellow  0.955              
Elevation:DomainRed     0.878  0.903       
Elevation:DomainBlue    0.928  0.955  0.876

Standardized residuals:
        Min          Q1         Med          Q3         Max 
-3.07945963 -0.57206509  0.02045615  0.63346685  4.56006944 

Residual standard error: 2.311691 
Degrees of freedom: 986 total; 964 residual
```