## Exploratory Data Analysis

setwd("D:/R Projects/SM-3/SM-3 Project")

archery_men = read.csv("Data/CSV/archery_men.csv")
archery_women = read.csv("Data/CSV/archery_women.csv")
shooting_pistol_men = read.csv("Data/CSV/shooting_pistol_men.csv")
shooting_pistol_women = read.csv("Data/CSV/shooting_pistol_women.csv")
shooting_rifle_men = read.csv("Data/CSV/shooting_rifle_men.csv")
shooting_rifle_women = read.csv("Data/CSV/shooting_rifle_women.csv")

AM = unlist(archery_men, use.names = FALSE)
AM = na.omit(AM)

AW = unlist(archery_women, use.names = FALSE)
AW = na.omit(AW)

SPM = unlist(shooting_pistol_men, use.names = FALSE)
SPM = na.omit(SPM)

SPW = unlist(shooting_pistol_women, use.names = FALSE)
SPW = na.omit(SPW)

SRM = unlist(shooting_rifle_men, use.names = FALSE)
SRM = na.omit(SRM)

SRW = unlist(shooting_rifle_women, use.names = FALSE)
SRW = na.omit(SRW)