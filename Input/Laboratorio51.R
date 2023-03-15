# Hecho con gusto por Leislie R. Manjarrez O.

# Laboratorio 51- Editando el color de los graficos- Parte 1

# Instalar paqueterias
install.packages("gapminder")
install.packages("ggplot2")

# Llamar la librerias
library(gapminder)
library(ggplot2)

# Cargar los datos al entorno
data("gapminder")

# Filtrado por año 2007
gapminder2007 <- gapminder[gapminder$year == '2007',]

# Link para conocer los colores que maneja ggplot
http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf

# Cambiar el color de dos graficos utilizados previamente
# Grafico 1
g1 <- ggplot(data = gapminder2007,
           mapping = aes(x= gdpPercap,
                         y = lifeExp,
                         color = continent))+
  geom_point()

# Ver g1
g1

# Grafico 2
g2 <- ggplot(data = gapminder2007,
             mapping = aes(x= continent,
                           y = lifeExp,
                           fill = continent))+
  geom_boxplot()

# Ver g2
g2

# Cambiar el color de los continentes
g1 + scale_color_manual(values = c('cadetblue',
                                   'chartreuse',
                                   'firebrick',
                                   'gold',
                                   'darkorchid'))
                                   
g2 + scale_fill_manual(values = c('cadetblue',
                                   'chartreuse',
                                   'firebrick',
                                   'gold',
                                   'darkorchid'))
                                   
# Cambiar colores con paleta predefinida
# Instalar paqueteria
install.packages("RColorBrewer")

# Llamar la libreria
library(RColorBrewer)

# Para ver la paleta ejecutar el siguiente comando
display.brewer.all()

# Guardar como imagen la paleta de color utilizando el boton export width=401, height= 800 
# Cambiar la escala de color con la paleta BrBG y  Paired
g1 + scale_color_brewer(palette = "BrBG")

g2 + scale_fill_brewer("Paired")

# Cambiar a escala de grises
g1 + scale_color_grey()

g2 + scale_fill_grey()