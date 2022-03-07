
#__________ tablas de frecuencia______
#utilizamos la matriz iris

#-----------
#    Exploracion de la matriz

#1. Exportacion de matriz 
data(iris)

#2- Exploración de la matriz
# tenemos 150 individuos y variables 
dim(iris) 

#3. Nombre de las columnas
columnes(iris)

#4. Exportación de especies
str(Species)

#5. Tipos de variable
str(iris)

#6. En busca de valores perdidos
anyNA(iris)

#--------------------------
#Generación de tablas NO AGRUPADAS
#------------


#1. Convertir la matriz de datos aun data frame,
# see agrupan los valores para la variable Petal.Length
# y se calcula la fecuencia abosuta.

tabla_PL<-as.data.frame(table(PL=iris$Petal.Length))

#2.- Visualizacion de la tabla de contigencia de
#la variable petal.length(PL) y su perspectiva frecuencia
#absoluta
tabla_PL

#3.- Crear la tabla completa
tabla1=transform(tabla_PL,
          freqAc=cumsum(Freq),
          Rel=round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))

#-------------------------------------------------
#Tablas agrupadas
#--------------------------------------
#nota: se debe tener previamente el calculo 
# de la amplitud y rango

#1.- Agrupacion de la vairiable en clase (8 clases)
# 8 renglones agrupados.
tabla_clases<-as.data.frame(table(Petal.Length=factor(cut(iris$Petal.Length, breaks=8))))

#2.- construccion de tabla completa
tabla2=transform(tabla_clases,
                 freqAc=cumsum(Freq),
                 Rel=round(prop.table(Freq),3),
                 RelAc=round(cumsum(prop.table(Freq)),3))
