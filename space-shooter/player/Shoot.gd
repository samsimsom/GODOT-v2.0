extends Node


func _unhandled_input(event: InputEvent) -> void:
	shoot_input_handler(event)


# Shoot key InpuEvent handle
func shoot_input_handler(event: InputEvent) -> void:
	if event is InputEvent:
		if event.is_action_pressed("shoot"):
			print("Fire!")
