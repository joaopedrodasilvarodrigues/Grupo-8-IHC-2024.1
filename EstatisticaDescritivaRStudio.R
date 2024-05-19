setwd("/home/jao/Área de Trabalho/Grupo-8-IHC-2024.1")
dados<-read.csv("Avaliação do CD-MOJ (respostas) - Respostas ao formulário 1.csv") 

#View(dados) 
a<-mean(dados$Com.que.frequência.você.utiliza.o.CD.Moj., na.rm = TRUE)
c<-mean(dados$Com.que.frequência.você.utiliza.bot.do.telegram..Mojinho., na.rm = TRUE)
b<-mean(dados$Quão.fácil.é.localizar.sua.turma.no.CD.Moj., na.rm = TRUE)
d<-mean(dados$Quão.rápido.o.CD.Moj.testa.seu.código., na.rm = TRUE)
e<-mean(dados$Qual.a.sua.dificuldade.de.interpretar.o.feedback.da.questão..e.g..WA..TLE..PE, na.rm = TRUE) 
f<-mean(dados$Caso.tenha.usado.o..Mojinho..Quão.difícil.é.interpretar.o.log., na.rm = TRUE) 
g<-mean(dados$Quão.difícil.é.achar.o.login.certo.para.a.lista.que.você.quer.fazer., na.rm = TRUE) 
cat("medias das colunas:\n")
print(a)
print(c)
print(b) 
print(d)
print(e)
print(f)
print(g) 
cat("\n\n\n")

meda<-median(dados$Com.que.frequência.você.utiliza.o.CD.Moj., na.rm = TRUE)
medc<-median(dados$Com.que.frequência.você.utiliza.bot.do.telegram..Mojinho., na.rm = TRUE)
medb<-median(dados$Quão.fácil.é.localizar.sua.turma.no.CD.Moj., na.rm = TRUE)
medd<-median(dados$Quão.rápido.o.CD.Moj.testa.seu.código., na.rm = TRUE)
mede<-median(dados$Qual.a.sua.dificuldade.de.interpretar.o.feedback.da.questão..e.g..WA..TLE..PE, na.rm = TRUE) 
medf<-median(dados$Caso.tenha.usado.o..Mojinho..Quão.difícil.é.interpretar.o.log., na.rm = TRUE) 
medg<-median(dados$Quão.difícil.é.achar.o.login.certo.para.a.lista.que.você.quer.fazer., na.rm = TRUE) 

print("mediana das colunas:")
print(meda)
print(medc)
print(medb) 
print(medd)
print(mede)
print(medf)
print(medg) 
cat("\n\n\n")

vara<-var(dados$Com.que.frequência.você.utiliza.o.CD.Moj., na.rm = TRUE)
varc<-var(dados$Com.que.frequência.você.utiliza.bot.do.telegram..Mojinho., na.rm = TRUE)
varb<-var(dados$Quão.fácil.é.localizar.sua.turma.no.CD.Moj., na.rm = TRUE)
vard<-var(dados$Quão.rápido.o.CD.Moj.testa.seu.código., na.rm = TRUE)
vare<-var(dados$Qual.a.sua.dificuldade.de.interpretar.o.feedback.da.questão..e.g..WA..TLE..PE, na.rm = TRUE) 
varf<-var(dados$Caso.tenha.usado.o..Mojinho..Quão.difícil.é.interpretar.o.log., na.rm = TRUE) 
varg<-var(dados$Quão.difícil.é.achar.o.login.certo.para.a.lista.que.você.quer.fazer., na.rm = TRUE) 

print("variância das colunas:")
print(vara)
print(varc)
print(varb) 
print(vard)
print(vare)
print(varf)
print(varg)  
cat("\n\n\n")

sda<-sd(dados$Com.que.frequência.você.utiliza.o.CD.Moj., na.rm = TRUE)
sdc<-sd(dados$Com.que.frequência.você.utiliza.bot.do.telegram..Mojinho., na.rm = TRUE)
sdb<-sd(dados$Quão.fácil.é.localizar.sua.turma.no.CD.Moj., na.rm = TRUE)
sdd<-sd(dados$Quão.rápido.o.CD.Moj.testa.seu.código., na.rm = TRUE)
sde<-sd(dados$Qual.a.sua.dificuldade.de.interpretar.o.feedback.da.questão..e.g..WA..TLE..PE, na.rm = TRUE) 
sdf<-sd(dados$Caso.tenha.usado.o..Mojinho..Quão.difícil.é.interpretar.o.log., na.rm = TRUE) 
sdg<-sd(dados$Quão.difícil.é.achar.o.login.certo.para.a.lista.que.você.quer.fazer., na.rm = TRUE) 

print("desvio padrão das colunas:")
print(sda)
print(sdc)
print(sdb) 
print(sdd)
print(sde)
print(sdf)
print(sdg)  
cat("\n\n\n")


h<-sapply(dados, mean, na.rm = TRUE) 
i<-sapply(dados, median, na.rm = TRUE) 
j<-sapply(dados, sd, na.rm = TRUE) 
k<-sapply(dados, var, na.rm = TRUE) 

print("media:")
print(h)
cat("\n\n\n")
print("mediana:")
print(i)
cat("\n\n\n")
print("desvio padrão:")
print(j) 
cat("\n\n\n")
print("variância:")
print(k) 
cat("\n\n\n")











