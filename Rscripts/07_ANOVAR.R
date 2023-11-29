# Leobardo Estrella 
# ANOVA
# 10/10/2023 


# Importar datos  ---------------------------------------------------------

library(repmis)
DAP <- source_data("https://www.dropbox.com/s/fbrwxypacjgeayj/Datos_Rascon_Anova.csv?dl=1") 
DAP$Paraje <- as.factor(DAP$Paraje)
DAP$SP <- as.factor (DAP$SP)

# Determinar estadisticas descriptivas  -----------------------------------

boxplot(DAP$EDAD ~ DAP$Paraje)
boxplot(DAP$DAP ~ DAP$Paraje)

tapply(DAP$EDAD, DAP$Paraje, mean)
tapply(DAP$EDAD, DAP$Paraje, var)


# Normalidad revisar  -----------------------------------------------------

shapiro.test(DAP$DAP) ##NORMAVILIDAD 
hist(DAP$DAP) ## HISTOGRAMA 
# Los datos del DAP no son normales 

bartlett.test(DAP$DAP ~ DAP$Paraje)
# La varianza de los tratamientos son iguales 

# Transformar DAP para cumplir normalidad 
DAP$raiz <- sqrt(DAP$DAP)

# Probar normalidad a los datos transformados (raiz cuadrada) 
shapiro.test(DAP$raiz)

# Probar homogeneidad de varianzas de los datos transformados 
bartlett.test(DAP$raiz ~ DAP$Paraje)

dap.aov <- aov(DAP$raiz ~ DAP$Paraje)
summary(dap.aov)
boxplot (DAP$raiz ~ DAP$Paraje,
         col = "red")
# encontrar las diferencias significativas
TukeyHSD(dap.aov)
# graficar diferencias significativas 
plot(TukeyHSD(dap.aov))








