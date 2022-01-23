# Instalando pacotes
install.packages("tidyverse")
install.packages("dplyr")

# Importando libraries utilizadas
library(purrr)
library(ggplot2)
library(dplyr)

# Importando dados
dados <- read.csv("BRAZIL_CITIES.csv", header = TRUE, sep = ";", fileEncoding = "UTF-8")
dados

# Vendo tipagem dos dados
str(dados)

# Conhecendo melhor os dados: visualizando quantas cidades tem em cada estado
ggplot(data = dados) + geom_bar(mapping = aes(x = STATE))
dados %>% count(STATE)

# Conhecendo melhor os dados: visualizando a distribuição do IDH
ggplot(data = dados) + geom_histogram(mapping = aes(x = IDHM), binwidth = 0.1)
ggplot(data = dados, mapping = aes(x = IDHM)) + geom_histogram(binwidth = 0.1)
dados %>% count(cut_width(IDHM, 0.1))

# CASO 1
ggplot(data = dados, mapping = aes(x = IDHM, colour = STATE)) + geom_histogram(binwidth = 0.1)

# CASO 20
ggplot(data = dados, mapping = aes(x = IDHM, colour = IBGE_RES_POP_ESTR)) + geom_freqpoly(binwidth = 0.1)
ggplot(data = dados, mapping = aes(x = CITY, colour = IBGE_RES_POP_ESTR)) + geom_freqpoly(binwidth = 100)


