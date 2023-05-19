# Generate list of studies for Aim 1
# January 25th, 2022


# Set Seed
set.seed(192754)

# Fetch BSDB data
library(bugsigdbr)
bsdb <- bugsigdbr::importBugSigDB("devel")

# The file is signature level--create a dataset of unique studies
studies <- bsdb %>% group_by(PMID) %>%  summarize(design=first(`Study design`),
                                       PMID=first(PMID),
                                       host = first(`Host species`),
                                       doi = first(`DOI`),
                                       title = first(`Title`)
                                       )

# Create separate lists of cross-sectional, longitudinal, animal, and RCT studies
library(dplyr)
csdesigns <- c("case-control", "cross-sectional observational, not case-control")
longdesigns <- c("time series / longitudinal observational", "prospective cohort")

csStudies <- studies %>% filter(design %in% csdesigns)
longStudies <- studies %>% filter(design %in% longdesigns)
animalStudies <- studies %>% filter(host != "Homo sapiens")
rctStudies <- studies %>% filter(design == "randomized controlled trial")

# Create a random sample equal to the number of rows
# This essentially randomly orders the rows
csRand <- sample(nrow(csStudies))
cs <- csStudies[csRand,]

longRand <- sample(nrow(longStudies))
long <- longStudies[longRand,]

animalRand <- sample(nrow(animalStudies))
animal <- animalStudies[animalRand,]

rctRand <- sample(nrow(rctStudies))
rct <- rctStudies[rctRand,]

write.csv(cs, "cross-sectional studies randomized.csv")
write.csv(long, "longitudinal studies randomized.csv")
write.csv(animal, "animal studies randomized.csv")
write.csv(rct, "rct studies randomized.csv")
