# Correlacion 
# 02/10/2023
# Leobardo Estrella 
library(repmis)
erupciones <- source_data("https://www.dropbox.com/s/liir6sil7hkqlxs/erupciones.csv?dl=1")


# Estadisticas descriptivas  ----------------------------------------------
mean(erupciones$waiting)
median(erupciones$waiting)
var(erupciones$waiting)
sd(erupciones$waiting)

mean(erupciones$eruptions)
median(erupciones$eruptions)
var(erupciones$eruptions)
sd(erupciones$eruptions)

# Hipotesis  --------------------------------------------------------------
t.test(erupciones$eruptions, erupciones$waiting)

# Hipotesis Alternativa H1.

# Si hay una diferencia, porque entre mas tiempo de espera entre erupciones las duraciones de las erupciones son mayores.

# Hipotesis Nula HO.

#No hay diferencia, entre mas tiempo de espera entre erupcioneslas duraciones son iguales.

# Hipotesis aceptada: # Alternativa H1 ya que el p value es maypr que cero. 



# Correlacion  ------------------------------------------------------------
plot(erupciones$waiting, erupciones$eruptions,
     xlab = "Tiempo de espera entre erupciones (min)",
     ylab = "Duracion de las erupciones (min)",
     col = "red",
     pch = 19,
     main = "Leobardo Estrella")
abline(erump.lm,
       col= "blue") # sirve para despegar la linea de tendencia central 
cor.test(erupciones$eruptions, erupciones$waiting)

text(50,4.5, "r = 0.9008112***")

# Leobardo Esstrella 
# 09/10/2023

erump.lm <-lm(erupciones$eruptions ~ erupciones$waiting)

erump.lm #obtener el valor d alfa y beta 

summary(erump.lm) # obtener la significancia de alfa y beta 
 #valor de r ajustado quiere decir que se puede transformar en %

erupciones$yprima <- -1.874 + 0.075* erupciones$waiting
erupciones$estimados <- erump.lm$fitted.values #valores ajustados 
range(erupciones$waiting)

erup <- c(80, 43, 45, 53, 61, 95)
y.pr <- -1.874 + 0.075*erup
erup
y.pr

# Aplicar la forma de manera individual 
#alfa + beta * valor de x 

-1.874 + 0.075* 80
-1.874 + 0.075* 43
-1.874 + 0.075* 45
-1.874 + 0.075* 53
-1.874 + 0.075* 61
-1.874 + 0.075* 95

# el rango de los valores de x son mi ventana de prediccion de yprima ## range(erupciones$waiting) 
#