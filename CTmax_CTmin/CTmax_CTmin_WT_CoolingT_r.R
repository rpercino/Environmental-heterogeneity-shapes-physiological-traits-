#####################################
#### Critical thermal maximum ####
#####################################
#
tmp1<-lm(CTmax ~ Pop:Elevation * factor(Domain), data = CTMax_min)
supuestos(tmp1)
summary(tmp1)

#
tmp2<-lm(CTmax ~ Pop:Elevation + factor(Domain), data = CTMax_min)
supuestos(tmp2)
summary(tmp2)
anova(tmp2)

#
tmp6 <- lm(CTmax ~ Pop:Elevation + factor(Domain) + Elevation, data = CTMax_min)
supuestos(tmp6)
summary(tmp6)

#
tmp8 <- lm(CTmax ~ Pop + Elevation + Domain:Elevation, data = CTMax_min)
supuestos(tmp8)
summary(tmp8)

par(mfrow=c(2,2), mar=c(4,4,2,1))
plot(tmp8)
anova(tmp8)
par(mfrow=c(1,1))

###
AIC(tmp1, tmp2, tmp6, tmp8)
BIC(tmp1, tmp2, tmp6, tmp8)

AICc(tmp1, tmp2, tmp6, tmp8)

library(AICcmodavg)
## AICc
Cand.models<-list(tmp1, tmp2, tmp6, tmp8)

Modnames<-c("tmp1", "tmp2", "tmp6", "tmp8")

print(aictab(cand.set = Cand.models, modnames = Modnames,
             second.ord = TRUE), digits = 4)

anova(tmp8, tmp2)

####################################################
######## Critical Thermal Minimum (CTmin) ##########
####################################################
#
tmp2<-lm(CTmin ~ Pop:Elevation + factor(Domain), data = CTMax_min) ## this is the model ###
supuestos(tmp2) ## seeems that this is the model ###
summary(tmp2)
anova(tmp2)

par(mfrow=c(2,2), mar=c(4,4,2,1))
plot(tmp2)

par(mfrow=c(1,1))

#
tmp6 <- lm(CTmin ~ Pop:Elevation + factor(Domain) + Elevation, data = CTMax_min)
supuestos(tmp6)
summary(tmp6)

par(mfrow=c(2,2), mar=c(4,4,2,1))
plot(tmp6)
anova(tmp6)
par(mfrow=c(1,1))

#
tmp8 <- lm(CTmin ~ Pop + Elevation + Domain:Elevation, data = CTMax_min)
supuestos(tmp8)
summary(tmp8)

par(mfrow=c(2,2), mar=c(4,4,2,1))
plot(tmp8)
anova(tmp8)
par(mfrow=c(1,1))

##
AIC(tmp2,tmp6, tmp8)
BIC(tmp2,tmp6, tmp8)
anova(tmp2,tmp6, tmp8)

## AICc
Cand.models<-list(tmp2, tmp6, tmp8)

Modnames<-c("tmp2", "tmp6", "tmp8")

print(aictab(cand.set = Cand.models, modnames = Modnames,
             second.ord = TRUE), digits = 4)

anova(tmp8, tmp2)


#################################################
########### Thermal tolerance range (TTR) #######
#################################################
#
tmp2<-lm(TTR ~ Pop:Elevation + factor(Domain), data = CTMax_min) ## this is the model ###
supuestos(tmp2) 
summary(tmp2)
anova(tmp2)

par(mfrow=c(2,2), mar=c(4,4,2,1))
plot(tmp2)

par(mfrow=c(1,1))

###
tmp6 <- lm(TTR ~ Pop:Elevation + factor(Domain) + Elevation, data = CTMax_min)
supuestos(tmp6)
summary(tmp6)

par(mfrow=c(2,2), mar=c(4,4,2,1))
plot(tmp6)
anova(tmp6)
par(mfrow=c(1,1))

##
tmp8 <- lm(TTR ~ Pop + Elevation + Domain:Elevation, data = CTMax_min)
supuestos(tmp8)
summary(tmp8)

par(mfrow=c(2,2), mar=c(4,4,2,1))
plot(tmp8)
anova(tmp8)
par(mfrow=c(1,1))


AIC(tmp2, tmp6, tmp8)
BIC(tmp2, tmp6, tmp8)

anova(tmp2, tmp8)

##
library(AICcmodavg)
## AICc
Cand.models<-list(tmp2, tmp6, tmp8)

Modnames<-c("tmp2", "tmp6", "tmp8")

print(aictab(cand.set = Cand.models, modnames = Modnames,
             second.ord = TRUE), digits = 4)

anova(tmp8, tmp2)

######################################
####### Warming Tolerance (WT) ########
#######################################
tmp2<-lm(WT ~ Pop:Elevation + factor(Domain), data = WT) ## this is the model ###
supuestos(tmp2) ## seeems that this is the model ###
summary(tmp2)
anova(tmp2)

##
tmp6 <- lm(WT ~ Pop:Elevation + factor(Domain) + Elevation, data = WT)
supuestos(tmp6)
summary(tmp6)

##
tmp8 <- lm(WT ~ Pop + Elevation + Domain:Elevation, data = WT)
supuestos(tmp8)
summary(tmp8)

par(mfrow=c(2,2), mar=c(4,4,2,1))
plot(tmp8)
anova(tmp8)
par(mfrow=c(1,1))

##
AIC(tmp2, tmp6, tmp8)
BIC(tmp2, tmp6, tmp8)

