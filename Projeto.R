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

# Tratando dados
dados_tratados <- dados %>% filter(!is.na(dados$IDHM))
dados_tratados

# Conhecendo melhor os dados: visualizando a distribuição do IDH
ggplot(data = dados_tratados) + geom_histogram(mapping = aes(x = IDHM), binwidth = 0.1)
ggplot(data = dados_tratados, mapping = aes(x = IDHM)) + geom_histogram(binwidth = 0.1)
dados_tratados %>% count(cut_width(IDHM, 0.1))

# Aplicando análise de dados
ggplot(data = dados_tratados, mapping = aes(x = IDHM, colour = STATE)) + geom_histogram(binwidth = 0.1)

ggplot(data = dados_tratados, mapping = aes(x = IDHM_Renda, colour = STATE)) + geom_histogram(binwidth = 0.1)
ggplot(data = dados_tratados, mapping = aes(x = IDHM_Longevidade, colour = STATE)) + geom_histogram(binwidth = 0.1)
ggplot(data = dados_tratados, mapping = aes(x = IDHM_Educacao, colour = STATE)) + geom_histogram(binwidth = 0.1)

# Calculando médias entre os valores de IDH
mean(dados_tratados$IDHM)
mean(dados_tratados$IDHM_Renda)
mean(dados_tratados$IDHM_Longevidade)
mean(dados_tratados$IDHM_Educacao)

# Calculando desvio padrão entre os valores de IDH
sd(dados_tratados$IDHM)
sd(dados_tratados$IDHM_Renda)
sd(dados_tratados$IDHM_Longevidade)
sd(dados_tratados$IDHM_Educacao)




