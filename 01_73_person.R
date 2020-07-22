# Description: storing personal information

mnr <- person(given = "Mark",
              family = "Niemann-Ross",
              email = "mark@niemannross.com",
              role = c("aut", "cph"),
              comment = c("writes Science Fiction", 
                          ORCID = "0000-0002-3381-4604")
              )

theBeatles <- as.person("John Lennon, Paul McCartney, George Harrison, Ringo Starr")

theBeatles
theBeatles$family
theBeatles[[1]]$family

# resist using "first" "middle" "last". Deprecated and euro-centric.
# for role, use codes at loc.gov/marc/relators/relaterm.html
# "Open Researcher and Contributor ID" (ORCiD) at orcid.org and rorcid package