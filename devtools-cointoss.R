
# On the menu bar, go to "Session"
# Choose "Set Working Directory"
# Choose "To Project Directory"

# =====================================================
# Using devtools
# =====================================================

library(devtools)

pkg <- 'cointoss'

devtools::document(pkg = pkg)
devtools::check_man(pkg = pkg)
devtools::test(pkg = pkg)
devtools::build_vignettes(pkg = pkg)
devtools::build(pkg = pkg)
devtools::install(pkg = pkg)



# =====================================================
# R CMD
# =====================================================

# tarball builder
R CMD build cointoss

# tarball checker
R CMD check cointoss_0.1.0.tar.gz

# tarball installer
R CMD INSTALL cointoss_0.1.0.tar.gz

# create zip file for windows
R CMD INSTALL --build cointoss
