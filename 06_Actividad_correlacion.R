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

cor.test(erupciones$eruptions, erupciones$waiting)

text(50,4.5, "r = 0.9008112***")









