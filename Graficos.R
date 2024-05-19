setwd("/home/jao/Área de Trabalho/Grupo-8-IHC-2024.1")
dados<-read.csv("Avaliação do CD-MOJ (respostas) - Respostas ao formulário 1.csv") 

# Instalando o pacote (caso ainda não esteja instalado)
#install.packages("ggplot2")

# Carregando o pacote
library(ggplot2)
# Instalando e carregando o pacote corrplot para visualização
#install.packages("corrplot")
library(corrplot)



# Dados para plotar
l<-dados$Com.que.frequência.você.utiliza.o.CD.Moj.
m<-dados$Com.que.frequência.você.utiliza.bot.do.telegram..Mojinho.
n<-dados$Quão.fácil.é.localizar.sua.turma.no.CD.Moj.
o<-dados$Quão.rápido.o.CD.Moj.testa.seu.código.
p<-dados$Qual.a.sua.dificuldade.de.interpretar.o.feedback.da.questão..e.g..WA..TLE..PE
q<-dados$Caso.tenha.usado.o..Mojinho..Quão.difícil.é.interpretar.o.log.
r<-dados$Quão.difícil.é.achar.o.login.certo.para.a.lista.que.você.quer.fazer.




# Criando  gráficos de linhas, gráficos de barras e a matriz de correlação 

cat("\n\n\n")
print("Gráficos para a coluna: Com que frequência você utiliza o CD-Moj?")
cat("\n\n\n")
plot(l, type="l", main="Com que frequência você utiliza o CD-Moj?", xlab="Eixo X", ylab="Eixo Y", col="red")

categorias <- "Respostas"

# Criando um gráfico de barras
barplot(l, names.arg=categorias, col="cyan", main="Com que frequência você utiliza o CD-Moj", ylab="Valores")


cat("\n\n\n")
print("Gráficos para a coluna: Com que frequência você utiliza bot do telegram @Mojinho?")
cat("\n\n\n")
plot(m, type="l", main="Com que frequência você utiliza bot do telegram @Mojinho?", xlab="Eixo X", ylab="Eixo Y", col="red")
categorias <- "Respostas"

# Criando um gráfico de barras
barplot(m, names.arg=categorias, col="cyan", main="Com que frequência você utiliza bot do telegram @Mojinho?", ylab="Valores")



cat("\n\n\n")
print("Gráficos para a coluna: Quão fácil é localizar sua turma no CD-Moj?")
cat("\n\n\n")
plot(n, type="l", main="Quão fácil é localizar sua turma no CD-Moj?", xlab="Eixo X", ylab="Eixo Y", col="red")
categorias <- "Respostas"

# Criando um gráfico de barras
barplot(n, names.arg=categorias, col="cyan", main="Quão fácil é localizar sua turma no CD-Moj?", ylab="Valores")



cat("\n\n\n")
print("Gráficos para a coluna: Quão rápido o CD-Moj testa seu código? ")
cat("\n\n\n")
plot(o, type="l", main="Quão rápido o CD-Moj testa seu código?", xlab="Eixo X", ylab="Eixo Y", col="red")
categorias <- "Respostas"

# Criando um gráfico de barras
barplot(o, names.arg=categorias, col="cyan", main="Quão rápido o CD-Moj testa seu código?", ylab="Valores")


cat("\n\n\n")
print("Gráficos para a coluna: Qual a sua dificuldade de interpretar o feedback da questão? e.g. WA, TLE, PE")
cat("\n\n\n")
plot(p, type="l", main="Qual a sua dificuldade de interpretar o feedback da questão? e.g. WA, TLE, PE", xlab="Eixo X", ylab="Eixo Y", col="red")
categorias <- "Respostas"

# Criando um gráfico de barras
barplot(p, names.arg=categorias, col="cyan", main="Qual a sua dificuldade de interpretar o feedback da questão? e.g. WA, TLE, PE", ylab="Valores")


cat("\n\n\n")
print("Gráficos para a coluna: Caso tenha usado o @Mojinho, Quão difícil é interpretar o log?")
cat("\n\n\n")

plot(q, type="l", main="Caso tenha usado o @Mojinho, Quão difícil é interpretar o log?", xlab="Eixo X", ylab="Eixo Y", col="red")
categorias <- "Respostas"

# Criando um gráfico de barras
barplot(q, names.arg=categorias, col="cyan", main="Caso tenha usado o @Mojinho, Quão difícil é interpretar o log?", ylab="Valores")



cat("\n\n\n")
print("Gráficos para a coluna: Quão difícil é achar o login certo para a lista que você quer fazer?")
cat("\n\n\n")
plot(r, type="l", main="Quão difícil é achar o login certo para a lista que você quer fazer?", xlab="Eixo X", ylab="Eixo Y", col="red")
categorias <- "Respostas"

# Criando um gráfico de barras
barplot(r, names.arg=categorias, col="cyan", main="Quão difícil é achar o login certo para a lista que você quer fazer?", ylab="Valores") 

#Matriz de correlação


# Criando um data frame 
z <- data.frame(
  var1 = l,
  var2 = m,
  var3 = n,
  var4 = o,
  var5 = p,
  var6 = q,
  var7 = r
)

# Visualizando os dados
print(z)

# Calculando a matriz de correlação
matriz_correlacao <- cor(z)

# Visualizando a matriz de correlação
print(matriz_correlacao)

# Instalando o pacote (caso ainda não esteja instalado)
#install.packages("Hmisc")

# Carregando o pacote
library(Hmisc)

# Calculando a matriz de correlação com p-values
correlacao_pvalues <- rcorr(as.matrix(z))

# Visualizando a matriz de correlação
print(correlacao_pvalues$r)

# Visualizando a matriz de p-values
print(correlacao_pvalues$P)

# Instalando o pacote (caso ainda não esteja instalado)
#install.packages("corrplot")

# Carregando o pacote
library(corrplot)

# Criando um gráfico de correlação
corrplot(matriz_correlacao, method = "circle")




