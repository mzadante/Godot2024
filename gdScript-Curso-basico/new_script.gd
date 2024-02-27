extends Node

func _ready(): # función _ready() para ejecutar el script de esta escena
	"""
	QUE ES GODOT ENGINE:
	Godot Engine es un motor de videojuegos repleto de funciones, multiplataforma
	con múltiples características para crear juegos 2D y 3D desde una interfaz 
	unificada. Provee un conjunto exhaustivo de herramientas comunes para que
	los usuarios puedan enfocarse en crear juegos sin tener que reinventar la
	rueda. Los juegos pueden exportarse en un sólo clic a numerosas plataformas,
	incluyendo las principales plataformas de escritorio (Linux, macOS, Windows),
	móviles (Android, iOS) y basadas en la web (HTML5).
	Godot es completamente libre y de código abierto bajo la licencia permisiva
	MIT (Licencia del Instituto Tecnológico de Massachusetts). Sin condiciones,
	sin regalías, nada. Los juegos de los usuarios son suyos, hasta la última 
	línea de código del motor. El desarrollo de Godot es totalmente independiente
	y dirigido por la comunidad, lo que permite a los usuarios ayudar a dar forma
	a su motor para que coincida con sus expectativas. Está respaldado por 
	Software Freedom Conservancy sin fines de lucro.
	
	CARACTERISTICAS DEL LENGUAJE GD SCRIPT
	GDScript es un orientado a objetos e imperativo lenguaje de programación
	construido para Godot. Está hecho por y para desarrolladores de juegos para
	ahorrarle tiempo de codificación de juegos. Sus características incluyen:
	* Una sintaxis simple que conduce a archivos ligeros.
	* Tiempos de carga y compilación ultrarrápidos.
	* Estrecha integración del editor, con finalización de código para nodos,
	  señales y más información de la escena a la que está conectado.
	* Tipos de transformación y vector incorporados, lo que lo hace eficiente
	  para el uso intensivo de álgebra lineal, imprescindible para los juegos.
	* Admite múltiples hilos con la misma eficacia que los lenguajes tipados
	  estáticamente.
	* No hay recolección de basura, ya que esta característica eventualmente
	  interfiere al crear juegos. El motor cuenta las referencias y administra
	  la memoria por usted en la mayoría de los casos de forma predeterminada,
	  pero también puede controlar la memoria si lo necesita.
	* Escritura gradual. Las variables tienen tipos dinámicos de forma 
	  predeterminada, pero también puede usar sugerencias de tipo para 
	  verificaciones de tipo fuertes.
	* GDScript se parece a Python cuando estructura sus bloques de código
	  usando sangrías, pero no funciona de la misma manera en la práctica.
	  Está inspirado en varios idiomas, incluidos Squirrel, Lua y Python.
	
	TUTORIAL BASICO GD SCRIPT PARA UN COMIENZO RAPIDO:
		La idea de este tutorial es mostrar lo mas básico que posee gd script
		para un arranque facil para realizar nuestros videos juegos, si necesitas
		mas información te recomiendo ir al sitio oficial de Godot donde encontraras
		una guia mas detallada de todo el mundo GODOT.
		https://godotengine.org/
	
	Instalar Godot y ejecutarlo.
	Crear un nuevo archivo y ejecutar.
		
	Para utilizar un script en el motor GODOT para poder utilizar la consola,
	tenemos que iniciar una escena ya sea 2D o 3D.
	Con la escena creada, en la ventana de abajo en Sistema de Archivos
	en la raiz (res://) con click derecho buscamos en crear nuevo en donde dice 
	script, nos pedira guardarlo con algun nombre, pero si queremos utilizamos 
	el que nos muestra por defecto, una vez guardado, temdremos que arrastrarlo
	a la ventana Escena en donde tenemos la escena creada, una vez añadida
	con doble click ingresamos al editor de script de Godot.
	Para que nuestro script funcione deberemos escribir nuestro codigo debajo
	de la función _ready() para ejecutar el script, esta función es la que 
	ejecuta el nodo principal de nuestra escena, y los demas nodos hijos incluidas
	en ella.
	"""
	"""  
	COMENZANDO EL TUTORIAL
	Se aconseja imprimir para ver si funciona correctamente el script, temiendo
	en cuenta que Gd Script es de tipado identado muy similar a Python, por
	lo tanto debajo de la función _ready() con la identación (Tab) correcta
	imprimiremos un Hola Mundo, para ejecutar el script, con ctrl+s guardamos 
	los cambios y con la tecla F6 ejecutamos el script, este se ejecutara y
	aparecera una ventana vacia, si desplazamos esta ventana o la minimizamos,
	veremos debajo del editor la salida por la consola.   
	"""
	#Imprimiendo hola mundo en la consola
	print("Hola Mundo")
	"""
	Como son los comentarios:
	01- Con (#) almuadilla o numeral podremos realizar un comentario de una linea
	y si queremos comentar varias podemos utilizar el atajo ctrl+k 
	02- Con (3 comillas) arriba y abajo como este comentario podremos comentar
	en multiples lineas, pero deberemos tener en cuenta que este tipo de 
	comentario solo puede utilizar dentro de una función, fuera de ella nos
	arrojara error, ya que necesita de una función para que funcione.
	03- colocando (#region) al principio y (#endregion al final) podras
	comentar un bloque de codigo, tambien esto se puede realizar, seleccionando
	dicho bloque de codigo y con el boton derecho del mouse al hacer click, 
	seleccionaremos Create Code Region y esto añadire automaticamente el 
	comentario de dicho bloque de codigo.
	04- También en godot podremos realizar comentarios especiales:
		como TODO, ATTENTION, ALERT, INFO, BUG, WARNING y otros más, siempre
		antecedido de una almuadilla ver ejemplo.
	05- Comentario para documentación en Godot se utiliza la doble amuadilla ##
	este tipo de comentario es muy util para agregar informacion importante 
	del funcionamiento de nuestro codigo.
	
	06- Tambien existe un comentario para la descripcion del script realizado
	en bbcode, para ello recomiendo visitar la documentación de Godot:
	https://docs.godotengine.org/es/4.x/tutorials/scripting/gdscript/gdscript_documentation_comments.html 
	"""
	# 01- comentario una linea
	"""
	02 - comentario multiples lineas  
	"""
	#region de ejemplo de comentario 03
