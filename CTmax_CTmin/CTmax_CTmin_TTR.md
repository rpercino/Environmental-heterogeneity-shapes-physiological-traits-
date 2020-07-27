# Environmental heterogeneity shapes physiological traits in tropical direct-developing frogs

### This is a repository of the manuscript in development "Environmental heterogeneity shapes physiological traits in tropical direct-developing frogs"

###### Ruth Percino-Daniel, José M. Contreras López, Oswaldo Téllez-Valdés, Fausto R. Méndez de la Cruz, Alejandro Gonzalez-Voyer and Daniel Piñero.


### Data bases

* Critical thermal maximum (**CTmax**)
* Critical thermal minimum (**CTmin**)
* Thermal tolerance range (**TTR**)
* Warming tolerance (**WT**) 
* Cooling tolerance 
* CTmax and maximum daily temperature (**Tmax_hab**) 
* CTmin and minimum daily temperature (**Tmin-hab)** 

The data file is **CTMax_min_r** 

### Models using lm

#### CTmax models

* tmp1<-lm(CTmax ~ Pop:Elevation * factor(Domain), data = CTMax_min)

* tmp2<-lm(CTmax ~ Pop:Elevation + factor(Domain), data = CTMax_min)

* tmp6 <- lm(CTmax ~ Pop:Elevation + factor(Domain) + Elevation, data = CTMax_min)

* tmp8 <- lm(CTmax ~ Pop + Elevation + Domain:Elevation, data = CTMax_min)

#### Results

```
    df      AIC			BIC
tmp1 20 535.8746		598.7079
tmp2 20 535.8746		598.7079
tmp6 20 535.8746		598.7079
tmp8 20 533.7456		596.5788
```

```
      K     AICc Delta_AICc AICcWt Cum.Wt        LL
tmp8 20 539.3456     0.0000 0.4915 0.4915 -246.8728
tmp6 20 541.4746     2.1291 0.1695 0.6610 -247.9373
tmp1 20 541.4746     2.1291 0.1695 0.8305 -247.9373
tmp2 20 541.4746     2.1291 0.1695 1.0000 -247.9373
```

#### CTmin models

* tmp2<-lm(CTmin ~ Pop:Elevation + factor(Domain), data = CTMax_min)


* tmp6 <- lm(CTmin ~ Pop:Elevation + factor(Domain) + Elevation, data = CTMax_min)

* tmp8 <- lm(CTmin ~ Pop + Elevation + Domain:Elevation, data = CTMax_min)

#### Results

```
     df      AIC		BIC
tmp2 20 678.4009		741.5820
tmp6 20 678.4009		741.5820
tmp8 20 678.7171		741.8982
> 

```


```
Model selection based on AICc:

      K     AICc Delta_AICc AICcWt Cum.Wt        LL
tmp6 20 683.8911     0.0000 0.3504 0.3504 -319.2005
tmp2 20 683.8911     0.0000 0.3504 0.7008 -319.2005
tmp8 20 684.2073     0.3162 0.2992 1.0000 -319.3586

```
 
 
#### TTR models
* tmp2<-lm(TTR ~ Pop:Elevation + factor(Domain), data = CTMax_min)

* tmp6 <- lm(TTR ~ Pop:Elevation + factor(Domain) + Elevation, data = CTMax_min)

* tmp8 <- lm(TTR ~ Pop + Elevation + Domain:Elevation, data = CTMax_min)



### Results 
```
    df      AIC			BIC
tmp2 20 766.7304		829.4464
tmp6 20 766.7304		829.4464
tmp8 20 766.1281		828.8440
```


```
      K     AICc Delta_AICc AICcWt Cum.Wt        LL
tmp8 20 771.7656     0.0000 0.4032 0.4032 -363.0640
tmp2 20 772.3680     0.6023 0.2984 0.7016 -363.3652
tmp6 20 772.3680     0.6023 0.2984 1.0000 -363.3652
```

#### Warming tolerance (WT) models

* tmp2<-lm(WT ~ Pop:Elevation + factor(Domain), data = WT)

* tmp6 <- lm(WT ~ Pop:Elevation + factor(Domain) + Elevation, data = WT)

* tmp8 <- lm(WT ~ Pop + Elevation + Domain:Elevation, data = WT)

#### Results

```
     df      AIC		BIC
tmp2 20 527.9292		590.7624
tmp6 20 527.9292		590.7624
tmp8 20 529.6921		592.5254

```



