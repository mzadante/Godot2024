extends Node

func _ready():
	"""
	MANEJO DE TEXOS: STRING 
	Los textos son cadenas(String), serian como un array de letras que forman 
	palabras, siempre estos textos deben ir entre comillas "", es decir que 
	tambien los podriamos manejar como un array, podriamos también concatenarlos
	con el operador matemático +
	Ademas conoceremos diferentes funciones nativas de gdscript para manejar textos
	las más basicas y usadas habitualmente.
	"""
	## Ejemplo simple:
	var texto = "Aprendiendo gdscript para Godot"
	print(texto) # veremos el texto 
	## obtener un caracter a traves de la posicion como si se tratara de un array
	print(texto[0]) # obtendremos la letra A que es la primera letra de la cadena
	## Concatenando el texto con el operador +
	texto = texto + " para crear video juegos"
	print(texto) #mostrara el primer texto más la nueva frase
	"""
	CARACTERES ESPECIALES:
	Los String pueden tener caracteres especiales que nos dan diferentes 
	comportamientos en los textos: secuencias de escape (unicode) 
		\n ----> Salto de linea
		\t ----> Cáracter de tabulador horizontal
		\r ----> Retorno de carro
		\a ----> Alerta(bip/bell)
		\b ----> Retroceso
		\f ----> Salto de pagina de Formfeed
		\v ----> Cáracter de tabulacion vertical
		\" ----> Dobles comillas
		\' ----> Simples comillas
		\\ ----> Barra invertida
		Código Unicode XXXX (hexadecimal, insensible a mayúsculas y minúsculas
	"""
	## Tambien podemos usar las cadenas (String) con comillas simples
	var otro_texto = 'Con este tutorial aprendo' 
	print(otro_texto) #mostrara el texto
	## Salto de linea con \n \r
	otro_texto = otro_texto + '\nsobre lo basico para desarrollo de video juegos'
	var conr_texto = otro_texto + '\rsalto de linea también'
	print(otro_texto) #mostrara un salto de linea
	print(conr_texto) #mostrara un salto de linea el retorno del carro también
	conr_texto = otro_texto + '\r\tsalto de linea con tabulación'
	print(conr_texto) # agregara una tabulación despues del salto de linea
	## para agregar comillas al texto ya sean simples o dobles \" y \'
	conr_texto = "agregandoles \"comillas\" dobles y \'comillas\' simples a la cadena"
	print(conr_texto)
	var escapando = "escapando la \\ barra invertida "
	print(escapando) # mostrara la barra invertida dentro del texto
	
	## Cortando las cadenas en trozos, eso lo podemos hacer con el método
	## get_slice() el mismo debera recibir un delimitador ej. un espacio vacio y
	## posicion que deseemos obtener
	var texto_nuevo = "Cortando la cadena con get_slice()"
	var trozo_texto = texto_nuevo.get_slice(" ", 4) # nos quedaremos con get_slice()
	print(trozo_texto) # mostrara solo get_slice()
	
	## Creando un array con los trozos de textos de una cadena con el método split()
	## este recibira solamente un delimitador en este caso utilizaremos un espacio vacio
	var array_texto = texto_nuevo.split(" ")
	print(array_texto) # obtendremos cada palabra en un array
	# Si al split() no le incluimos un delimitador nos devolvera cada letra dentro del array
	array_texto = otro_texto.split()
	print(array_texto) # nos devuelve cada caracter incluido los espacios en el array
	
	## Para convertir un texto en mayúsculas utilizamos to_upper()
	var nombre = "Juan Perez"
	print(nombre.to_upper()) # mostrara el texto en mayusculas
	## Para convertirlo todo en minusculas utilizamos to_lower()
	print(nombre.to_lower()) # mostrara el texto en minusculas
	
	## Para cambiar una plabra por otra podemos utilizar replace() que debera recibir
	## la palabra a cambiar y la nueva palabra
	var nuevo_nombre = nombre.replace("Juan", "Carlos")
	print(nuevo_nombre) # mostrara el reemplazo de Juan por Carlos
	
	"""
	Con ctr+click podremos seleccionar cualquier función nativa de gdscript 
	y nos llevara a la documentación, esto nos puede servir para saber mas
	de gdscript y de donde vienen las cosas.  
	"""
	"""
	EXTRA
	Cadenas de formato en GDScript
		GDScript ofrece una funcionalidad llamada cadenas de formato que permite
		reutilizar plantillas de texto para crear distintas cadenas de una manera
		breve y compacta.
		Las cadenas de formato son como las cadenas normales, excepto que 
		contienen ciertas secuencias de caracteres asociadas entre sí. De esta
		forma, se pueden reemplazar fácilmente por parámetros entregados a la 
		cadena de formato.
		Por ejemplo, con %s como parámetro, la cadena de formato 
		"Hello %s, how are you? puede cambiarse fácilmente por 
		"Hello World, how are you?". Nota que el parámetro está en el medio
		de la cadena; modificarlo sin cadenas de formato podría ser engorroso.
		Ejemplo:
		# Define a format string with placeholder '%s'
			var format_string = "We're waiting for %s."
		# Using the '%' operator, the placeholder is replaced with the desired value
			var actual_string = format_string % "Godot"
			print(actual_string)
		# Output: "We're waiting for Godot."
		------------------------------------------------------------------------
		También hay otro modo de formatear texto en GDScript, el método
		String.format(). Este método reemplaza todas las ocurrencias de una 
		clave en la cadena por el correspondiente valor. Puede utilizar arrays
		o diccionarios para los pares clave/valor.
		Los arrays pueden ser utilizados como clave, índice o estilo mixto
		(ver ejemplos a continuación). El orden sólo importa cuando se utiliza
		el índice o el estilo mixto del Array.
		Un ejemplo rápido en GDScript:
		# Define a format string
			var format_string = "We're waiting for {str}"
		# Using the 'format' method, replace the 'str' placeholder
			var actual_string = format_string.format({"str": "Godot"})
			print(actual_string)
		# Output: "We're waiting for Godot"  
	"""
	"""
	CONTINUA EN EL TUTORIAL 4: FUNCIONES  
	"""
	
	
	
	
