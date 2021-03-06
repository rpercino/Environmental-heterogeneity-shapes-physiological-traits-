# Environmental heterogeneity shapes physiological traits in tropical direct-developing frogs

### This is a repository of the manuscript in development "Environmental heterogeneity shapes physiological traits in tropical direct-developing frogs"


#### Data bases contains the following info

* Critical thermal maximum (**CTmax**)
* Critical thermal minimum (**CTmin**)
* Thermal tolerance or Thermal breath (**TTR**)
* Warming tolerance (**WT**) 
* Cooling tolerance 
* CTmax and maximum daily temperature (**Tmax_hab**) 
* CTmin and minimum daily temperature (**Tmin-hab)** 

The data file is **Thermal_limits_WT_CT** 

### Models using lm

#### CTmax models

* tmp1<-lm(CTmax ~ Elevation + Pop + Domain:Elevation, data = CTMax_min)

* tmp2<-lm(CTmax ~ Elevation + Pop + Weight + Domain:Elevation, data = CTMax_min)

* tmp3 <- lm(CTmax ~ Elevation + Pop + SVL + Domain:Elevation, data = CTMax_min)

* tmp4 <- lm(CTmax ~ Elevation + Pop + Weight + SVL + Domain:Elevation, data = CTMax_min)

#### Results

#### Using the library(AICcmodavg) to estimate AICc
Cand.models<-list(tmp1, tmp2, tmp3, tmp4)

Modnames<-c("tmp1", "tmp2", "tmp3", "tmp4")

print(aictab(cand.set = Cand.models, modnames = Modnames,
             second.ord = TRUE), digits = 4)

```
Model selection based on AICc:

      K     AICc Delta_AICc AICcWt Cum.Wt        LL
tmp3 21 484.9458     0.0000 0.6905 0.6905 -218.0507
tmp4 22 486.5525     1.6068 0.3092 0.9997 -217.5002
tmp2 21 500.4595    15.5138 0.0003 1.0000 -225.9298
tmp1 20 539.3535    54.4077 0.0000 1.0000 -246.8767


```


* model 3

```
lm(formula = CTmax ~ Elevation + Pop + SVL + Domain:Elevation, 
    data = CTMax_min)

Residuals:
    Min      1Q  Median      3Q     Max 
-3.1474 -0.4612 -0.0110  0.4877  3.4791 

Coefficients:
                        Estimate Std. Error t value Pr(>|t|)    
(Intercept)            36.628753   0.956263  38.304  < 2e-16 ***
Elevation              -0.011794   0.004194  -2.812  0.00565 ** 
PopGNBII                0.513487   0.771632   0.665  0.50688    
PopSatMor               0.717410   1.063065   0.675  0.50091    
PopNvaLib               5.190772   2.770644   1.873  0.06313 .  
PopPalestina           -5.120810   4.173799  -1.227  0.22197    
PopSalUrb              -7.073525   4.748451  -1.490  0.13862    
PopPlanLib             -9.617112   5.071738  -1.896  0.06004 .  
PopCINvaLib            -4.871065   3.436926  -1.417  0.15867    
PopNBI                 -4.308106   3.299435  -1.306  0.19384    
PopLaLoma              -2.449653   3.752014  -0.653  0.51492    
PopPalmas              20.965064  11.997125   1.748  0.08279 .  
PopLagLon              23.098280  12.906196   1.790  0.07571 .  
PopRLFlor              25.488093  13.150522   1.938  0.05466 .  
PopAmpLag              -0.605750  39.532588  -0.015  0.98780    
SVL                     0.031760   0.023770   1.336  0.18372    
Elevation:DomainOrange  0.015340   0.006985   2.196  0.02977 *  
Elevation:DomainYellow  0.012341   0.005049   2.444  0.01578 *  
Elevation:DomainRed    -0.006420   0.009644  -0.666  0.50673    
Elevation:DomainBlue    0.011203   0.019228   0.583  0.56111  


```

