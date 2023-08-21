# Leobardo Estrella Aldape 
# 21/08/2023
# Matricula: 2022958


# Importar datos ----------------------------------------------------------
# Funcion read.csv (sirve para importar datos csv a R)

mediciones <- read.csv("Codigos/mediciones.csv", header = TRUE)
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






