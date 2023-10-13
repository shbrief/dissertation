sample_data(yass)$penicillins <- 0
sample_data(yass)$cephalosporins <- 0
sample_data(yass)$macrolides <- 0
sample_data(yass)$sulfonamides <- 0
sample_data(yass)$other <- 0
sample_data(yass)$abx <- "none"


sample_data(yass)$abx[sample_data(yass)$study_condition=="Amoxicillin and clavulanic acid, Amoxicillin"] <- "penicillins"

sample_data(yass)$abx[sample_data(yass)$study_condition=="Amoxicillin"] <- "penicillins"
sample_data(yass)$penicillins[sample_data(yass)$study_condition=="Amoxicillin"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Cefalexin"] <- "cephalosporins"
sample_data(yass)$cephalosporins[sample_data(yass)$study_condition=="Cefalexin"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Amoxicillin and clavulanic acid"] <- "penicillins"
sample_data(yass)$penicillins[sample_data(yass)$study_condition=="Amoxicillin and clavulanic acid"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Azithromycin"] <- "macrolides"
sample_data(yass)$macrolides[sample_data(yass)$study_condition=="Azithromycin"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Amoxicillin, Amoxicillin and clavulanic acid"] <- "penicillins"
sample_data(yass)$penicillins[sample_data(yass)$study_condition=="Amoxicillin, Amoxicillin and clavulanic acid"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Amoxicillin and clavulanic acid, Amoxicillin and clavulanic acid"] <- "penicillins"
sample_data(yass)$penicillins[sample_data(yass)$study_condition=="Amoxicillin and clavulanic acid, Amoxicillin and clavulanic acid"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Trimetoprime and sulfadiazine, Amoxicillin"] <- "multi"
sample_data(yass)$sulfonamides[sample_data(yass)$study_condition=="Trimetoprime and sulfadiazine, Amoxicillin"] <- 1
sample_data(yass)$penicillins[sample_data(yass)$study_condition=="Trimetoprime and sulfadiazine, Amoxicillin"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Trimetoprime and sulfadiazine"] <- "sulfonamides"
sample_data(yass)$sulfonamides[sample_data(yass)$study_condition=="Trimetoprime and sulfadiazine"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Amoxicillin, Cefaclor, Azithromycin"] <- "multi"
sample_data(yass)$penicillins[sample_data(yass)$study_condition=="Amoxicillin, Cefaclor, Azithromycin"] <- 1
sample_data(yass)$macrolides[sample_data(yass)$study_condition=="Amoxicillin, Cefaclor, Azithromycin"] <- 1
sample_data(yass)$cephalosporins[sample_data(yass)$study_condition=="Amoxicillin, Cefaclor, Azithromycin"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Azithromycin, Cefalexin, Trimetoprime and sulfadiazine"] <- "multi"
sample_data(yass)$macrolides[sample_data(yass)$study_condition=="Azithromycin, Cefalexin, Trimetoprime and sulfadiazine"] <- 1
sample_data(yass)$cephalosporins[sample_data(yass)$study_condition=="Azithromycin, Cefalexin, Trimetoprime and sulfadiazine"] <- 1 
sample_data(yass)$sulfonamides[sample_data(yass)$study_condition=="Azithromycin, Cefalexin, Trimetoprime and sulfadiazine"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Azithromycin, Trimetoprime and sulfadiazine"] <- "multi"
sample_data(yass)$macrolides[sample_data(yass)$study_condition=="Azithromycin, Trimetoprime and sulfadiazine"] <- 1
sample_data(yass)$sulfonamides[sample_data(yass)$study_condition=="Azithromycin, Trimetoprime and sulfadiazine"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Amoxicillin, Cefalexin, Trimetoprime and sulfadiazine"] <- "multi"
sample_data(yass)$penicillins[sample_data(yass)$study_condition=="Amoxicillin, Cefalexin, Trimetoprime and sulfadiazine"] <- 1
sample_data(yass)$cephalosporins[sample_data(yass)$study_condition=="Amoxicillin, Cefalexin, Trimetoprime and sulfadiazine"] <- 1
sample_data(yass)$sulfonamides[sample_data(yass)$study_condition=="Amoxicillin, Cefalexin, Trimetoprime and sulfadiazine"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Cefaclor"] <- "cephalosporins"
sample_data(yass)$cephalosporins[sample_data(yass)$study_condition=="Cefaclor"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Amoxicillin and clavulanic acid, Trimetoprime and sulfadiazine"] <- "multi"
sample_data(yass)$penicillins[sample_data(yass)$study_condition=="Amoxicillin and clavulanic acid, Trimetoprime and sulfadiazine"] <- 1
sample_data(yass)$sulfonamides[sample_data(yass)$study_condition=="Amoxicillin and clavulanic acid, Trimetoprime and sulfadiazine"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Phenoxymethylpenicillin"] <- "penicillins"
sample_data(yass)$penicillins[sample_data(yass)$study_condition=="Phenoxymethylpenicillin"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Clarithromycin"] <- "macrolides"
sample_data(yass)$macrolides[sample_data(yass)$study_condition=="Clarithromycin"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Trimetoprime and sulfadiazine, Trimetoprime and sulfadiazine"] <- "sulfonamides"
sample_data(yass)$sulfonamides[sample_data(yass)$study_condition=="Trimetoprime and sulfadiazine, Trimetoprime and sulfadiazine"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Trimetoprime and sulfadiazine, Amoxicillin and clavulanic acid"] <- "multi"
sample_data(yass)$sulfonamides[sample_data(yass)$study_condition=="Trimetoprime and sulfadiazine, Amoxicillin and clavulanic acid"] <- 1
sample_data(yass)$penicillins[sample_data(yass)$study_condition=="Trimetoprime and sulfadiazine, Amoxicillin and clavulanic acid"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Amoxicillin and clavulanic acid, Azithromycin, Amoxicillin and clavulanic acid"] <- "multi"
sample_data(yass)$penicillins[sample_data(yass)$study_condition=="Amoxicillin and clavulanic acid, Azithromycin, Amoxicillin and clavulanic acid"] <- 1
sample_data(yass)$macrolides[sample_data(yass)$study_condition=="Amoxicillin and clavulanic acid, Azithromycin, Amoxicillin and clavulanic acid"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Clarithromycin, Cefalexin"] <- "multi"
sample_data(yass)$macrolides[sample_data(yass)$study_condition=="Clarithromycin, Cefalexin"] <- 1
sample_data(yass)$cephalosporins[sample_data(yass)$study_condition=="Clarithromycin, Cefalexin"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Cefalexin, Amoxicillin"] <- "multi"
sample_data(yass)$cephalosporins[sample_data(yass)$study_condition=="Cefalexin, Amoxicillin"] <- 1
sample_data(yass)$penicillins[sample_data(yass)$study_condition=="Cefalexin, Amoxicillin"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Ceftriaxone, Ceftriaxone"] <- "cephalosporins"
sample_data(yass)$cephalosporins[sample_data(yass)$study_condition=="Ceftriaxone, Ceftriaxone"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Amoxicillin, Trimetoprime and sulfadiazine"] <- "multi"
sample_data(yass)$penicillins[sample_data(yass)$study_condition=="Amoxicillin, Trimetoprime and sulfadiazine"] <- 1
sample_data(yass)$sulfonamides[sample_data(yass)$study_condition=="Amoxicillin, Trimetoprime and sulfadiazine"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Azithromycin, Amoxicillin and clavulanic acid" ] <- "multi"
sample_data(yass)$macrolides[sample_data(yass)$study_condition=="Azithromycin, Amoxicillin and clavulanic acid" ] <- 1
sample_data(yass)$penicillins[sample_data(yass)$study_condition=="Azithromycin, Amoxicillin and clavulanic acid" ] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Penicillin G, Netilmicin"] <- "multi"
sample_data(yass)$penicillins[sample_data(yass)$study_condition=="Penicillin G, Netilmicin"] <- 1
sample_data(yass)$other[sample_data(yass)$study_condition=="Penicillin G, Netilmicin"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Clarithromycin, Trimetoprime and sulfadiazine"] <- "multi"
sample_data(yass)$macrolides[sample_data(yass)$study_condition=="Clarithromycin, Trimetoprime and sulfadiazine"] <- 1
sample_data(yass)$sulfonamides[sample_data(yass)$study_condition=="Clarithromycin, Trimetoprime and sulfadiazine"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Ceftriaxone"] <- "cephalosporins"
sample_data(yass)$cephalosporins[sample_data(yass)$study_condition=="Ceftriaxone"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Amoxicillin and clavulanic acid, Trimetoprime and sulfadiazine, Cefalexin, Amoxicillin and clavulanic acid"] <- "multi"
sample_data(yass)$penicillins[sample_data(yass)$study_condition=="Amoxicillin and clavulanic acid, Trimetoprime and sulfadiazine, Cefalexin, Amoxicillin and clavulanic acid"] <- 1
sample_data(yass)$sulfonamides[sample_data(yass)$study_condition=="Amoxicillin and clavulanic acid, Trimetoprime and sulfadiazine, Cefalexin, Amoxicillin and clavulanic acid"] <- 1
sample_data(yass)$cephalosporins[sample_data(yass)$study_condition=="Amoxicillin and clavulanic acid, Trimetoprime and sulfadiazine, Cefalexin, Amoxicillin and clavulanic acid"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Amoxicillin, Amoxicillin and clavulanic acid, Amoxicillin, Amoxicillin and clavulanic acid, Trimetoprime and sulfadiazine, Azithromycin"] <- "multi"
sample_data(yass)$penicillins[sample_data(yass)$study_condition=="Amoxicillin, Amoxicillin and clavulanic acid, Amoxicillin, Amoxicillin and clavulanic acid, Trimetoprime and sulfadiazine, Azithromycin"] <- 1
sample_data(yass)$sulfonamides[sample_data(yass)$study_condition=="Amoxicillin, Amoxicillin and clavulanic acid, Amoxicillin, Amoxicillin and clavulanic acid, Trimetoprime and sulfadiazine, Azithromycin"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Azithromycin, Azithromycin"] <- "macrolides"
sample_data(yass)$macrolides[sample_data(yass)$study_condition=="Azithromycin, Azithromycin"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Amoxicillin, Amoxicillin"] <- "penicillins"
sample_data(yass)$penicillins[sample_data(yass)$study_condition=="Amoxicillin, Amoxicillin"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Cefalexin, Amoxicillin and clavulanic acid"] <- "multi"
sample_data(yass)$cephalosporins[sample_data(yass)$study_condition=="Cefalexin, Amoxicillin and clavulanic acid"] <-  1
sample_data(yass)$penicillins[sample_data(yass)$study_condition=="Cefalexin, Amoxicillin and clavulanic acid"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Cefalexin, Cefalexin, Azithromycin, Amoxicillin"] <- "multi"
sample_data(yass)$cephalosporins[sample_data(yass)$study_condition=="Cefalexin, Cefalexin, Azithromycin, Amoxicillin"] <- 1
sample_data(yass)$macrolides[sample_data(yass)$study_condition=="Cefalexin, Cefalexin, Azithromycin, Amoxicillin"] <- 1
sample_data(yass)$penicillins[sample_data(yass)$study_condition=="Cefalexin, Cefalexin, Azithromycin, Amoxicillin"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Trimetoprime and sulfadiazine, Azithromycin, Cefaclor"] <- "multi"
sample_data(yass)$sulfonamides[sample_data(yass)$study_condition=="Trimetoprime and sulfadiazine, Azithromycin, Cefaclor"] <- 1
sample_data(yass)$macrolides[sample_data(yass)$study_condition=="Trimetoprime and sulfadiazine, Azithromycin, Cefaclor"] <- 1
sample_data(yass)$cephalosporins[sample_data(yass)$study_condition=="Trimetoprime and sulfadiazine, Azithromycin, Cefaclor"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Systemic antibiotic NAS"] <- "other"
sample_data(yass)$other[sample_data(yass)$study_condition=="Systemic antibiotic NAS"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Amoxicillin and clavulanic acid, Azithromycin"] <- "multi"
sample_data(yass)$penicillins[sample_data(yass)$study_condition=="Amoxicillin and clavulanic acid, Azithromycin"] <- 1
sample_data(yass)$macrolides[sample_data(yass)$study_condition=="Amoxicillin and clavulanic acid, Azithromycin"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Cefalexin, Cefalexin, Trimetoprime and sulfadiazine"] <- "multi"
sample_data(yass)$cephalosporins[sample_data(yass)$study_condition=="Cefalexin, Cefalexin, Trimetoprime and sulfadiazine"] <- 1
sample_data(yass)$sulfonamides[sample_data(yass)$study_condition=="Cefalexin, Cefalexin, Trimetoprime and sulfadiazine"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Amoxicillin, Systemic antibiotic NAS" ] <- "multi"
sample_data(yass)$penicillins[sample_data(yass)$study_condition=="Amoxicillin, Systemic antibiotic NAS" ] <- 1
sample_data(yass)$other[sample_data(yass)$study_condition=="Amoxicillin, Systemic antibiotic NAS" ] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Trimetoprime and sulfadiazine, Trimetoprime and sulfadiazine, Amoxicillin, Amoxicillin"] <- "multi"
sample_data(yass)$sulfonamides[sample_data(yass)$study_condition=="Trimetoprime and sulfadiazine, Trimetoprime and sulfadiazine, Amoxicillin, Amoxicillin"] <- 1
sample_data(yass)$penicillins[sample_data(yass)$study_condition=="Trimetoprime and sulfadiazine, Trimetoprime and sulfadiazine, Amoxicillin, Amoxicillin"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Amoxicillin, Trimetoprime and sulfadiazine, Amoxicillin"] <- "multi"
sample_data(yass)$penicillins[sample_data(yass)$study_condition=="Amoxicillin, Trimetoprime and sulfadiazine, Amoxicillin"] <- 1
sample_data(yass)$sulfonamides[sample_data(yass)$study_condition=="Amoxicillin, Trimetoprime and sulfadiazine, Amoxicillin"] <- 1

sample_data(yass)$abx[sample_data(yass)$study_condition=="Cefaclor, Cefalexin"] <- "cephalosporins"

sample_data(yass)$cephalosporins[sample_data(yass)$study_condition=="Cefaclor, Cefalexin"] <- 1


sample_data(yass)$abxsum <- sample_data(yass)$penicillins+sample_data(yass)$macrolides+sample_data(yass)$cephalosporins+sample_data(yass)$sulfonamides+sample_data(yass)$other
sample_data(yass)$multiabx <- 0
sample_data(yass)$multiabx[sample_data(yass)$abxsum>1] <- 1