```
Multiple R-squared:  0.601,	Adjusted R-squared:  0.5457 
F-statistic: 10.86 on 19 and 137 DF,  p-value: < 2.2e-16
```

```
Analysis of Variance Table

Response: CTmax
                  Df  Sum Sq Mean Sq F value  Pr(>F)    
Elevation          1   0.029  0.0288  0.0267 0.87045    
Pop               13 209.588 16.1222 14.9408 < 2e-16 ***
SVL                1   1.778  1.7779  1.6476 0.20145    
Elevation:Domain   4  11.281  2.8202  2.6135 0.03802 *  
Residuals        137 147.833  1.0791                    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
```

#### CTmin models

* tmp1<-lm(CTmin ~ Elevation + Pop + Domain:Elevation, data = CTMax_min)


* tmp2 <- lm(CTmin ~ Elevation + Pop + Weight + Domain:Elevation, data = CTMax_min)

* tmp3 <- lm(CTmin ~ Elevation + Pop + SVL + Domain:Elevation, data = CTMax_min)

* tmp4<-lm(CTmin ~ Elevation + Pop + Weight + SVL + Domain:Elevation, data = CTMax_min)

#### Results

```
Model selection based on AICc:

      K     AICc Delta_AICc AICcWt Cum.Wt        LL
tmp3 21 615.2549     0.0000   0.66   0.66 -283.2552
tmp4 22 616.5813     1.3263   0.34   1.00 -282.5700
tmp2 21 643.3639    28.1090   0.00   1.00 -297.4284
tmp1 20 684.2140    68.9591   0.00   1.00 -319.3619

```
 
 
### Results model tmp3 
 

```
lm(formula = CTmin ~ Elevation + Pop + SVL + Domain:Elevation, 
    data = CTMax_min)

Residuals:
    Min      1Q  Median      3Q     Max 
-3.5185 -0.7279 -0.0870  0.6551  6.9879 

Coefficients:
                        Estimate Std. Error t value Pr(>|t|)    
(Intercept)            11.356005   1.414581   8.028 3.76e-13 ***
Elevation               0.004408   0.006205   0.710  0.47864    
PopGNBII               -1.446772   1.141629  -1.267  0.20717    
PopSatMor              -2.888468   1.572804  -1.837  0.06842 .  
PopNvaLib              -2.517890   4.099168  -0.614  0.54006    
PopPalestina           -9.395028   6.178394  -1.521  0.13063    
PopSalUrb              -9.969761   7.018467  -1.421  0.15770    
PopPlanLib             -6.839257   7.493671  -0.913  0.36300    
PopCINvaLib            -3.775145   5.084918  -0.742  0.45909    
PopNBI                 -4.565826   4.881507  -0.935  0.35124    
PopLaLoma              -8.114239   5.551095  -1.462  0.14607    
PopPalmas              22.058860  17.749743   1.243  0.21604    
PopLagLon              23.636692  19.094713   1.238  0.21785    
PopRLFlor              22.549260  19.456191   1.159  0.24845    
PopAmpLag              11.023658  58.488325   0.188  0.85078    
SVL                    -0.117657   0.035157  -3.347  0.00105 ** 
Elevation:DomainOrange  0.007213   0.010326   0.699  0.48600    
Elevation:DomainYellow  0.001151   0.007470   0.154  0.87781    
Elevation:DomainRed    -0.019656   0.014268  -1.378  0.17054    
Elevation:DomainBlue   -0.010006   0.028448  -0.352  0.72558     
 
```


```
Multiple R-squared:  0.4993,	Adjusted R-squared:  0.4309 
F-statistic: 7.296 on 19 and 139 DF,  p-value: 2.708e-13

``` 
  
#### Thermal tolerance range (thermal breath) models
* tmp1<-lm(TTR ~ Elevation + Pop + Domain:Elevation, data = CTMax_min)

