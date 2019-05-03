# install packages from CRAN ---------------------------------------------------
cran_pkgs <- c("tidyverse", "here", "skimr",
               "fivethirtyeight", "babynames", "nycflights13",
               "maps", "viridis", "mapproj",
               "remotes")
install.packages(cran_pkgs, repos = "https://cran.rstudio.com/",
                 dependencies = TRUE)

# install packages from GitHub -------------------------------------------------
github_pkgs <- c("tidyverse/tidyr")
remotes::install_github(github_pkgs, dependencies = TRUE, upgrade = TRUE)
