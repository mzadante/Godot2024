extends CharacterBody3D

""" Movimiento 3D """
# Variables de movimiento del personaje
@export var speed : float

func _process(delta):
	motion_ctrl()

# Función de control de movimiento
func motion_ctrl() -> void:
	velocity.x = GLOBAL.get_axis().x * speed
	velocity.z = GLOBAL.get_axis().y * -speed
	move_and_slide()	
	

