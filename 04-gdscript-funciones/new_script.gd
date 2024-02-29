extends Node

func _ready():
	var funciones = "Las funciones se ejecutan debajo de la funcion _ready"
	print(funciones)
	## Aqui se ejecutara la funcion game_over
	ejemplo()
	game_over("Juan", "30")
	por_defecto("Pepe") # mostrara pepe y el valor por defecto
	# en por_defecto no hace falta el otro argumento ya que el parametro por
	# defecto esta alli, pero si lo modificamos en la llamada de la función,
	# reemplazara el valor por defecto
	por_defecto("Carlos", 144) # mostrara el valor ingresado y reemplazara el por defecto
	
	# devolviendo el resultado con return
	var mensaje = ver_return("Nicolás")	
	print(mensaje) # devolvera Nicolas que es el valor ahora de la variable mensaje
"""  
FUNCIONES:
	Todas las funciones se deben ejecutar por debajo de la función _ready() 
	a diferencia de las variables, que pueden estar en cualquier lugar pero
	estas necesitan una identación (tab) para que no provoquen errores, 
	las funciones pueden estar al mismo nivel que la función ready_(), es decir
	no necesitan estar identadas. 
	Las funciones ademas pueden recibir parámetros y devolver resultados ya sea 
	imprimiendo lo que hace la función o utilizando return.
	Lo mas importante para las buenas practicas, es que cuando creemos funciones
	las hagamos lo mas pequeñas y concretas posibles, de esta forma el codigo
	sera mas facil de entender y arreglar. 
"""
func ejemplo():
	print("las funciones se deben ejecutar por debajo de la función _ready()")
	
	## Funciones con paramétros
func game_over(nombre, puntos):
	var mensaje = "Lo siento "+ nombre + "."
	var puntaje = "\n Has conseguido: " + puntos + " Puntos"
	print(mensaje + puntaje)
	
	"""
	En esta función game_over(), observaran que debajo de ella las variables que 
	reciben los paramétros tienen su correspondiente identación y además 
	se encuentran concatenadas con el paramétro recibido, también veran la
	variable puntaje que comienza con un salto de linea \n la función devolvera
	el mensaje y la puntuación en la consola   
	"""
## Parametros por defecto tambien puede ser pasados en las funciones
func por_defecto(nombre, valor = 0):
	print(nombre, " y ", "valor por defecto: ", valor)
	
"""
Las funciones no solo imprimen el resultado tambien pueden retornar el resultado
con el uso de la palabra reservada return, otra cosa a tener en cuenta que todo
el codigo que pusieramos debajo de return no se ejecutará y si dentro de return 
no colocaramos nada, la funcion se ejecutaria pero no devolveria nada (null) 
"""	
func ver_return(nombre):
	return nombre 

	
