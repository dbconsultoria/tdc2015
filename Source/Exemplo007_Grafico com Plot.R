#fazendo um gráfico em linhas com o crescimento da 
#população do chile 
countries["Chile", 1:5]

#plot simples
plot(c(2005,2006,2007,2008,2009),countries["Chile", 1:5]/1000000)
#plot com mais informações
plot(c(2005,2006,2007,2008,2009),countries["Chile", 1:5]/1000000,main="População",xlab="Anos",ylab="População",type="o")
#lines(countries["Australia", 1:5]/1000000)#,col=red)
