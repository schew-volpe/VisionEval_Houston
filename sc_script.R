library(visioneval)
source("VisionEval.R")
# Run models ----

# This works, the standard model:
installModel("VERSPM") 
VERSPM <- openModel('VERSPM-base')

# Difficult to debut what Sharon gave us.
# don't need to do this

#installModel("VERSPM",variant = "Houston") # This only works for those that are known
bzone_base32 <- openModel('VERSPM-base-Houston32')
# run_model at the top (traditionally)
# New Architecture
# with a .cnf file, it's new 

# Run models
hgac_single <- openModel('VERSPM-HGAC_32_single')
hgac_single$run()

hgac_bike <- openModel('VERSPM-HGAC_32_more_bikes')
hgac_bike$run()

# Query Results ----

hgac_single <- hgac_single$results()
hgac_single$export()
hgac_bike <- hgac_bike$results()
hgac_bike$export()
