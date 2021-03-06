# Environmental heterogeneity shapes physiological traits in tropical direct-developing frogs

### This is a repository of the manuscript "Environmental heterogeneity shapes physiological traits in tropical direct-developing frogs"

### Data base
 **Crau_dfnight1**


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
**model 2**

```
lm(formula = BodyTemp ~ Elevation + Pop + Weight + Domain:Elevation, 
    data = dfnight)

Residuals:
     Min       1Q   Median       3Q      Max 
-2.71653 -0.40468 -0.07609  0.37229  2.19215 

Coefficients:
                         Estimate Std. Error t value Pr(>|t|)    
(Intercept)            26.9455282  0.4327880  62.260  < 2e-16 ***
Elevation              -0.0055982  0.0027521  -2.034  0.04343 *  
PopGnalNB              -1.9351786  0.4500724  -4.300 2.82e-05 ***
PopSatMor              -1.6011654  0.5991986  -2.672  0.00824 ** 
PopNvaLib              -0.7969832  1.7572686  -0.454  0.65072    
PopPalestina            0.4547267  3.6990481   0.123  0.90230    
PopSalUrb               2.3579507  4.1938005   0.562  0.57466    
PopPlanLib              1.4866947  4.5691353   0.325  0.74528    
PopArrNeg               3.2013107  5.4055178   0.592  0.55445    
PopCINvaLib            -0.9685018  2.8629159  -0.338  0.73554    
PopNBI                  0.2931717  2.7113598   0.108  0.91402    
PopLaLoma              -0.2495731  3.1403339  -0.079  0.93675    
PopPalmas              20.9061961  7.4626049   2.801  0.00565 ** 
PopLagLon              22.7619726  7.9740563   2.855  0.00483 ** 
PopRLFlor              22.8702916  8.2102918   2.786  0.00593 ** 
PopAmpLag              -7.1353873  9.4767275  -0.753  0.45249    
Weight                  0.0440168  0.0584705   0.753  0.45257    
Elevation:DomainOrange -0.0036457  0.0056931  -0.640  0.52276    
Elevation:DomainYellow -0.0003132  0.0036378  -0.086  0.93150    
Elevation:DomainRed    -0.0157315  0.0060826  -2.586  0.01050 *  
Elevation:DomainBlue    0.0031847  0.0052788   0.603  0.54708 

```


```
Multiple R-squared:  0.9421,	Adjusted R-squared:  0.9356

F-statistic: 144.1 on 20 and 177 DF,  p-value: < 2.2e-16

```

#### Air Temperature ####
* Model tmp2<-lm(AirTemp ~ Elevation + Pop + Domain:Elevation, data = dfnight)
 
 
 ### Results
 
```
 lm(formula = AirTemp ~ Elevation + Pop + Domain:Elevation, data = dfnight)

Residuals:
    Min      1Q  Median      3Q     Max 
-2.3718 -0.5469 -0.0626  0.5599  3.7039 

Coefficients:
                        Estimate Std. Error t value Pr(>|t|)    
(Intercept)            26.694542   0.359083  74.341  < 2e-16 ***
Elevation              -0.001887   0.001735  -1.088  0.27778    
PopGnalNB              -2.272762   0.415677  -5.468 1.05e-07 ***
PopSatMor              -2.685884   0.483825  -5.551 6.86e-08 ***
PopNvaLib              -2.893362   1.172699  -2.467  0.01425 *  
PopPalestina           -1.903462   3.793932  -0.502  0.61628    
PopSalUrb               0.135152   4.335363   0.031  0.97515    
PopPlanLib             -1.346450   4.723226  -0.285  0.77581    
PopArrNeg              -0.535364   5.550230  -0.096  0.92323    
PopCINvaLib             4.649922   2.449322   1.898  0.05872 .  
PopNBI                  4.505545   2.371557   1.900  0.05854 .  
PopLaLoma               4.624200   2.726660   1.696  0.09107 .  
PopPalmas              19.816418   4.540205   4.365 1.82e-05 ***
PopLagLon              21.068608   4.848154   4.346 1.98e-05 ***
PopRLFlor              20.894655   4.901937   4.263 2.81e-05 ***
PopAmpLag               0.661775  10.972208   0.060  0.95195    
Elevation:DomainOrange -0.004005   0.005438  -0.737  0.46204    
Elevation:DomainYellow -0.007956   0.002700  -2.947  0.00349 ** 
Elevation:DomainRed    -0.018080   0.003707  -4.877 1.86e-06 ***
Elevation:DomainBlue   -0.004112   0.005497  -0.748  0.45503   
 
```
 
```
 Multiple R-squared:  0.9066,	Adjusted R-squared:  0.8999 
F-statistic: 135.8 on 19 and 266 DF,  p-value: < 2.2e-16
```

 
#### Substrate Temperature ####

* Model tmp2<-lm(SubsTemp ~ Elevation + Pop + Domain:Elevation, data = dfnight)

 ### Results
 
```
 lm(formula = SubsTemp ~ Elevation + Pop + Domain:Elevation, data = dfnight)

Residuals:
    Min      1Q  Median      3Q     Max 
-2.1451 -0.5879 -0.0517  0.5581  6.2541 

Coefficients:
                        Estimate Std. Error t value Pr(>|t|)    
(Intercept)            27.413087   0.383718  71.441  < 2e-16 ***
Elevation              -0.001875   0.001854  -1.011  0.31274    
PopGnalNB              -2.570613   0.444196  -5.787 2.01e-08 ***
PopSatMor              -3.193654   0.517019  -6.177 2.44e-09 ***
PopNvaLib              -3.276987   1.253154  -2.615  0.00943 ** 
PopPalestina            0.380788   4.054222   0.094  0.92524    
PopSalUrb               2.432891   4.632800   0.525  0.59992    
PopPlanLib              1.659519   5.047273   0.329  0.74257    
PopArrNeg               2.727417   5.931015   0.460  0.64599    
PopCINvaLib             2.835594   2.617363   1.083  0.27962    
PopNBI                  3.065708   2.534263   1.210  0.22747    
PopLaLoma               3.197606   2.913728   1.097  0.27345    
PopPalmas              20.899556   4.851695   4.308 2.32e-05 ***
PopLagLon              22.666543   5.180772   4.375 1.74e-05 ***
PopRLFlor              22.162348   5.238244   4.231 3.21e-05 ***
PopAmpLag              -0.599535  11.724979  -0.051  0.95926    
Elevation:DomainOrange -0.007611   0.005811  -1.310  0.19138    
Elevation:DomainYellow -0.007067   0.002885  -2.450  0.01495 *  
Elevation:DomainRed    -0.019320   0.003962  -4.877 1.86e-06 ***
Elevation:DomainBlue   -0.003769   0.005874  -0.642  0.52166 

```
 
```
Multiple R-squared:  0.8993,	Adjusted R-squared:  0.8921

F-statistic:   125 on 19 and 266 DF,  p-value: < 2.2e-16
```

