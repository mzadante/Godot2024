extends Node
# continuacion del tutorial
func _ready():
	"""
	Para entender los Arrays y sus funciones más utilizadas establecidas en
	gd script, vamos a ejemplificar que tenemos un inventario o un bolso en 
	nuestro juego al cual le vamos a ir agregando objetos, aqui veremos como
	añadir o quitar dichos objetos ademas de recorerlos y aplicar lo visto 
	anteriormente como bucles y condicionales.
	Trabajar con array es como ir encadenando objetos y es muy util si 
	necesitas muchos objetos o si no sabes cuantos vas a necesitar, va el
	ejemplo para aprender las diferentes funciones para utilizar en los arrays.
	"""
	# Creamos un array vacio el cual llamaremos bolso y contendra diferentes elementos
	var bolso = []
	# Agregamos un elemento
	bolso = ["espada"]
	print(bolso) # imprimimos por consola y veremos lo que almacena
	# Utilizando la función append agregaremos otro elemento
	bolso.append("pocion")
	print(bolso) # visualizamos y vemos lo que contiene el bolso 
	# Ahora con un bucle podriamos recorrer cada objeto del inventario
	for elemento in bolso:
		print(elemento)
	# Tambien podemos saber la posición de cada elemento utilizando la función size()
	for posicion in bolso.size():
		print("Posicion: ", posicion,":", bolso[posicion])	
	# Podriamos cambiar el elemento de determinada posición utilizando en el
	# bucle for conbinandolo con un condicional if imaginando que el jugador
	# bebio la pocion y esta quedo vacia.
	for posicion in bolso.size():
		if bolso[posicion] == "pocion":
			bolso[posicion] = "pocion vacia"
	print(bolso)		  
	# Imaginando que ya bebimos la poción, tendriamos que eliminarla del bolso
	# para ello podriamos utilizar la función remove_at() ejemplo:
	for posicion in bolso.size():
		if bolso[posicion] == "pocion vacia":
			bolso.remove_at(posicion)
	print(bolso)		  
	
	# Tambien podriamos agregar muchos objetos de una sola vez imaginando que
	# nuestro personaje encontro un cofre con muchos articulos, utilizando la
	# función append_array() 
	
	var cofre = ["capa", "armadura", "anillo", "cuchillo"]
	bolso.append_array(cofre)
	print(cofre) # vemos lo que contiene el cofre
	print(bolso) # Aqui vemos todos los ojetos del cofre agregados al bolso
	
	# Tambien podriamos agregar cuialquier objeto a nuestro bolso eligiendo
	# la posicion que deseemos utilizando la función insert() que nos pedira 
	# (la posicion, y el objeto) ejemplo: insertaremos un hacha en la posicion 3
	bolso.insert(3, "hacha")
	print(bolso) # mostramos el contenido de nuestro bolso
	
	# Supongamos que queremos buscar una elemento y conocer su posición podriamos
	# utilizar la función find() donde dentro de los parentesis colocamos el 
	# objeto a buscar, Ejemplo buscaremos el anillo
	print("El anillo se encuentra en la posición: ", bolso.find("anillo"))
	
	# Tambien podriamos consultar si en nuestro bolso tenemos una armadura, 
	#utilizando la función has() donde dentro del parentesis agregamos el objeto
	# a buscar este nos contestara con un booleano true or false. Ejemplo:
	print(bolso.has("armadura")) #veremos que si se encuentra dicho objeto
	
	# Otra función interesante de conocer es el reverse(), este nos sirve para 
	# invertir el orden de posiciones del array, por ejemplo invertiremos el 
	# orden de los objetos que teniamos dentro del cofre
	print("Antes de cambiarles el orden: ",cofre) # veremos como se encuentran ordenados antes de cambiarlos
	cofre.reverse()
	print("Despues de cambiado el orden: ", cofre) # observaremos que el orden cambio 
	
	# Supongamos que en nuestro bolso queremos los objetos ordenados en orden
	# alfabetico podriamos utilizar sort() esta función dara el orden alfabetico
	cofre.sort()
	print(cofre) #veremos los objetos ordenados alfabeticamente
	
	# Si quisieramos ordenarlos de forma aleatoria podriamos utilizar la función
	# shuffle() este ordenara el array de objetos de nuestro cofre en forma aleatorio
	cofre.shuffle()
	print(cofre) # ordenara de diferentes formas aleatorias cada vez que se ejecute
	
	# Como ya obtuvimos todos los ojetos del cofre en nuestro bolso, deberiamos
	# utilizar la función clear() esta eliminara todos los objetos del cofre,
	# de esta forma nos aseguramos que el cofre quedo vacio.
	cofre.clear()
	print(cofre) # ya no quedo nada en nuestro array cofre mostrandonos [] el array vacio.
	"""
	Ejemplo de como podriamos utilizarlo en un juego real:
		Imaginemos que nuestro personaje del juego se encuentra un cofre y al 
		abrirlo solo puede obtener un solo objeto de forma aleatorio nuestro
		escript seria algo así: 
	"""	
	# Añadimos objetos al cofre porque anteriormente los habiamos eliminado
	cofre = ["anillo", "capa", "armadura", "daga"]
	# observamos el contenido del cofre
	print(cofre)
	# El jugador tiene su inventario (bolso) vacio
	var inventario = []
	# El contenido de nuestro cofre tiene ya sus objetos y los ordenamos en forma aleatoria
	cofre.shuffle()
	# Ahora agregamos un objeto del cofre que ya esta desordenado en nuestro
	# inventario (bolso) 
	inventario.append(cofre[0]) 
	# Luego deberiamos borrar todo lo que contiene nuestro cofre para que el jugador
	# no saque otro objeto 
	cofre.clear()
	# Ahora podemos ver el contenido de nuestro inventario para ver que objeto 
	# obtuvimos de forma aleatoria
	print(inventario)
	# Y ahora mos traremos que el contenido de nuestro cofre quedo vacio
	print(cofre)
	

