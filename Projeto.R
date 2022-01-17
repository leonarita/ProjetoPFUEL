# instalando tidyverse
install.packages("tidyverse")

# libraries utilizadas
library(purrr)
library(ggplot2)

# importando dados
dados <- read.csv("BRAZIL_CITIES.csv", header = TRUE, sep = ";", fileEncoding = "UTF-8")
dados

# vendo tipagem dos dados
str(dados)




