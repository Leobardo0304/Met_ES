# Leobardo Estrella Aldape 
# 05/09/2023
# Matricula: 2022958


# Importar datos ----------------------------------------------------------
# Funcion read.csv 
setwd("C:/Repositorio_Git/Met_ES/Codigos")                     
diametro <- read.csv("diametro.csv", header = T)


# Descriptivas  -----------------------------------------------------------

library(dplyr)
TA <- diametro %>%
  filter(Tratamiento == "TA")
TB <- diametro %>%
  filter(Tratamiento == "TB")
 
mean(TA$Diametro)
mean(TB$Diametro)

descriptor <- diametro %>%
  group_by(Tratamiento)%>%
  summarise(
    n = n(),
    media = mean(Diametro),
    mediana = median(Diametro),
    sd = sd (Diametro),
    var = var(Diametro)
  )

boxplot(diametro$Diametro ~ diametro$Tratamiento,
        xlab = "tratamiento",
        ylab = "longitud de diametro",
        main = "diametros leobardo",
        col = "red")
t.test(diametro$Diametro ~ diametro$Tratamiento, var.equal = T)


# Conclusion  -------------------------------------------------------------

## Existe una diferencia significativa, los que no cuentan con tratamiernto de fertilizante tienen diametros mayores  




        