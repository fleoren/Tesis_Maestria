# This file contains all the packages necessary to run all visualizations,
# as well as all the parameters necessary

# Install whichever packages might be missing
.packages <- c("reshape2",
               "readxl",
               "tidyverse",
               "ggplot2",
               "forcats",
               #"RColorBrewer",
               "RColorBrewer")

.inst <- .packages %in% installed.packages()
if(any(!.inst)){
  install.packages(.packages[!.inst], repos = "http://cran.rstudio.com/")
}

# Load all packages
sapply(.packages, require, character.only = TRUE)

#### UTILS FOR ALL CODES

#Create a custom color scale for agents - lets use throughout the whole doc -----

# english scale
agent_colors_en <- c("#3484BB", "#FF8E2B", "#4AA334", "#D62627")
# c("#FE0068", "#F60027", "#FDB34B", "#F76B50", "#006D6F", "#6CAE3C") # if it contains customer and fields
names(agent_colors_en) <- c("Retail", "Wholesale", "Factory", "Regional_Warehouse")
agents_colors_en <- scale_colour_manual(name = "Agent",values = agent_colors_en)
# english scale
agent_colors_es <- c("#3484BB", "#FF8E2B", "#4AA334", "#D62627")
# c("#FE0068", "#F60027", "#FDB34B", "#F76B50", "#006D6F", "#6CAE3C") # if it contains customer and fields
names(agent_colors_es) <- c("Menudeo","Mayoreo","Almacen regional","Fabrica")
agents_colors_es <- scale_colour_manual(name = "Agente",values = agent_colors_es)


