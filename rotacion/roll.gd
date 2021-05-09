extends KinematicBody2D

func _ready() -> void:
	set_physics_process(true)

func _physics_process(delta: float) -> void:
	var vel: = 0.0
	var ace: = 0.5
	rotate(-1 + velocidad_rotacion(vel, ace) * delta)

func velocidad_rotacion(vel: float, ace: float) -> float:
	var vel_rot: = vel 
	vel_rot += -0.6 + ace * get_physics_process_delta_time()
	return vel_rot