* tmp2<-lm(TTR ~ Elevation + Pop + Weight + Domain:Elevation, data = CTMax_min)

* tmp3<-lm(TTR ~ Elevation + Pop + SVL + Domain:Elevation, data = CTMax_min)

* tmp4<-lm(TTR ~ Elevation + Pop + Weight + SVL + Domain:Elevation, data = CTMax_min)



### Results 

```
Model selection based on AICc:

      K     AICc Delta_AICc AICcWt Cum.Wt        LL
tmp3 21 689.5458     0.0000 0.5674 0.5674 -320.3251
tmp4 22 690.0880     0.5422 0.4326 1.0000 -319.2395
tmp2 21 719.9301    30.3843 0.0000 1.0000 -335.6413
tmp1 20 771.7656    82.2198 0.0000 1.0000 -363.0640
```

* Model 3

```
lm(formula = TTR ~ Elevation + Pop + SVL + Domain:Elevation, 
    data = CTMax_min)

Residuals:
    Min      1Q  Median      3Q     Max 
-8.5133 -0.7867  0.0804  1.1817  6.4192 

Coefficients:
                         Estimate Std. Error t value Pr(>|t|)    
(Intercept)             25.289072   1.859507  13.600  < 2e-16 ***
Elevation               -0.016205   0.008155  -1.987  0.04891 *  
PopGNBII                 1.959949   1.500377   1.306  0.19365    
PopSatMor                3.604428   2.067047   1.744  0.08346 .  
PopNvaLib                7.708967   5.387298   1.431  0.15474    
PopPalestina             4.017297   8.208071   0.489  0.62532    
PopSalUrb                2.702755   9.374068   0.288  0.77354    
PopPlanLib              -2.904955   9.975434  -0.291  0.77133    
PopCINvaLib             -1.087631   6.682841  -0.163  0.87096    
PopNBI                   0.263390   6.415496   0.041  0.96731    
PopLaLoma                5.671594   7.295500   0.777  0.43827    
PopPalmas               -1.103364  23.327466  -0.047  0.96234    
PopLagLon               -0.548292  25.095082  -0.022  0.98260    
PopRLFlor                2.926626  25.570157   0.114  0.90905    
PopAmpLag              -11.716451  76.868085  -0.152  0.87908    
SVL                      0.148825   0.046226   3.219  0.00161 ** 
Elevation:DomainOrange   0.008270   0.013685   0.604  0.54666    
Elevation:DomainYellow   0.011186   0.009817   1.140  0.25649    
Elevation:DomainRed      0.013245   0.018752   0.706  0.48119    
Elevation:DomainBlue     0.021252   0.037388   0.568  0.57069

```


```
Multiple R-squared:  0.626,	Adjusted R-squared:  0.5737 
F-statistic: 11.98 on 19 and 136 DF,  p-value: < 2.2e-16

```


#### Warming tolerance (WT) models

* tmp1<-lm(WT ~ Elevation + Pop + Domain:Elevation, data = WT)

* tmp3<-lm(WT ~ Elevation + Pop + SVL + Weight + Domain:Elevation, data = WT)

* tmp5<-lm(WT ~ Elevation + Pop + Weight + Domain:Elevation, data = WT)

* tmp6<-lm(WT ~ Elevation + Pop + SVL + Domain:Elevation, data = WT)

#### Results

```
Model selection based on AICc:

      K     AICc Delta_AICc AICcWt Cum.Wt        LL
tmp6 21 480.3491     0.0000 0.6799 0.6799 -215.7523
tmp3 22 481.8573     1.5082 0.3198 0.9997 -215.1525
tmp5 21 496.0013    15.6522 0.0003 1.0000 -223.7007
tmp1 20 535.3002    54.9511 0.0000 1.0000 -244.8501

```
***model 6***

