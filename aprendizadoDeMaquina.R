#NOME: J�DYLA MARIA CES�RIO FIRMINO
#7� PER�ODO - ENGENHARIA DE COMPUTA��O
#APRENDIZADO DE M�QUINA - KOBE BRYANT

#install.packages("class")
library("tidyverse")
library("readr")
library("class")
library("base")
library("dplyr")


treinamento <- read_csv("treino.csv")
separaTreino <- treinamento

#--------------------------------------------------------------------------
#T�PICO 1 - CROSS-VALIDATION
#ser�o separadas 42 parti��es com 199 inst�ncias cada uma, sendo 159 para treinamento e 40 para teste, e esta
#separa��o ser� feito por um 'for' que percorrer� as linhas

for (i in 1:2) {
  part <- separaTreino[sample(nrow(separaTreino), 159), replace = FALSE]
  separaTreino <- setdiff(separaTreino, part)
  partTeste <- separaTreino[sample(nrow(separaTreino), 40), replace = FALSE]
  separaTreino <- setdiff(separaTreino, partTeste)
  View(separaTreino)
}
  



#--------------------------------------------------------------------------
#T�PICO 2 - M�TRICAS DE AN�LISE



#--------------------------------------------------------------------------
#T�PICO 3 - DEFINI��O DO ALGORITMO BASELINE



#--------------------------------------------------------------------------
#T�PICO 4 - KNN



#--------------------------------------------------------------------------
#T�PICO 5 - DECISION TREE



#--------------------------------------------------------------------------
#T�PICO 6 - MLP (Multilayer Perceptron)



#--------------------------------------------------------------------------
#T�PICO 7 - AN�LISE DOS RESULTADOS ALGORITMO BASELINE



#--------------------------------------------------------------------------
#T�PICO 3 - AN�LISE KNN, DECISION TREE E MLP