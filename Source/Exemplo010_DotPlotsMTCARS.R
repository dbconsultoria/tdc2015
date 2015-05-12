# Dotplot
# Ordenação por consumo
dev.off()
xdot <- mtcars[order(mtcars$carb),] # ordernacao mpg
xdot$carb <- factor(xdot$carb) # precisa ser um fator para usar no plot
xdot$color[xdot$carb==8] <- "red"
xdot$color[xdot$carb==6] <- "purple"
xdot$color[xdot$carb==4] <- "brown"  
xdot$color[xdot$carb==3] <- "green"  
xdot$color[xdot$carb==2] <- "gray"  
xdot$color[xdot$carb==1] <- "blue"  
dotchart(xdot$mpg,labels=row.names(xdot),cex=.7,groups= xdot$carb,
         main="Consumo dos Veículos Agrupados por Nº Carburadores",
         xlab="Consumo", gcolor="black", color=xdot$color)

