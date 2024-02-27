extends Node
# continuacion del tutorial
func _ready():
	"""
	Para entender los Arrays y sus funciones ya establecidas en gd script,
	vamos a ejemplificar que tenemos un inventario o un bolso en nuestro juego
	al cual le vamos a ir agregando objetos, aqui veremos como añadir o quitar
	dichos objetos ademas de recorerlos y aplicar lo visto anteriormente como
	bucles y condicionales.
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
	
	

