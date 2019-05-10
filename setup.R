# install packages from CRAN ---------------------------------------------------
cran_pkgs <- c("tidyverse", "remotes")
install.packages(cran_pkgs, repos = "https://cran.rstudio.com/",
                 dependencies = TRUE)


# install packages from GitHub -------------------------------------------------
github_pkgs <- c("wjakethompson/tidydscompanion")
remotes::install_github(github_pkgs, dependencies = TRUE, upgrade = TRUE)
