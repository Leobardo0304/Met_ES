# Leobardo Estrella Aldape 
# 21/08/2023
# Matricula: 2022958


# Importar datos ----------------------------------------------------------
# Funcion read.csv (sirve para importar datos csv a R)
setwd("C:/Repositorio_Git/Met_ES/codigos")
mediciones <- read.csv("mediciones.csv", header = TRUE)
head(mediciones) #funcion head (sirve para ver primeros 6 datos)


# Descriptivas  -----------------------------------------------------------
# medidas de tendencia central media, mediana, rango 

mean(mediciones$Altutra) #calcular Media
median(mediciones$Altutra) #Mediana 
range(mediciones$Altutra) #Rango 
fivenum(mediciones$Altutra) #datos de boxplot

#medidas de dispersion desviacion estandar, varianza 

sd(mediciones$Altutra) #desviacion estandar 
var(mediciones$Altutra) #varianza


# Graficas  ---------------------------------------------------------------

boxplot(mediciones$Altutra, 
        col = "red", #color
        ylab = "altura (cm)", #variable 
        main = "sitio 1", #titulo
        ylim = c(6,14)) #Datos


# Hipotesis  --------------------------------------------------------------

# xobs = 10.17 vs xteo = 11
# plantas de cedro deben de alcanzar una altutra de 11 cm en un año
# de acuerdo a los dichos de viveristas.
# El valor de alfa refrencia es de 0.05


# Procedimiento  ----------------------------------------------------------
#Aplicar la funcion t.test #nunca voy a poner la media,se ponen todos los datos 

t.test(mediciones$Altutra, mu = 11) #Para comparar datos, sacar el pvalue para saber si es hipotesis nula o alternativa, mu es muestra teorica 
#df: grados de libertad

t.test(mediciones$Altutra, mu = 10.5)

t.test(mediciones$Altutra, mu = 10.6)

t.test(mediciones$Altutra, mu = 10.55)


# Replicabilidad  ---------------------------------------------------------

# Guardar la prueba de t en un objeto llamado "prueba"
prueba <- t.test(mediciones$Altutra, mu = 11)

#conocer los grados de libertad 
prueba$parameter
#Conocer el p-value
prueba$p.value
#conocer intervalos de confianza 
prueba$conf.int





