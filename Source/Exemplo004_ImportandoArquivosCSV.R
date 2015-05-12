#DIRETORIO DE TRABALHO
setwd("c:/tmp")

#Read.csv lê os arquivos
read.csv("pop2005_2009.csv")

#Load nos dados de countries.csv
#importante: usar letras antes dos nomes das colunas
#row names na primeira coluna
countries <- read.csv("pop2005_2009.csv", sep=";", row.names=1)

#nomes de coluna devem comecar com letras
make.names("2001")

#lendo os dados da australia
countries["Australia", ]

#populacao do chile de 2005 2007
countries["Chile", 1:3]

#média da populacao
mean(countries["Chile", 1:5])
mean(as.numeric(countries["Chile", 1:5]))