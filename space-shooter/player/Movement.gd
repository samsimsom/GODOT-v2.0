extends Node


export var movement_speed: float = 500.0
export var movement_acceleration: float = 1000.0
export var movement_deceleration: float = 2000.0


# Get movement direction range of -1, 0, 1
func get_direction() -> Vector2:
	var left: float = Input.get_action_strength("move_left")
	var right: float = Input.get_action_strength("move_right")
	var down: float = Input.get_action_strength("move_down")
	var up: float = Input.get_action_strength("move_up")

	var x = (right - left)
	var y = (down - up)
	
	return Vector2(x, y)


# Get movement direction normalized
func get_normalized_direction() -> Vector2:
	return get_direction().normalized()


func _physics_process(_delta: float) -> void:
	if owner.get_class() == "KinematicBody2D": # Check owner type
		var _a = owner.move_and_slide(get_normalized_direction() * movement_speed)
