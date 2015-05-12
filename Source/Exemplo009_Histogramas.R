#dataset mtcars
mtcars$mpg

#histograma em sua forma mais simples...
range(mtcars$mpg)
hist(mtcars$mpg)

#com um número de "bins" diferente
hist(mtcars$mpg, breaks=10, col="blue")

#adicionando uma curva normal
#Em estatística e probabilidade, a distribuição normal, 
#também conhecida como Distribuição de Gauss ou Curva de Bell, 
#é uma observação sobre a dispersão de dados em diferentes ocorrências
dev.off()
x <- mtcars$mpg 
hst<-hist(x, breaks=10, col="blue", xlab="Milhas X Galão", 
        main="Histograma com Curva Normal") 

#distribuição normal, também conhecida como 
#Distribuição de Gauss ou Curva de Bell, 
#é uma observação sobre a dispersão de dados 
#em diferentes ocorrências, mais 
#reconhecida em valores aleatórios
#no r... a curva normal é obtida pela função dnorm
#curva normal precisa de x e y
#x é o range de consumo
#y é o conumo em si analisado pela função dnorm 
#que recebe a série de dados, média(mean) e o desvio padrão(sd) 
#densidade e distribuição...
xnorm <- seq(min(x),max(x),length=40) 
ynorm <- dnorm(xnorm,mean=mean(x),sd=sd(x)) 

#dnorm gera valores abaixo de zero... 
#ynorm X a diferença entre os dois primeiros pontos (h$mids) = +-2
#vezes o comprimento da série  (32) que dá 64...
ynorm <- ynorm*64 
lines(xnorm, ynorm, col="red", lwd=2)



