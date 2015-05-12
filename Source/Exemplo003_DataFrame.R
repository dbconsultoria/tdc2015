#função seq para gerar valores de um a 10 incrementados de 2 em 2
#gera vetores de cinco valores 
c1 <- seq(1,10,2)
c2 <- seq(11,20,2)
c3 <- seq(21,30,2)

#cria frame de tres colunas com cinco linhas
frame <- data.frame(c1,c2,c3)

#frame
print(frame)

#acessando os dados de uma coluna
frame$c1
frame[,1]
sum(frame$c1)

#acessando os dados de uma linha
sum(frame[1,])

#iterar as células da primeira linha
for(i in 1:length(frame[1,])){ 
  print(frame[1,i])
}

#iterar as células da primeira coluna
for(i in 1:length(frame[,1])){ 
  print(frame[i,1])
}

#transpose
t(frame)

#subsets
subset(frame,c1==1)