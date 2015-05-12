# Gráfico de Barras barplot usa 
#como recurso um table, diferente
#do frame o table não identifica linhas e colunas
btable <- table(mtcars$carb)
barplot(btable, main="Carburadores", 
        xlab="Número de Carburadores")

# Gráfico de Barras na Horizontal
btable <- table(mtcars$carb)
barplot(btable, main="Carburadores", horiz=TRUE, 
        xlab="Número de Carburadores", sub="Texto mais comprido")

# Barras coloridas e empilhadas
# Boas para comparar polaridades e valores de duas opções (M/F)
dev.off()
btable <- read.table('http://www.ats.ucla.edu/stat/r/modules/hsb2.csv', header=T, sep=",")
btable <- table(btable$female,btable$prog)

#empilhadas
barplot(btable, main="Alunos por Programa X Gênero",
        xlab="Programa", col=c("green","red"),
        legend = c("Masculino","Feminino"), sub="INSIGHT: ")
#lado a lado
barplot(btable, main="Alunos por Programa X Gênero",
        xlab="Programa", col=c("green","red"),beside=T,
        legend = c("Masculino","Feminino"), sub="INSIGHT: ")