```
lm(formula = WT ~ Elevation + Pop + SVL + Domain:Elevation, data = WT1)

Residuals:
    Min      1Q  Median      3Q     Max 
-3.1474 -0.4612 -0.0202  0.4876  3.4790 

Coefficients:
                        Estimate Std. Error t value Pr(>|t|)    
(Intercept)             4.498393   0.942367   4.774 4.59e-06 ***
Elevation              -0.011794   0.004133  -2.854 0.004995 ** 
PopGNBII                0.513496   0.760418   0.675 0.500635    
PopSatMor               1.034558   1.047616   0.988 0.325121    
PopNvaLib               9.907296   2.730380   3.629 0.000401 ***
PopPalestina           -5.778594   4.113144  -1.405 0.162312    
PopSalUrb              -7.461596   4.679445  -1.595 0.113118    
PopPlanLib             -3.922540   4.998034  -0.785 0.433916    
PopCINvaLib             2.096926   3.386980   0.619 0.536870    
PopNBI                  4.837432   3.251487   1.488 0.139112    
PopLaLoma               1.253176   3.697488   0.339 0.735184    
PopPalmas              21.975768  11.822779   1.859 0.065206 .  
PopLagLon              24.108993  12.718639   1.896 0.060124 .  
PopRLFlor              33.775888  12.959414   2.606 0.010166 *  
PopAmpLag              13.764359  38.958087   0.353 0.724398    
SVL                     0.031778   0.023425   1.357 0.177133    
Elevation:DomainOrange  0.016805   0.006884   2.441 0.015912 *  
Elevation:DomainYellow  0.012341   0.004975   2.480 0.014332 *  
Elevation:DomainRed    -0.006420   0.009504  -0.676 0.500471    
Elevation:DomainBlue    0.011201   0.018949   0.591 0.555403

```


```


```
Multiple R-squared:  0.9511,	Adjusted R-squared:  0.9443 
F-statistic: 140.2 on 19 and 137 DF,  p-value: < 2.2e-16
```



#### Cooling tolerance models 

* tmp1<-lm(Cool_T ~ Elevation + Pop + Domain:Elevation, data = CoolTol)

* tmp3<-lm(Cool_T ~ Elevation + Pop + SVL + Weight + Domain:Elevation, data = CoolTol)

* tmp5<-lm(Cool_T ~ Elevation + Pop + Weight + Domain:Elevation, data = CoolTol)

* tmp6<-lm(Cool_T ~ Elevation + Pop + SVL + Domain:Elevation, data = CoolTol)

#### Results

```
Model selection based on AICc:

      K     AICc Delta_AICc AICcWt Cum.Wt        LL
tmp6 21 613.1759     0.0000 0.6649 0.6649 -282.2157
tmp3 22 614.5463     1.3705 0.3351 1.0000 -281.5526
tmp5 21 641.2186    28.0427 0.0000 1.0000 -296.3558
tmp1 20 681.9939    68.8180 0.0000 1.0000 -318.2518

```

**model 6**



```
lm(formula = Cool_T ~ Elevation + Pop + SVL + Domain:Elevation, 
    data = CoolTol1)

Residuals:
    Min      1Q  Median      3Q     Max 
-6.7030 -0.6509  0.0874  0.7271  3.5037 

Coefficients:
                         Estimate Std. Error t value Pr(>|t|)    
