# Leobardo Estrella Aldape 
# 28/08/2023
#Maricula: 2022958

#Dos tratamientos Cntrl y Fert1, un grupo de plantas 
#Prueba de t independientes 



# Importar ----------------------------------------------------------------

setwd( "C/Repositorio_GIT/Met_ES/Codigos")
vivero <- read. csv("IE.csv", header = T)

# Descriptivas ------------------------------------------------------------

# Usar la libreria dplyr para seleccionar datos mediante
#restricciones 
library(dplyr)

Ctrl<- vivero %>%
  filter(Tratamiento == "Ctrl") #separar de tabla las plantas con y sin fertilizante


Fert <- vivero %>%
  filter(Tratamiento == "Fert")

mean(Ctrl$IE) #Media
mean(Fert$IE)


descriptor <- vivero %>%
  group_by(Tratamiento) %>%
  summarise(
    n = n(),
    media = mean(IE), 
    mediana = median(IE),
    sd = sd(IE),
    var = var(IE)
    
  )

# Grafica -----------------------------------------------------------------

boxplot(vivero$IE ~ vivero$Tratamiento,
        xlab = "Tratamiento",
        ylab = "Indice de Esbeltes",
        main = "Vivero Leobardo",
        col = "red")

t.test(vivero$IE ~ vivero$Tratamiento, var.equal = T)

