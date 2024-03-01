extends Node
## colocando la variable aqui podra ser vista por ambas funciones de abajo
## tanto de la _ready() como la de recolectar
var bolso = {madera = 1, piedra = 3, oro = 1} #variable sin identar

func _ready():
	var mi_numero = 1
	mi_numero = modificar(mi_numero)
	print(mi_numero)
	"""
	AMBITO DE LAS VARIABLES:
	Por ejemplo para una comprención facil, vamos a imaginar que queremos
	crer una funcion que nos sirva para recoger materiales y agregarlos,
	facilmente en nuestro bolso	  
	"""
	#var bolso = {madera = 1, piedra = 3, oro = 1} #comentada para evitar error
	var otro_bolso = {madera = 1, piedra = 3, oro = 1}
	recolectar("piedra")
	recolectar_con_argumento(otro_bolso, "oro") #pasando el argumento y el material
	print(bolso)
	print(otro_bolso)
	
	
	
## Creamos la función recolectar()
func recolectar(material, cantidad = 1):
	if bolso.has(material): # si existe el material que agregue la cantidad establecida
		bolso[material] += cantidad	
	else: # si no esta el material que agregue la cantidad por defecto
		bolso[material] = cantidad 
"""
VARIABLES GLOBALES: 
Esta función recolectar que tenemos arriba no funcionara porque, el contenido
de la variable bolso se encuentra fuera del escope de la funcion, es decir solo
puede ser vista esta variable por la función _ready() y no por la función
recolectar, para solucionar el error deberemos colocar la variable bolso arriba
de todo fuera de la función _ready()  y sin identación , es decir a la misma
sangria que dichas funciones. 
De esta forma quedaria establecida como una variable Global
Para arrays y diccionarios: (POR REFERENCIA)
Otra solucion para que dicha función no hubiera tenido ese problema, es haberla
pasado por ARGUMENTO, es decir que la variable recolectar la hubiera recibido
como parametro, vea el ejemplo de abajo:
	Recordar que esto funciona en los tipos complejos como diccionarios o arrays
"""		
func recolectar_con_argumento(otro_bolso, material, cantidad = 1):
	if otro_bolso.has(material): # si existe el material que agregue la cantidad establecida
		otro_bolso[material] += cantidad	
	else: # si no esta el material que agregue la cantidad por defecto
		otro_bolso[material] = cantidad 

"""
Ahora veremos como pasar las variables (POR VALOR) esto de abajo lo pondremos dentro
de la función _ready() arriba, pero como se encuentra aqui abajo no funcionaria
porque la variable mi_numero de esta forma no se modificaria,
para ello al llamar la función que se encuentra arriba deberemos hacer este cambio
mi_numero = modificar(mi_numero) y asi pasariamos el valor a mi_numero y se 
modificaria 
"""		
	#var mi_numero = 1
	#modificar(mi_numero)  ESTO POR ESO: mi_numero = modificar(mi_numero)
	#print(mi_numero)

func modificar(valor):
	valor +=3
	return valor	