(Intercept)             10.924110   1.405363   7.773 1.54e-12 ***
Elevation               -0.004415   0.006165  -0.716  0.47505    
PopGNBII                 1.446061   1.134190   1.275  0.20445    
PopSatMor                2.171463   1.562554   1.390  0.16685    
PopNvaLib                0.801758   4.072455   0.197  0.84421    
PopPalestina             5.822945   6.138132   0.949  0.34444    
PopSalUrb                6.057311   6.972730   0.869  0.38650    
PopPlanLib               1.677172   7.444837   0.225  0.82209    
PopCINvaLib             -0.949350   5.051781  -0.188  0.85121    
PopNBI                   0.780392   4.849696   0.161  0.87239    
PopLaLoma                3.019914   5.514920   0.548  0.58485    
PopPalmas              -28.352502  17.634074  -1.608  0.11014    
PopLagLon              -29.931050  18.970279  -1.578  0.11689    
PopRLFlor              -28.240227  19.329401  -1.461  0.14627    
PopAmpLag              -21.150598  58.107176  -0.364  0.71642    
SVL                      0.116298   0.034928   3.330  0.00111 ** 
Elevation:DomainOrange  -0.007194   0.010258  -0.701  0.48431    
Elevation:DomainYellow  -0.001063   0.007421  -0.143  0.88632    
Elevation:DomainRed      0.019676   0.014175   1.388  0.16733    
Elevation:DomainBlue     0.010106   0.028263   0.358  0.72121 
```


```
Multiple R-squared:  0.7967,	Adjusted R-squared:  0.7689 
F-statistic: 28.66 on 19 and 139 DF,  p-value: < 2.2e-16

```

#### CTmax and maximum daily temperature (Tmax_hab)

* tmp1<-lm(CTmax ~  Tmax_hab + Elevation + Pop + Domain:Elevation, data = WT1)

* tmp2<-lm(CTmax ~ Tmax_hab + Elevation + Pop + Weight + Domain:Elevation, data = WT1)

* tmp3<-lm(CTmax ~ Tmax_hab + Elevation + Pop + SVL + Domain:Elevation, data = WT1)

* tmp4<-lm(CTmax ~ Tmax_hab + Pop + SVL + Weight + Domain:Elevation, data = WT1) 

* tmp5<-lm(CTmax ~ Tmax_hab + Pop + Domain:Elevation, data = WT1)

## AICc
Cand.models<-list(tmp1, tmp2, tmp3, tmp4, tmp5)

Modnames<-c("tmp1", "tmp2", "tmp3", "tmp4", "tmp5")

print(aictab(cand.set = Cand.models, modnames = Modnames,
             second.ord = TRUE), digits = 4)

#### Results

```
Model selection based on AICc:

      K     AICc Delta_AICc AICcWt Cum.Wt        LL
tmp3 21 484.9458     0.0000 0.6905 0.6905 -218.0507
tmp4 22 486.5525     1.6068 0.3092 0.9997 -217.5002
tmp2 21 500.4595    15.5138 0.0003 1.0000 -225.9298
tmp1 20 539.3535    54.4077 0.0000 1.0000 -246.8767
tmp5 20 539.3535    54.4077 0.0000 1.0000 -246.8767
```
**model 3**

```
lm(formula = CTmax ~ Tmax_hab + Elevation + Pop + SVL + Domain:Elevation, 
    data = WT1)

Residuals:
    Min      1Q  Median      3Q     Max 
-3.1474 -0.4612 -0.0110  0.4877  3.4791 

Coefficients: (1 not defined because of singularities)
                        Estimate Std. Error t value Pr(>|t|)   
(Intercept)            35.274117  88.341623   0.399  0.69030   
Tmax_hab                0.042161   2.751539   0.015  0.98780   
Elevation              -0.011794   0.004194  -2.812  0.00565 **
PopGNBII                0.513487   0.771632   0.665  0.50688   
PopSatMor               0.730780   1.375244   0.531  0.59601   
PopNvaLib               5.389627  13.300854   0.405  0.68596   
PopPalestina           -5.103271   4.318908  -1.182  0.23941   
PopSalUrb              -7.042194   5.156045  -1.366  0.17424   
PopPlanLib             -9.321599  19.906769  -0.468  0.64034   
PopCINvaLib            -4.577275  19.495774  -0.235  0.81473   
PopNBI                 -3.922511  25.387866  -0.155  0.87744   
PopLaLoma              -2.293528  10.869670  -0.211  0.83320   
PopPalmas              21.007664  12.304625   1.707  0.09003 . 
PopLagLon              23.140880  13.192290   1.754  0.08165 . 
PopRLFlor              25.837501  26.275255   0.983  0.32717   
PopAmpLag                     NA         NA      NA       NA   
SVL                     0.031760   0.023770   1.336  0.18372   
Elevation:DomainOrange  0.015340   0.006985   2.196  0.02977 * 
Elevation:DomainYellow  0.012341   0.005049   2.444  0.01578 * 
Elevation:DomainRed    -0.006420   0.009644  -0.666  0.50673   
Elevation:DomainBlue    0.011203   0.019228   0.583  0.56111

