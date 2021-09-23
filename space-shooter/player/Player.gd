extends KinematicBody2D



"""
move and slide icin ihtiyacim olanlar
direction = eksi yada arti normalize edilmis bir vektor.
speed = hareketin hizi
acceleration ve deceleration = birim hiza ulsak icin gereken hizlanma 
ve yavaslama float

"""


func get_direction() -> Vector2:
	var left: float = Input.get_action_strength("move_left")
	var right: float = Input.get_action_strength("move_right")
	var down: float = Input.get_action_strength("move_down")
	var up: float = Input.get_action_strength("move_up")

	var x = (left - right)
	var y = (down - up)
	
	return Vector2(x, y)


func get_normalized_direction() -> Vector2:
	return get_direction().normalized()


func _ready() -> void:
	pass


func _physics_process(delta: float) -> void:
	print(get_normalized_direction())
