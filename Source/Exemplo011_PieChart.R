#gráficos de pizza
btable <- read.table('http://www.ats.ucla.edu/stat/r/modules/hsb2.csv', header=T, sep=",")
summary(btable)

#pie chart sem definir as cores desejadas
dev.off()
fatias <- c(sum(btable$female==1),sum(btable$female==0))
pie(fatias, main="Incritos por Gênero",labels=c("Feminino","Masculino"))

#pie chart definindo as cores
dev.off()
fatias <- c(sum(btable$female==1),sum(btable$female==0))
pie(fatias, main="Incritos por Gênero",labels=c("Feminino","Masculino")
    ,col=rainbow(length(fatias)))

#3D pie chart sem definir
#as cores desejadas
dev.off()
fatias <- c(nrow(subset(btable,btable$prog==1)),
            nrow(subset(btable,btable$prog==2)),
            nrow(subset(btable,btable$prog==3)))

pie3D(fatias, main="Inscritos por Programa"
      ,labels=c("Prog 1","Prog 2","Prog 3")
    ,col=rainbow(length(fatias))
    ,explode=0.1)