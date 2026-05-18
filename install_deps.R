# Run once to install all required packages
# Usage: Rscript install_deps.R

pkgs <- c(
  "readr",
  "tidyverse",
  "dplyr",
  "knitr",
  "broom",
  "patchwork",
  "corrplot",
  "rstatix",
  "kableExtra",
  "nlme"
)

missing <- pkgs[!pkgs %in% rownames(installed.packages())]

if (length(missing) > 0) {
  message("Installing: ", paste(missing, collapse = ", "))
  install.packages(missing, repos = "https://cran.rstudio.com/")
} else {
  message("All packages already installed.")
}

message("\nPackage versions:")
for (p in pkgs) {
  v <- tryCatch(as.character(packageVersion(p)), error = function(e) "NOT INSTALLED")
  cat(sprintf("  %-22s %s\n", p, v))
}