```

```
Multiple R-squared:  0.601,	Adjusted R-squared:  0.5457 
F-statistic: 10.86 on 19 and 137 DF,  p-value: < 2.2e-16
```

#### CTmin and minimum daily temperature (Tmin_hab)

* tmp1<-lm(CTmin ~  Tmin_hab + Elevation + Pop + Domain:Elevation, data = CoolTol1)

* tmp2<-lm(CTmin ~ Tmin_hab + Elevation + Pop + Weight + Domain:Elevation, data = CoolTol1)

* tmp3<-lm(CTmin ~ Tmin_hab + Elevation + Pop + SVL + Domain:Elevation, data = CoolTol1)

* tmp4<-lm(CTmin ~ Tmin_hab + Pop + SVL + Weight + Domain:Elevation, data = CoolTol1) 

* tmp5<-lm(CTmin ~ Tmin_hab + Pop + Domain:Elevation, data = CoolTol1) 


#### Results

```
Model selection based on AICc:

      K     AICc Delta_AICc AICcWt Cum.Wt        LL
tmp3 21 615.2549     0.0000   0.66   0.66 -283.2552
tmp4 22 616.5813     1.3263   0.34   1.00 -282.5700
tmp2 21 643.3639    28.1090   0.00   1.00 -297.4284
tmp5 20 684.2140    68.9591   0.00   1.00 -319.3619
tmp1 20 684.2140    68.9591   0.00   1.00 -319.3619

```

**model 3**


```
lm(formula = CTmin ~ Tmin_hab + Elevation + Pop + SVL + Domain:Elevation, 
    data = CoolTol1)

Residuals:
    Min      1Q  Median      3Q     Max 
-3.5185 -0.7279 -0.0870  0.6551  6.9879 

Coefficients: (1 not defined because of singularities)
                         Estimate Std. Error t value Pr(>|t|)   
(Intercept)             36.055008 130.949703   0.275  0.78347   
Tmin_hab                -1.110433   5.891633  -0.188  0.85078   
Elevation                0.004408   0.006205   0.710  0.47864   
PopGNBII                -1.446772   1.141629  -1.267  0.20717   
PopSatMor               -3.680961   4.489189  -0.820  0.41364   
PopNvaLib               -4.424314  10.956953  -0.404  0.68699   
PopPalestina           -13.346079  21.806569  -0.612  0.54152   
PopSalUrb              -14.297670  23.961182  -0.597  0.55168   
PopPlanLib             -12.554268  31.182541  -0.403  0.68786   
PopCINvaLib             -8.914123  27.760783  -0.321  0.74861   
PopNBI                  -8.672707  22.341227  -0.388  0.69847   
PopLaLoma              -13.648683  29.902405  -0.456  0.64879   
PopPalmas               15.094555  40.931091   0.369  0.71285   
PopLagLon               16.672386  41.530567   0.401  0.68871   
PopRLFlor               16.260905  38.551718   0.422  0.67383   
PopAmpLag                      NA         NA      NA       NA   
SVL                     -0.117657   0.035157  -3.347  0.00105 **
Elevation:DomainOrange   0.007213   0.010326   0.699  0.48600   
Elevation:DomainYellow   0.001151   0.007470   0.154  0.87781   
Elevation:DomainRed     -0.019656   0.014268  -1.378  0.17054   
Elevation:DomainBlue    -0.010006   0.028448  -0.352  0.72558

