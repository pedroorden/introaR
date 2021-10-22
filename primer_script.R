# Hola! este es un script de R

#Esta manera de escribir sin procesar el código se llama comentario y lo activamos con la tecla #



#Recordemosn R creamos un objeto con con este indicador: <-
  
# Por ejemplo, armamos un objeto que se llama numero_5 y asume el valor 
# numérico 5 de la siguiente manera:

numero_5 <- 5 

#lo ejecutamos con crtl + enter en windows y command + enter en mac

numero_5

#objeto con texto adentro

palabra <- "esto es un objeto con texto adentro" #usamos comillas porque ningun elemento esta suelto

palabra <- esto es un objeto con texto adentro #da error

#lo ejecutamos

palabra

#Recordemos también que dijimos que R es una calculadora

numero_15 <- numero_5 + 10

numero_15

numero_15/5 #no creo un nuevo objeto, pero ejecuto el anterior dividido 5

#mencionamos que podiamos concatenar valores en un vector (el objeto 'edades')
edades <- c(29, 36, 45, 23, 32, 38, 29, 34, 25, 59) #un objeto con la edad de 10 personas

# para conocer el promedio de edad de los 10 casos del objeto edades
# usamos nuestra primera función: mean(), la cual permite estimar promedios y es una
# operación que viene en rstudio de base

mean(edades)

head(edades) #nos devuelve las primeras 5 observaciones

#usemos la función plot() para graficar nuestro vector
plot(edades)


#

#Accedamos a un set de datos (tabla) online.

#en este caso vamos a descargar un conjunto de datos que recupera la cantidad de
#profesionales medicos por provincia (corte al año 2016)
#Fuente: https://datos.gob.ar/dataset/salud-profesionales-medicos-por-provincia-segun-domicilio-electoral

#para conectarnos y consultar los datos de un archivo csv directo desde r usamos read.csv()
#dentro de los parentesis va el link del archivo .csv entre comillas ¨¨

medicos<-read.csv("http://datos.salud.gob.ar/dataset/40343ae6-25f5-4c80-bab8-59b5dcae7548/resource/3ae764d8-e4f0-41bb-8648-20a526f0b927/download/medicos-juridisccion-2016.csv")

#para descargarlo a nuestro espacio de trabajo usamos la funcion write.csv()

write.csv(medicos, "medicos.csv")

# para leer el archivo desde nuestra compu:

medicos <- read.csv("~/formaciones R/ejercicio/medicos.csv")

#vamos que tiene el objeto medicos:
  
medicos

head(medicos)

summary(medicos) # primer aproach a neustra data

mean(medicos$medicos_cantidad_total) #utilizo el operador $ para seleccionar una variable  y aplicar una funcion

max(medicos$medicos_cantidad_total) #máximo de médicos para la categoría

min(medicos$medicos_cantidad_total) #mínimo de médicos para la categoría


#usamos un paquete para generar una primera exploración gráfica del set de datos

#instalaremos el paquete squisse

install.packages("esquisse") #instalamos el paquete, por unica vez

library(esquisse) #activamos el paquete en nuestro sistema

esquisser(medicos) #corremos la funcion de visualizacion

# Podemos repetir el proceso con un set de datos en excel utilizando un paquete que nos permite leer
# archivos excel openxlsx y la funcion read.xlsx
# https://datos.gob.ar/dataset/produccion-innovacion-productiva-empresas-que-mas-invierten-id-nivel-mundial

install.packages("openxlsx") #Instalamos el paquete

library(openxlsx) #lo cargamos

historias <- read.xlsx("https://datos.gob.ar/dataset/produccion-innovacion-productiva-empresas-que-mas-invierten-id-nivel-mundial/archivo/produccion_d8a3b5c6-7037-4372-b0e0-c73b3052dcb4") #ojo con al extención daownload, en verdad es xls.

#lo guardamos
write.xlsx(historias, "historias.xlsx")

#recuperamos el set desde nuestra pc
historias <- read_excel("historias.xlsx")

# IMPORTANTE: 
#  - Hay muchas maneras de hacer estos procesos y obtener resultados similares,hoy vimos una forma operativa.
#  - R puede conectarse varios tipos de archivos.