```
Model selection based on AICc:

      K     AICc Delta_AICc AICcWt Cum.Wt        LL
tmp6 20 533.5292     0.0000 0.4142 0.4142 -243.9646
tmp2 20 533.5292     0.0000 0.4142 0.8284 -243.9646
tmp8 20 535.2921     1.7629 0.1716 1.0000 -244.8460
```



#### Cooling tolerance models 

* tmp2<-lm(Cool_T ~ Pop:Elevation + factor(Domain), data = CoolTol)

* tmp6 <- lm(Cool_T ~ Pop:Elevation + factor(Domain) + Elevation, data = CoolTol)

* tmp8 <- lm(Cool_T ~ Pop + Elevation + Domain:Elevation, data = CoolTol)

#### Results

```
    df      AIC			BIC
tmp2 20 676.0661		739.2472
tmp6 20 676.0661		739.2472
tmp8 20 676.4969		739.6780
```


```
Model selection based on AICc:

      K     AICc Delta_AICc AICcWt Cum.Wt        LL
tmp6 20 681.5563     0.0000 0.3564 0.3564 -318.0330
tmp2 20 681.5563     0.0000 0.3564 0.7127 -318.0330
tmp8 20 681.9871     0.4309 0.2873 1.0000 -318.2485

```

#### CTmax and Maximum daily temperature (Tmax_hab)

* tmp <- lm(CTmax ~ Pop:Elevation + Tmax_hab, data = WT)

* tmp1<-lm(CTmax ~ Pop:Elevation + Tmax_hab + factor(Domain), data = WT)

* tmp2<-lm(CTmax ~ Pop:Elevation + Tmax_hab * factor(Domain), data = WT) ## this is the model

* tmp8 <- lm(CTmax ~ Pop + Elevation + Tmax_hab + Domain:Elevation, data = WT)

#### Results

```
     df      AIC		BIC
tmp  17 530.0743		583.4825
tmp1 21 531.4367		597.4116
tmp2 24 522.0898		597.4897
tmp8 20 533.7456		596.5788
```


```
Model selection based on AICc:

      K     AICc Delta_AICc AICcWt Cum.Wt        LL
tmp2 24 530.3089     0.0000 0.8412 0.8412 -237.0449
tmp  17 534.0743     3.7653 0.1280 0.9693 -248.0371
tmp1 21 537.6380     7.3291 0.0215 0.9908 -244.7183
tmp8 20 539.3456     9.0366 0.0092 1.0000 -246.8728
```

#### CTmin and Minimum daily temperature (Tmin_hab)

* tmp <- lm(CTmin ~ Pop:Elevation + Tmin_hab, data = WT)

* tmp1<-lm(CTmin ~ Pop:Elevation + Tmin_hab + factor(Domain), data = WT)

* tmp2<-lm(CTmin ~ Pop:Elevation + Tmin_hab * factor(Domain), data = WT)

* tmp8 <- lm(CTmin ~ Pop + Elevation + Tmin_hab + Domain:Elevation, data = WT)

#### Results

```
     df      AIC		BIC
tmp  17 423.6021		476.9107
tmp1 21 424.5603		490.4121
tmp2 25 396.7561		475.1511
tmp8 21 423.4018		489.2536
```

```
Model selection based on AICc:

      K     AICc Delta_AICc AICcWt Cum.Wt        LL
tmp2 25 405.7839     0.0000      1      1 -173.3780
tmp  17 427.6284    21.8445      0      1 -194.8010
tmp8 21 429.6451    23.8612      0      1 -190.7009
tmp1 21 430.8036    25.0197      0      1 -191.2802
```

#### CTmax and CTmin   

* tmp0<-lm(CTmax ~ CTmin + Elevation, data = WT)

* tmp <- lm(CTmax ~ CTmin + Pop:Elevation, data = WT)

* tmp1<-lm(CTmax ~ CTmin + Pop:Elevation + factor(Domain), data = WT)

#### Results
```
     df      AIC		BIC
tmp0  4 589.6490		602.1922
tmp  17 523.3355		576.6441
tmp1 21 524.5941		590.4459
```


```
Model selection based on AICc:

      K     AICc Delta_AICc AICcWt Cum.Wt        LL
tmp  17 527.3619     0.0000 0.8504 0.8504 -244.6678
tmp1 21 530.8374     3.4755 0.1496 1.0000 -241.2971
tmp0  4 589.8914    62.5296 0.0000 1.0000 -290.8245
```