```


```
Multiple R-squared:  0.4993,	Adjusted R-squared:  0.4309 
F-statistic: 7.296 on 19 and 139 DF,  p-value: 2.707e-13

```


#### CTmax and CTmin   

* tmp<-lm(CTmax ~ CTmin + Pop + Domain:Elevation, data = CTMax_min)

* tmp1<-lm(CTmax ~ CTmin + Elevation + Domain:Elevation, data = CTMax_min)

* tmp2<-lm(CTmax ~ CTmin + Elevation + Pop + SVL + Weight + Domain:Elevation, data = CTMax_min)

* tmp3<-lm(CTmax ~ CTmin + Elevation + Pop + SVL + Domain:Elevation, data = CTMax_min)

* tmp4<-lm(CTmax ~ CTmin + Domain:Elevation, data = CTMax_min)

* tmp5<-lm(CTmax ~ CTmin + Elevation + Pop + Domain:Elevation, data = CTMax_min)

#### Results

```
Model selection based on AICc:

      K     AICc Delta_AICc AICcWt Cum.Wt        LL
tmp3 22 480.4660     0.0000 0.7363 0.7363 -214.4285
tmp2 23 482.5195     2.0535 0.2637 1.0000 -214.0779
tmp  21 528.7481    48.2821 0.0000 1.0000 -240.2524
tmp5 21 528.7481    48.2821 0.0000 1.0000 -240.2524
tmp1  8 558.5762    78.1102 0.0000 1.0000 -270.8409
tmp4  8 558.5762    78.1102 0.0000 1.0000 -270.8409
```

** model 3 **

```
lm(formula = CTmax ~ CTmin + Elevation + Pop + SVL + Domain:Elevation, 
    data = CTMax_min)

Residuals:
    Min      1Q  Median      3Q     Max 
-3.2278 -0.4758 -0.0170  0.5097  3.7489 

Coefficients:
                         Estimate Std. Error t value Pr(>|t|)    
(Intercept)             38.025016   1.145584  33.193  < 2e-16 ***
CTmin                   -0.123486   0.056909  -2.170  0.03177 *  
Elevation               -0.011249   0.004159  -2.704  0.00772 ** 
PopGNBII                 0.334946   0.768256   0.436  0.66355    
PopSatMor                0.361262   1.065068   0.339  0.73499    
PopNvaLib                4.879736   2.746384   1.777  0.07786 .  
PopPalestina            -6.023362   4.209520  -1.431  0.15477    
PopSalUrb               -7.982854   4.802881  -1.662  0.09881 .  
PopPlanLib             -10.169662   5.091751  -1.997  0.04780 *  
PopCINvaLib             -5.340310   3.409009  -1.567  0.11957    
PopNBI                  -4.874019   3.276443  -1.488  0.13919    
PopLaLoma               -3.454240   3.742753  -0.923  0.35770    
PopPalmas               23.692558  11.942113   1.984  0.04929 *  
PopLagLon               26.020730  12.846453   2.026  0.04479 *  
PopRLFlor               28.277122  13.080801   2.162  0.03240 *  
PopAmpLag                0.787727  39.138225   0.020  0.98397    
SVL                      0.017451   0.024456   0.714  0.47674    
Elevation:DomainOrange   0.015905   0.006978   2.279  0.02421 *  
Elevation:DomainYellow   0.012485   0.004998   2.498  0.01369 *  
Elevation:DomainRed     -0.008850   0.009612  -0.921  0.35880    
Elevation:DomainBlue     0.009951   0.019043   0.523  0.60213

```

```
Multiple R-squared:  0.6138,	Adjusted R-squared:  0.5566 
F-statistic: 10.73 on 20 and 135 DF,  p-value: < 2.2e-16

```

