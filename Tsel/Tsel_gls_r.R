library(nlme)

# Order the bioclimatic domains
myvar3$Domain<-factor(myvar3$Domain, levels = c("Green", "Orange", "Yellow", "Red", "Blue"))

# Order the pop2 (pops by year)
myvar3$Pop2 = factor(myvar3$Pop2, levels =c("GNBII17", "SatMor17", "NvaLib17", "NvaLib18", "Pales18", "SalUrb18", "PlanLib17", "ArrNeg17",
                                            "CINvaLib17", "CINvaLib18", "NBI17", "NBI18", "LaLoma17", "LaLoma18", "Palm18" , "LagLon18", "RLFlor17",
                                            "AmpLag17", "AmpLag18"))

## Order pops by year
myvar3$Pop = factor(myvar3$Pop, levels =c("GNBII", "SatMor", "NvaLib", "Palestina", "SalUrb", "PlanLib", "ArrNeg",
                                          "CINvaLib", "NBI", "LaLoma", "Palmas" , "LagLon", "RLFlor",
                                          "AmpLag"))


### Models 
tsel0<-gls(Temperature ~ Pop:Elevation, correlation = corCompSymm( form = ~1|Indv), weights=varIdent(form=~1|Domain), data = myvar3, na.action=na.omit)
tsel<-gls(Temperature ~ Pop:Elevation + Domain, correlation = corCompSymm( form = ~1|Indv), weights=varIdent(form=~1|Domain), data = myvar3, na.action=na.omit)
tsel1<-gls(Temperature ~ Pop + Elevation, correlation = corCompSymm( form = ~1|Indv), weights=varIdent(form=~1|Domain), data = myvar3, na.action=na.omit)
tsel2<-gls(Temperature ~ Pop + Domain:Elevation, correlation = corCompSymm( form = ~1|Indv), weights=varIdent(form=~1|Domain), data = myvar3, na.action=na.omit)

tsel3<-gls(Temperature ~ Elevation:Pop + Domain, correlation = corAR1( form = ~1|Indv), weights=varIdent(form=~1|Domain), data = myvar3, na.action=na.omit)
tsel4<-gls(Temperature ~ Pop + Elevation, correlation = corAR1( form = ~1|Indv), weights=varIdent(form=~1|Domain), data = myvar3, na.action=na.omit)

tsel5<-gls(Temperature ~ Pop + Domain:Elevation, correlation = corCompSymm( form = ~1|Indv), data = myvar3, na.action=na.omit)

###
AIC(tsel, tsel0, tsel1, tsel2, tsel3, tsel4, tsel5)
AICc(tsel, tsel0, tsel1, tsel2, tsel3, tsel4, tsel5)


BIC(tsel, tsel0, tsel1, tsel2, tsel3, tsel4, tsel5)

logLik(tsel, REML = FALSE)
logLik(tsel0, REML = FALSE)
logLik(tsel1, REML = FALSE)
logLik(tsel2, REML = FALSE)
logLik(tsel3, REML = FALSE)
logLik(tsel4, REML = FALSE)
logLik(tsel5, REML = FALSE)


library(AICcmodavg)
## AICc
Cand.models<-list(tsel, tsel0, tsel1, tsel2, tsel3, tsel4, tsel5)

Modnames<-c("tsel", "tsel0", "tsel1", "tsel2", "tsel3", "tsel4", "tsel5")

print(aictab(cand.set = Cand.models, modnames = Modnames,
             second.ord = TRUE), digits = 4)