#region Nuevo Code Region
	#codigo
	#mucho codigo 
#endregion	
	# 04- Comentarios especiales:
	# TODO comentarios especiales 
	# ATTENTION ALERT INFO TEST BUG WARNING estos msj son importantes 05
	
	## 05- Comentario de documentación
	## Se utilida aplicando la doble almuadilla
	
	"""
	COMENZANDO CON LAS VARIABLES MAS UTILIZADAS
	(var): significa variant, una clase Variant es una clase diseñada para
	almacenar una variedad de otros tipos de datos.
	Se utilizan principalmente para comunicación, edición, serialización y 
	movimiento de datos.
	""" 
	## Variables tipo String
	var verdura= "cebolla"
	print(verdura)
	## Variables tipo numéricas (int y float)
	var numero_entero = 5
	var numero_real = 7.8
	## Variables booleanas
	var booleanas = true
	## Variables Nulas
	var mi_variable = null
	## Variables tipo Array
	var mi_array = [1, 2, 3, 4]
	## Listas
	var lista = []
	lista = [1, 2, 3]
	## mostrando todo el contenido de la lista
	print(lista)
	# mostrando un elemento de la lista
	print(lista[0])
	# cuantos elementos contiene la lista, utilizamos size()
	print(lista.size())
	# reemplazar el valor de un elemento del array
	lista[0] = "elefante"
	print(lista)
	## variables Constantes 
	const MY_CONSTANTE = 10
	print(MY_CONSTANTE)
	
	# otras variables a la hora de hacer videos juegos las mas utilizadas
	# Coordenadas xy e xyz reales y enteras
	# Coordenadas reales 2D
	var coordenadas = Vector2(1.2, 2.3)
	## Coordenadas enteras 2D
	var coordenada_entera = Vector2i(1, 2)
	## Coordenadas reales 3D
	var coordenadas3d = Vector3(1.5, 2.5, 3.5)
	## Coordenadas enteras 3D
	var coordenadas_enteras3D = Vector3i(2, 4, 6)
	
	## Variables de color (deben llevar numeros enteros)
	var color_fondo = Color(1,1,1,0)
	
	"""
	TIPADO DINAMICO: son las variables vistas anteriormente pero para almacenar
	datos que no sabemos cuanto serian, para no ocupar demasiado espacio en 
	memoria, para almacenar esos datos para que nuestro juego corra eficientemente
	podemos crear:
	VARIABLES TIPADAS para hacer que la variable solo reciba el dato de algun
	valor especifico como: entero, real, booleana, etc, es decir convertir la
	variable en estatica diciendole que dato podemos recibir a traves del uso
	del operador dos puntos : (var estatico:Tipo de dato=)
	Ejermplos:
	"""
	var un_text:String = "mi texto" # recibiendo un dato de texto
	var un_numero_entero:int = 47 # recibiendo un dato numerico entero
	var un_numero_decimal:float = 2.3 # recibiendo un dato numerico real(decimal)
	var una_coordenada:Vector2 = Vector2(1.5, 4.5) # recibiendo un vector de dirección
	"""
	También podemos utilizar los métodos tipados que ofrece gd script, como por
	ejemplo si queremos saber el angulo de algun vector utilizamos los métodos
	por defecto del lenguaje con el operador de punto . 
	Ejemplo: si quisieramos saber el Angulo de la variable escrita anteriormente
	una_coordenada
	""" 
	print(una_coordenada.angle()) # obtenemos el valor del ángulo
	
	"""
	OPERADORES ARITMETICOS: +, -, *, /, %, **, sqrt  
		  
	"""
	## Suma y Resta
	const VIDA = 10 
	var daño = 2
	var total_vida = VIDA - daño
	print("total de vida: ", total_vida) 
	var bonus_vida = 1
	total_vida = total_vida + bonus_vida
	print("vida mas bonus: ", total_vida)
	## Multiplicación y division
	total_vida = VIDA
	print("Total de vida: ",total_vida)
	total_vida = total_vida/2
	print("Despues de Dividir: ", total_vida)
	total_vida = total_vida*2
	print("Despues de multiplicar: ", total_vida)
	## resto o operador modulo
	print("Cantidad de vida: ",(total_vida))
	print("El resto es: ", (total_vida%2))
	## Otra forma de utilizar los operadores
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
	"""
	OPERADORES DE COMPARACION: <, >, <=, >=, ==, != 
	"""
	## Operadores de comparación (Siempre devuelve un booleano)
	print(total_vida)
	
	var muerto = total_vida == 0
	var herido = total_vida != VIDA
	var muy_vivo = total_vida > 8
	var vivo = total_vida <= 5
	print(muerto)
	print(herido)
	print(muy_vivo)
	print(vivo)
	## con textos tb podemos comparar
	var variableA = "Hola"
	var variableB = "adios"
	print(variableA == variableB)
	print(variableA != variableB)
	
	"""
	OPERADORES DE COMPARACION LOGICOS: and, or, not  
	"""
	
	herido = total_vida < VIDA and total_vida >=1
	var no_herido = total_vida and VIDA == 10
	print(herido) 
	print(no_herido)
	var operador_or = false or true # devolvera true
	var operador_and = true and true #devolvera true
	var operador_not = not true #devolvera false
	
	## ejemplo
	var aprieta_agarrar = 1 
	var recoge_automatico = 2
	var hay_algo_cerca = 0
	var inventario_lleno = [] 
	var puede_agarrar_objetos = (aprieta_agarrar or recoge_automatico) \
	and hay_algo_cerca and not inventario_lleno 
	
	"""
	CONDICIONALES: if, else y elif  
	"""
	const VIDA_INICIAL = 100
	var vida = VIDA_INICIAL
	
	if vida <= 0:
		print("Jugador muerto")
	else:
		print("Jugador vivo")
	print("Continua el programa")
	
	## utilizando elif en el condicional
	
	if vida == VIDA_INICIAL:
		print("El jugador esta al 100% de vida")
	elif vida > 50:
		print("El jugador tiene menos del 50% de vida")
	elif vida > 0:
		print("El jugador esta desecho")
	else:
		print("El jugador murio")
	print("continua el programa")
				
	"""
	BUCLES: while, for  
	"""
	## Bucle while
	var turnos = 3
	while turnos > 0:
		print(turnos)
		turnos = turnos - 1 #recordar de restar los turnos en cada pasada del bucle
	print("Terminaron los turnos")
	
	## Bucle for
	for i in [0, 1, 2]:
		print(i)
	print("Termino el bucle")
		
	## Bucle for con texto
	for letra in "letras":
		print(letra)
	print("ha terminado el bucle")	
	
	## Bucle for con rango
	for i in range(3):
		print(i)
	print("ha terminado el bucle")	
	
	## Bucle en un array
	var array =["Juan", 3 , 5 ,"Pedro" ]
	for elemento in array:
		print(elemento)
	print("ha terminado el bucle")	
	
	## continue y break
	for i in 5:
		if (i == 0):
			continue
		elif (i == 2):
			break	
		print(i)
	print("ha terminado el bucle")	
			
	
		
	
