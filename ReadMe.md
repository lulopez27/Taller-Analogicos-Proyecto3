# Como usar
Este proyecto constá de 2 principales partes los filtros analogicos y un filtro digital. Para utilizar los filtros analogicos se puede hacer en el archivo de multisim etapa_alarmas.ms14. El uso del filtro digital es más complejo. Para utilizar este primeramente se debe correr el programa rechasabanda_octave.ms14. Se debe ajustar las fuentes deseadas y ejecutar por más de 100ms. Se debe extraer la muestra a excel. Para esto ver https://www.youtube.com/watch?v=s6ezjb8Xrhc. El excel se debe guardar en el folder "octave". Por último para poder usar el filtro de media movil se debe editar el comando xlsread(X), línea 4. Donde 'X' es el nombre del archivo excel que se desea filtrar.
# Herramientas utilizadas
Multisim - Este se utilizó para simular los circuitos.
Excel - Como herramienta para generar y guardar los datos que utiliza octave.
Octave - Este se utilizó para crear el filtro de media movil.
# Precauciones
La muestra debe ser mayor o igual a 100ms. Si es menor el programa en Octave va a fallar.