# ================== Initilization ==================
# Step 1 Define your local library path

local_lib_path <- "~/R/local_libs" 

# Create the folder if it doesn't exist
if (!dir.exists(local_lib_path)) {
  dir.create(local_lib_path, recursive = TRUE)
}

# Step 2 Install packages to the custom path
install.packages(c("ggplot2", "remotes"), lib = local_lib_path)

# Example using remotes::install_version (MUST specify version)
remotes::install_version("rms", version = "6.7-0", lib = local_lib_path)


# ================= Re-login ====================
# Step 3: Load Packages (Essential)
# Add your custom path to R's search list
.libPaths(c(local_lib_path, .libPaths())) # We add the new path FIRST

# Check if the path is active (your path should be listed first)
print(.libPaths())

# Now, you can load your locally installed packages
library(ggplot2)
library(rms)
