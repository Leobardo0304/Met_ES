# Leobardo Estrella Aldape
# 29/11/2023
# 2022958


# Descriptivas  -----------------------------------------------------------

setwd("C:/Repositorio_Git/Met_ES/codigos")
Datos <- read.csv("Datos.csv")
 mean(Datos$EN)
 mean(Datos$PI)




# Box Plot  ---------------------------------------------------------------

boxplot(Datos$EN,
        Datos$PI,
        col = "green", 
        ylab = "Peso (gr)",
        main = "Cuadros de Madera",
        xlab = "Encino         Pino",
        ylim = c(11,20))



# Ejercicio 2  ------------------------------------------------------------

azufre <- c( 15.8, 22.7, 26.8, 19.1, 18.5,
             14.4, 8.3, 25.9, 26.4, 9.8, 22.7, 15.2, 23, 29.6,
             21.9, 10.5, 17.3, 6.2, 18, 22.9, 24.6, 19.4, 12.3,
             15.9, 11.2, 14.7, 20.5, 26.6, 20.1, 17, 22.3, 27.5, 23.9,
             17.5, 11, 20.4, 16.2, 20.8, 13.3, 18.19)

t.test(azufre)

# Los intervalos de confianza es de 16.88145   20.53805
# los grados de libertad son de 38
# hipoptesis alternativa, existe diferencia.
# el valor medio promedio de las emisiones observadas si hay diferencia significativa 
    










