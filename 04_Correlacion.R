# Correlacion 
# 25/09/2023
# Leobardo Estrella 


# Importar  ---------------------------------------------------------------

setwd ( "C:/Repositorio_Git/Met_ES/Codigos")

cnpy <- read.csv ("canopy.csv", header = T)
cnpy$Forest <- as.factor(cnpy$Forest)



# Grafica  ----------------------------------------------------------------

plot(cnpy$Cnpy, cnpy$LAI4) ## graficacion de correlacion 
# Asociacion negativa entre Cnpy vs LAI4

plot(cnpy$Cnpy, cnpy$GLI)
# Asociacion positiva Cnpy vs GLI (lus que llega al suelo) 

plot(cnpy$LAI4, cnpy$GLI)
# Asociacion negativa entre LAI4 vs GLI


# Personalizar grafica  ---------------------------------------------------

plot(cnpy$Cnpy, cnpy$LAI4, #### Grafica 
     xlab = "Apertura dosel (%)",
     ylab = "Area Foliar",
     col = "red",
     pch = 19,
     main = "Bosque Escuela")

cor.test(cnpy$Cnpy, cnpy$LAI4)

# Anotar el r dentro de la grafica 

plot(cnpy$Cnpy, cnpy$LAI4,
     xlab = "Apertura dosel (%)",
     ylab = "Area Foliar",
     col = "red",
     pch = 19,
     main = "Bosque Escuela")
text(25,1.2, "r = -0.83***") ### Agrgar correlacion a la tabla 

plot(cnpy$Cnpy, cnpy$GLI,
     xlab = "Apertura dosel (%)",
     ylab = "Area Foliar",
     col = "red",
     pch = 19,
     main = "Bosque Escuela")
cor.test(cnpy$Cnpy, cnpy$GLI)
text(25,25, "r = 0.54***")

plot(cnpy$LAI4, cnpy$GLI,
     xlab = "Apertura dosel (%)",
     ylab = "Area Foliar",
     col = "red",
     pch = 19,
     main = "Bosque Escuela")
cor.test(cnpy$LAI4, cnpy$GLI)
text(1.2,25, "r = -0.68***")