## AICc
Cand.models<-list(tmp2, tmp6, tmp8)

Modnames<-c("tmp2", "tmp6", "tmp8")

print(aictab(cand.set = Cand.models, modnames = Modnames,
             second.ord = TRUE), digits = 4)

#####################################################
############ Cooling tolerance ######################
#####################################################
#
tmp2<-lm(Cool_T ~ Pop:Elevation + factor(Domain), data = CoolTol) ## this is the model ###
supuestos(tmp2) 
summary(tmp2)
anova(tmp2)

#
tmp6 <- lm(Cool_T ~ Pop:Elevation + factor(Domain) + Elevation, data = CoolTol)
supuestos(tmp6)
summary(tmp6)

##
tmp8 <- lm(Cool_T ~ Pop + Elevation + Domain:Elevation, data = CoolTol)
supuestos(tmp8)
summary(tmp8)

par(mfrow=c(2,2), mar=c(4,4,2,1))
plot(tmp8)
anova(tmp8)
par(mfrow=c(1,1))

##
AIC(tmp2, tmp6, tmp8)
BIC(tmp2, tmp6, tmp8)

## AICc
Cand.models<-list(tmp2, tmp6, tmp8)

Modnames<-c("tmp2", "tmp6", "tmp8")

print(aictab(cand.set = Cand.models, modnames = Modnames,
             second.ord = TRUE), digits = 4)


####### CTmax with Tmax_hab lm ##############
#############################################
tmp <- lm(CTmax ~ Pop:Elevation + Tmax_hab, data = WT)
supuestos(tmp)
summary(tmp)
#
tmp1<-lm(CTmax ~ Pop:Elevation + Tmax_hab + factor(Domain), data = WT)
supuestos(tmp1)
summary(tmp1)

#
tmp2<-lm(CTmax ~ Pop:Elevation + Tmax_hab * factor(Domain), data = WT) ## this is the model ###
supuestos(tmp2) ## seeems that this is the model ###
summary(tmp2)
anova(tmp2)

tmp8 <- lm(CTmax ~ Pop + Elevation + Tmax_hab + Domain:Elevation, data = WT)
supuestos(tmp8)
summary(tmp8)

par(mfrow=c(2,2), mar=c(4,4,2,1))
plot(tmp8)
anova(tmp8)
par(mfrow=c(1,1))
### 
# AIC & BIC
AIC(tmp, tmp1, tmp2, tmp8)
BIC(tmp, tmp1, tmp2, tmp8)
#####
##
library(AICcmodavg)
## AICc
Cand.models<-list(tmp, tmp1, tmp2, tmp8)

Modnames<-c("tmp", "tmp1", "tmp2", "tmp8")

print(aictab(cand.set = Cand.models, modnames = Modnames,
             second.ord = TRUE), digits = 4)

###########################################
####### CTmin with Tmin_hab ###############
###########################################
#
tmp <- lm(CTmin ~ Pop:Elevation + Tmin_hab, data = WT)
supuestos(tmp)
summary(tmp)

#
tmp1<-lm(CTmin ~ Pop:Elevation + Tmin_hab + factor(Domain), data = WT)
supuestos(tmp1)
summary(tmp1)

#
tmp2<-lm(CTmin ~ Pop:Elevation + Tmin_hab * factor(Domain), data = WT) ## this is the model ###
supuestos(tmp2) ## seeems that this is the model ###
summary(tmp2)
anova(tmp2)

##
tmp8 <- lm(CTmin ~ Pop + Elevation + Tmin_hab + Domain:Elevation, data = WT)
supuestos(tmp8)
summary(tmp8)

## AICc
Cand.models<-list(tmp, tmp1, tmp2, tmp8)

Modnames<-c("tmp", "tmp1", "tmp2", "tmp8")

print(aictab(cand.set = Cand.models, modnames = Modnames,
             second.ord = TRUE), digits = 4)

#############################################
########### CTmax and CTmin #################
#############################################
#
tmp0<-lm(CTmax ~ CTmin + Elevation, data = WT)
supuestos(tmp0)
summary(tmp0)
#
tmp <- lm(CTmax ~ CTmin + Pop:Elevation, data = WT)
supuestos(tmp)
summary(tmp)
#
tmp1<-lm(CTmax ~ CTmin + Pop:Elevation + factor(Domain), data = WT)
supuestos(tmp1)
summary(tmp1)

##
AIC(tmp0, tmp, tmp1)
BIC(tmp0, tmp, tmp1)

## AICc
Cand.models<-list(tmp0, tmp, tmp1)

Modnames<-c("tmp0", "tmp", "tmp1")

print(aictab(cand.set = Cand.models, modnames = Modnames,
             second.ord = TRUE), digits = 4)


###########
#### Function for assess the assumpions for each model ###
supuestos <- function (modelo) {
  
  residuos <- resid(modelo, type = "pearson")
  predichos <- predict(modelo)
  
  par(mfrow = c(1, 2))
  
  plot(x = predichos,
       y = residuos,
       xlab = "Predichos",
       ylab = "Residuos de Pearson",
       main = "Grafico de dispersion de residuos v. predichos", 
       cex.main = 0.8 )
  
  abline(h = c(-2, 2, 0),
         col = c("red", "red", "black"),
         lty = c(2, 2, 1))
  
  qqnorm(residuos, cex.main = 0.8)
  qqline(residuos)
  
  shapiro.test(residuos)
  
}
