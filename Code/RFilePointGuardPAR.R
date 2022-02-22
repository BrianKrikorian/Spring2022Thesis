#Reading Data
> pointGuards <- read.csv(file = 'Documents/GitHub/Spring2022Thesis/PointGuards.csv', stringsAsFactors = TRUE, header = TRUE)

#Initializing Variables
> position<-list(pointGuards$Pos)
> games<-list(pointGuards$G)
> minutesPlayed<-list(pointGuards$MP)
> fieldGoalPercentage<- list(pointGuards$FG.)
> threePointPercentage<-list(pointGuards$X3P.)
> twoPointPercentage<-list(pointGuards$X2P.)
> effectiveFieldGoalPercentage<-list(pointGuards$eFG.)
> freeThrowPercentage<-list(pointGuards$FT.)
> offensiveRebounds<-list(pointGuards$ORB)
> defensiveRebounds<-list(pointGuards$DRB)
> totalRebounds<-list(pointGuards$TRB)
> assists<-list(pointGuards$AST)
> steals<-list(pointGuards$STL)
> blocks<-list(pointGuards$BLK)
> turnovers<-list(pointGuards$TOV)
> personalFouls<-list(pointGuards$PF)
> points<-list(pointGuards$PTS)
> player<-list(pointGuards$Player)
> pointsPerMinute<-list(pointGuards$PPM)
> PER<-list(pointGuards$PER)
> trueShooting<-list(pointGuards$TS.)
> usagePercentage<-list(pointGuards$USG.)
> winShares<-list(pointGuards$WS)
> winSharesPer48<-list(pointGuards$WS.48)
> boxPlusMinus<-list(pointGuards$BPM)
> valueOver<-list(pointGuards$VORP)

#Methods
> offensivePoints<-function(effectiveFieldGoalPercentage, threePointPercentage, freeThrowPercentage, offensiveRebounds, assists, points, turnovers)
+ + {(200*effectiveFieldGoalPercentage)+(300*threePointPercentage)+(100*freeThrowPercentage)+(offensiveRebounds)+(3*assists)+(2*points)-(5*turnovers)}
> pgOffensivePoints <- mapply(offensivePoints, effectiveFieldGoalPercentage, threePointPercentage, freeThrowPercentage, offensiveRebounds, assists, points, turnovers)
> defensivePoints <- function(defensiveRebounds, totalRebounds, steals, blocks, personalFouls)
+ + {(2*defensiveRebounds)+(3*totalRebounds)+(5*steals)+(2*blocks)-(2*personalFouls)}
> pgDefensivePoints<-mapply(defensivePoints, defensiveRebounds, totalRebounds, steals, blocks, personalFouls)
> positionalAdjustment<-function(minutesPlayed)
+ + {((minutesPlayed/48)/72)*(minutesPlayed/2600)}
> pgPositionalAdjustment<-mapply(positionalAdjustment, minutesPlayed)
> offensiveAndDefensivePoints<-function(pgOffensivePoints, pgDefensivePoints)
+ + {pgOffensivePoints+pgDefensivePoints}
> pgOffensiveAndDefensivePoints<-mapply(offensiveAndDefensivePoints,pgOffensivePoints,pgDefensivePoints)
> pointsPerWin<-function(pgOffensiveAndDefensivePoints, minutesPlayed)
+ +  {48*((pgOffensiveAndDefensivePoints)/minutesPlayed)*8+16}
> pgPointsPerWin<-diag(mapply(pointsPerWin, pgOffensiveAndDefensivePoints, minutesPlayed))
> PAR<-function(pgOffensiveAndDefensivePoints, pgPositionalAdjustment, pgPointsPerWin)
+ + {(pgOffensiveAndDefensivePoints*pgPositionalAdjustment)/pgPointsPerWin}
> pgPAR<-diag(diag(mapply(PAR, pgOffensiveAndDefensivePoints,pgPositionalAdjustment,pgPointsPerWin)))

#Scaling Factors
> scaledOffensivePoints<-scale(pgOffensivePoints, center = TRUE, scale = TRUE)
> scaledDefensivePoints<-scale(pgDefensivePoints, center = TRUE, scale = TRUE)
> scaledPositionalAdjustment<-scale(pgPositionalAdjustment, center = TRUE, scale = TRUE)
> scaledPointsPerWin<-scale(pgPointsPerWin, center = TRUE, scale = TRUE)
> scaledPAR<-scale(pgPAR, center = TRUE, scale = TRUE)

#Performing Regression
> PPM<-as.numeric(pointGuards$PPM)
> regressionPARonPPM<-lm(scaledPAR ~ PPM)
> print(regressionPARandPPM)

> multipleRegression<-lm(scaledPAR ~ pointGuards$PER + pointGuards$WS + pointGuards$BPM + pointGuards$VORP)
> summary(multipleRegression)

> nonPARmultipleRegression<-lm(pointGuards$VORP ~ pointGuards$PER + pointGuards$WS + pointGuards$BPM )
> summary(nonPARmultipleRegression)

> anova(multipleRegression)
> vcov(multipleRegression)
> influence(multipleRegression)
> plot(multipleRegression)
> plot(regressionPARandPPM)
> sigma(multipleRegression)/mean(pgPAR)
> sigma(regressionPARandPPM)/mean(pgPAR)