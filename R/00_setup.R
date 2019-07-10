####### Antes de empezar cualquier cosa ########################################
### 181126       Alfonso Garmendia                        algarsal at upv dot es
###
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#### Packages ####
lib <- c("googledrive",  # Import export data from Drive
         # "WriteXLS",     # Easy export data frames
         # "ggplot2",      # best plots
         # "cowplot",      # Combine plots
         # "agricolae",    # Common analyses for agriculture
         # "viridis",      # palette for colorblind
         # "ggsci",        # palette for scientific journals
         # "bibtex",        # to manage bibliography
         "rmarkdown"
         )

#### packages not to cite ####
nocite <- c("googledrive", "WriteXLS", "bibtex", "rmarkdown")

#### Install if not present ####
# i <- lib[1]
for (i in lib) {
  if (!require(i, character.only = TRUE))
    install.packages(i, dep = TRUE, repos = "http://cran.rstudio.com/")

  # ### Check if needs update version DONT WORK
  # old <- old.packages()
  # old <- as.data.frame(old)
  # # old <- old[old[, 1] == i, ]
  # old <- old[old$Package == i, ]
  # oldv <- old$ReposVer
  # if (as.numeric_version(packageVersion(i)) < as.numeric_version(oldv))
  #   install.packages(i, dep = TRUE, repos = "http://cran.rstudio.com/")

  ### load
  library(i, character.only = TRUE)
 }

### Remove not cited packages
lib <- lib[!lib %in% nocite]

#### rm
rm(i, nocite)
