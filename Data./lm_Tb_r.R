##### lineal model for Tb #########

Crau_data_test$Pop<-factor(Crau_data_test$Pop, levels = c("GnalNB-II", "GnalNB", "SatMor", "NvaLib", "Palestina", "SalUrb", "PlanLib", "ArrNeg",
                                            "CINvaLib", "NBI", "LaLoma", "Palmas", "LagLon", "RLFlor", "AmpLag"))


Crau_data_test$Domain<-factor(Crau_data_test$Domain, levels = c("Green", "Orange", "Yellow", "Red", "Blue"))
##
Tb_all<-select(Crau_data_test, "Domain", "Year", "Elevation", "Pop", "BodyTemp", "SubsTemp", "AirTemp")

## lineal model ###

####
tmp1<-lm(BodyTemp ~ Pop + Elevation, data = Tb_all)
summary(tmp1)
anova(tmp1)
supuestos(tmp1)
par(mfrow=c(2,2), mar=c(4,4,2,1))
plot(tmp1)

par(mfrow=c(1,1))

####
tmp2<-lm(BodyTemp ~ Pop + Domain:Elevation, data = Tb_all)
summary(tmp2)
supuestos(tmp2)
anova(tmp2)

par(mfrow=c(2,2), mar=c(4,4,2,1))
plot(tmp2)

par(mfrow=c(1,1))


tmp3<-lm(BodyTemp ~ Pop:Elevation + Domain, data = Tb_all)
summary(tmp3)
anova(tmp3)
supuestos(tmp3)

par(mfrow=c(2,2), mar=c(4,4,2,1))
plot(tmp3)

par(mfrow=c(1,1))

tmp4<-lm(BodyTemp ~ Pop + Elevation + Domain, data = Tb_all)
summary(tmp4)

AIC(tmp1, tmp2, tmp3, tmp4)
BIC(tmp1, tmp2, tmp3, tmp4)

library(MuMIn)

AICc(tmp1, tmp2, tmp3, tmp4)
anova(tmp1, tmp2, tmp3, tmp4)
anova(tmp2, tmp3, test = "F")

########## Air Temperature ############
tmp1<-lm(AirTemp ~ Pop + Elevation, data = Tb_all)
summary(tmp1)
anova(tmp1)
supuestos(tmp1)
par(mfrow=c(2,2), mar=c(4,4,2,1))
plot(tmp1)

par(mfrow=c(1,1))



tmp2<-lm(AirTemp ~ Pop + Domain:Elevation, data = Tb_all)
summary(tmp2)
supuestos(tmp2)
anova(tmp2)

par(mfrow=c(2,2), mar=c(4,4,2,1))
plot(tmp2)

par(mfrow=c(1,1))

###### AirTemperature #################
tmp3<-lm(AirTemp ~ Pop:Elevation + Domain, data = Tb_all)
summary(tmp3)
anova(tmp3)
supuestos(tmp3)

par(mfrow=c(2,2), mar=c(4,4,2,1))
plot(tmp3)

par(mfrow=c(1,1))

tmp4<-lm(AirTemp ~ Pop + Elevation + Domain, data = Tb_all)
summary(tmp4)

###
AIC(tmp1, tmp2, tmp3, tmp4)
BIC(tmp1, tmp2, tmp3, tmp4)
anova(tmp1, tmp2, tmp3, tmp4)

anova(tmp2, tmp3)

########## Substrate Temperature ############
tmp1<-lm(SubsTemp ~ Pop + Elevation, data = Tb_all)
summary(tmp1)
supuestos(tmp1)
anova(tmp1)

par(mfrow=c(2,2), mar=c(4,4,2,1))
plot(tmp2)

par(mfrow=c(1,1))


tmp2<-lm(SubsTemp ~ Pop + Domain:Elevation, data = Tb_all)
summary(tmp2)
supuestos(tmp2)
anova(tmp2)

par(mfrow=c(2,2), mar=c(4,4,2,1))
plot(tmp2)

par(mfrow=c(1,1))

###### Substrate Temperature #################
tmp3<-lm(SubsTemp ~ Pop:Elevation + Domain, data = Tb_all)
summary(tmp3)
anova(tmp3)
supuestos(tmp3)

par(mfrow=c(2,2), mar=c(4,4,2,1))
plot(tmp3)

par(mfrow=c(1,1))

tmp4<-lm(SubsTemp ~ Pop + Elevation + Domain, data = Tb_all)
summary(tmp4)

AIC(tmp1, tmp2, tmp3, tmp4)
BIC(tmp1, tmp2, tmp3, tmp4)
anova(tmp1, tmp2, tmp3, tmp4)
anova(tmp2, tmp3)


anova(tmp2, tmp3)

## AICc
Cand.models<-list(tmp1, tmp2, tmp3, tmp4)

Modnames<-c("tmp1", "tmp2", "tmp3", "tmp4")

print(aictab(cand.set = Cand.models, modnames = Modnames,
             second.ord = TRUE), digits = 4)
