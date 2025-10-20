# Method A: Opening a .Rproj file in RStudio, "renv" will be automatically activated if it exists
# Benefits: no need to re-set for every script under the project.

# In the Console
renv::init()

# Install packages as normal
install.packages("dplyr")

# Save the package list
renv::snapshot()

# Other info
renv::restore()
renv::deactivate()


# ============================================
# Method B: Set Global Environment Variable "R_LIBS_USER"
# Add the following line to your ~/.Renviron file:
R_LIBS_USER="~/R/user_library"
# Restart R: Save and close the file, then restart your R session.

# 1) Check the path 
Sys.getenv("R_LIBS_USER")

# 2) Check the path 
.libPaths()
# The custom path should appear at the top of the search path list
# [1] "/home/user/my_custom_r_packages" 
# [2] "/usr/lib/R/library"

# Packages will now install to and load from this path by default.
