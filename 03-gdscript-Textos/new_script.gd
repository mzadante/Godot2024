extends Node

func _ready():
	"""
	MANEJO DE TEXOS: STRING  
	Los textos son cadenas(String), serian como un array de letras que forman 
	palabras, siempre estos textos deben ir entre comillas "", es decir que 
	tambien los podriamos manejar como un array, podriamos también concatenarlos
	con el operador matemático +
	"""
	# Ejemplo simple:
	var texto = "Aprendiendo gdscript para Godot"
	print(texto) # veremos el texto 
	# obtener un caracter a traves de la posicion como si se tratara de un array
	print(texto[0]) # obtendremos la letra A que es la primera letra de la cadena
	# Concatenando el texto con el operador +
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
	
	
	
	
	
