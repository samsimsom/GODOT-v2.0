extends Node


var velocity_lerp_weight: float = 0.2
var velocity: Vector2 = Vector2.ZERO
var movement_speed setget movement_speed_set, movement_speed_get


func movement_speed_set(value):
	movement_speed = value


func movement_speed_get():
	return movement_speed


func _ready() -> void:
	movement_speed_set(500.0)


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


func calculate_velocity(current_velocity) -> Vector2:
	current_velocity = Vector2.ZERO
	current_velocity.x = lerp(velocity.x, 
			movement_speed_get() * get_normalized_direction().x, 
			velocity_lerp_weight)
	current_velocity.y = lerp(velocity.y, 
			movement_speed_get() * get_normalized_direction().y, 
			velocity_lerp_weight)
	if current_velocity.length() < 0.1:
		current_velocity = Vector2.ZERO
	velocity = current_velocity
	return velocity


func move() -> void:
	velocity = owner.owner.move_and_slide(calculate_velocity(velocity))


func _physics_process(_delta: float) -> void:
	move()
