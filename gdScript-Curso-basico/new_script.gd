extends Node

func _ready():
	print("Hola Mundo")
#endregion
	# 01- comentario común
	#region de ejemplo de comentario 02
	#comentario de multiples lineas aqui incluido el codigo
	#endregion 02
	# 03-Tambien se puede hacer comentario del codigo seleccionando y con clik 
	# 03-derecho crear el comentario Nuevo Code Region
	# TODO comentarios especiales 04
	# ATTENTION ALERT INFO TEST BUG WARNING estos msj son importantes 05
	"""
	con esto podemos tener un comentario de multiples lineas
	"""
	# Variables tipo String
	var verdura= "cebolla"
	print(verdura)
	# Variables tipo numérica
	var numero_entero = 5
	var numero_real = 7.8
	# Variables booleanas
	var booleanas = true
	# Variables Nulas
	var mi_variable = null
	# Variables tipo Array
	var mi_array = [1, 2, 3, 4]
	# Listas
	var lista = []
	lista = [1, 2, 3]
	# mostrando todo el contenido de la lista
	print(lista)
	# mostrando un elemento de la lista
	print(lista[0])
	#cuantos elementos contiene la lista, utilizamos size()
	print(lista.size())
	#reemplazar el valor de un elemento del array
	lista[0] = "elefante"
	print(lista)
	# variables Constantes
	const MY_CONSTANTE = 10
	print(MY_CONSTANTE)
	
	# otras variables a la hora de hacer juegos
	# Coordenadas xy e xyz reales y enteras
	# Coordenadas reales 2D
	var coordenadas = Vector2(1.2, 2.3)
	# Coordenadas enteras 2D
	var coordenada_entera = Vector2i(1, 2)
	# Coordenadas reales 3D
	var coordenadas3d = Vector3(1.5, 2.5, 3.5)
	# Coordenadas enteras 3D
	var coordenadas_enteras3D = Vector3i(2, 4, 6)
	
	# Variables de color 
	var color_fondo = Color(1,1,1,0)
	"""
	Tipado dinamico son las vistas anteriormente pero para almacenar
	datos que no sabemos cuanto serian, para no ocupar demasiado espacio
	para almacenar esos datos para que nuestro juego corra eficientemente
	podemos crear VARIABLES TIPADAS para hacer que la variable solo reciba
	el dato de algun valor especifico como: entero, real, booleana, etc, es
	decir convertir la variable en estatica diciendole que dato podemos recibir
	a traves del uso del operador dos puntos : (var estatico:Tipo de dato=)
	Ejermplos:
	"""
	var un_text:String = "mi texto"
	var un_numero_entero:int = 47
	var un_numero_decimal:float = 2.3
	var una_coordenada:Vector2 = Vector2(1.5, 4.5)
	
	"""
	Tambien podemos utilizar los metodos tipados que ofrece gdscrip, como por
	ejemplo si queremos saber el angulo de algun vector utilizamos los metodos
	con el operador de punto . 
	Ejemplo: si quisieramos saber el Angulo de la variable escrita anteriormente
	una_coordenada
	""" 
	print(una_coordenada.angle())
	
	# Operadores aritméticos
	# Suma y Resta
	const VIDA = 10 
	var daño = 2
	var total_vida = VIDA - daño
	print("total de vida: ", total_vida) 
	var bonus_vida = 1
	total_vida = total_vida + bonus_vida
	print("vida mas bonus: ", total_vida)
	# Multiplicación y division
	total_vida = VIDA
	print("Total de vida: ",total_vida)
	total_vida = total_vida/2
	print("Despues de Dividir: ", total_vida)
	total_vida = total_vida*2
	print("Despues de multiplicar: ", total_vida)
	# resto o operador modulo
	print("Cantidad de vida: ",(total_vida))
	print("El resto es: ", (total_vida%2))
	# Otra forma de utilizar los operadores
	print("Valor actual de daño: ", daño)
	daño += 2 # daño = daño + 2
	print("El daño recibido es de: ", daño, " despues de usar +=")
	daño -= 2
	print("El daño recibido es de: ", daño, " despues de usar -=")
	daño *= 2
	print("El daño recibido es de: ", daño, " despues de usar *=")
	daño /= 2
	print("El daño recibido es de: ", daño, " despues de usar /=")
	daño **= 2
	print("El daño recibido es de: ", daño, " despues de usar la potencia")
	
	#Operadores de comparación (Siempre devuelve unm booleano)
	print(total_vida)
	
	var muerto = total_vida == 0
	var herido = total_vida != VIDA
	var muy_vivo = total_vida > 8
	var vivo = total_vida <= 5
	print(muerto)
	print(herido)
	print(muy_vivo)
	print(vivo)
	# con textos tb podemos comparar
	var variableA = "Hola"
	var variableB = "adios"
	print(variableA == variableB)
	print(variableA != variableB)
	
	# Operadores de comparación lógicos
	
	herido = total_vida < VIDA and total_vida >=1
	var no_herido = total_vida and VIDA == 10
	print(herido) 
	print(no_herido)
	var operador_or = false or true # devolvera true
	var operador_and = true and true #devolvera true
	var operador_not = not true #devolvera false
	
	#ejemplo
	var aprieta_agarrar = 1 
	var recoge_automatico = 2
	var hay_algo_cerca = 0
	var inventario_lleno = [] 
	var puede_agarrar_objetos = (aprieta_agarrar or recoge_automatico) \
	and hay_algo_cerca and not inventario_lleno 
	
	# Condicionales if, else
		
	const VIDA_INICIAL = 100
	var vida = VIDA_INICIAL
	
	if vida <= 0:
		print("Jugador muerto")
	else:
		print("Jugador vivo")
	print("Continua el programa")
	
	# utilizando elif en el condicional
	
	if vida == VIDA_INICIAL:
		print("El jugador esta al 100% de vida")
	elif vida > 50:
		print("El jugador tiene menos del 50% de vida")
	elif vida > 0:
		print("El jugador esta desecho")
	else:
		print("El jugador murio")
	print("continua el programa")
				
	
	# Bucle while
	var turnos = 3
	while turnos > 0:
		print(turnos)
		turnos = turnos - 1 #recordar de restar los turnos en cada pasada del bucle
	print("Terminaron los turnos")
	
	# Bucle for
	for i in [0, 1, 2]:
		print(i)
	print("Termino el bucle")
		
	# Bucle for con texto
	for letra in "letras":
		print(letra)
	print("ha terminado el bucle")	
	
	# Bucle for con rango
	for i in range(3):
		print(i)
	print("ha terminado el bucle")	
	
	# Bucle en un array
	var array =["Juan", 3 , 5 ,"Pedro" ]
	for elemento in array:
		print(elemento)
	print("ha terminado el bucle")	
	
	# continue y break
	
	for i in 5:
		if (i == 0):
			continue
		elif (i == 2):
			break	
		print(i)
	print("ha terminado el bucle")	
			
	
		
	
	
	
	
	
	
	
	
