library(RMySQL)
#conexao
mydb = dbConnect(MySQL(), user="tdc", password="tdc", dbname="mysqlproject", host="127.0.0.1")

#resultset
rs = dbSendQuery(mydb, "select * from tbcategories")

#atribuindo o resultado em um data frame
data = fetch(rs, n=-1)

#determinando a classe 
class(data)

#mostrando os dados
data
