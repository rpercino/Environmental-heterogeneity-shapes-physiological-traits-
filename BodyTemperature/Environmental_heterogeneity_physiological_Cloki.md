# Environmental heterogeneity shapes physiological traits in tropical direct-developing frogs

### This is a repository of the manuscript in development "Environmental heterogeneity shapes physiological traits in tropical direct-developing frogs"

###### Ruth Percino-Daniel, José M. Contreras López, Oswaldo Téllez-Valdés, Fausto R. Méndez de la Cruz, Alejandro Gonzalez-Voyer and Daniel Piñero.


### Data bases
 * Body, substrate and air temperature
 * Operative temperature
 * Critical Thermal limits

 #### Body Temperature
  
* Model 1: BodyTemp ~ Pop + Elevation
* Model 2: BodyTemp ~ Pop + Domain:Elevation 
* Model 3: BodyTemp ~ Pop:Elevation + Domain 
* Model 4: BodyTemp ~ Pop + Elevation + Domain

model 3
![](https://github.com/rpercino/Environmental-heterogeneity-shapes-physiological-traits-/blob/master/BodyTemperature/lm_tb_m3.pdf)


 ### Results

```
df	AIC		BIC
tmp1 17 1067.433 	1004.2997
tmp2 21 1026.923 	948.9346
tmp3 21 1026.333 	948.3446
tmp4 17 1004.2997	1067.433 
```

#### Air Temperature ####
* Model 1: AirTemp ~ Pop * Elevation
* Model 2: AirTemp ~ Pop + Domain:Elevation
* Model 3: AirTemp ~ Pop:Elevation + Domain
* Model 4: AirTemp ~ Pop + Elevation + Domain
 
 
 model 3
 ![](lm_air_m3.pdf)
 
 ### Results
 
 
``` 
df	AIC		BIC
tmp1 31 1076.676	1195.098
tmp2 21 1120.540	1200.762
tmp3 21 1116.950	1197.171
tmp4 17 1182.433	1247.374
```
#### Substrate Temperature ####

* Model 1: SubsTemp ~ Pop + Elevation
* Model 2: SubsTemp ~ Pop + Domain:Elevation 
* Model 3: SubsTemp ~ Pop:Elevation + Domain 
* Model 4: SubsTemp ~ Pop + Elevation + Domain

model 3
![](lm_substrate_m3.pdf)


 ### Results

```
df	AIC		BIC
tmp1 17 1172.461	1237.402
tmp2 21 1121.002	1201.224
tmp3 21 1118.292	1198.513
tmp4 17 1172.461	1237.402
```


