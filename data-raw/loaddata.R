elections_eu <- read.csv("data-raw/eu_election_results.csv", header = TRUE)
colnames(elections_eu) <- c("Country","Year","Total","EPP","S&D","ALDE","EFA","ECR","ENF","EFD","GUE","IN","Other")
elections_eu$Year <- as.factor(elections_eu$Year)
usethis::use_data(elections_eu, overwrite = TRUE)
