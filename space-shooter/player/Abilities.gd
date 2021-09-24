extends Node


# Check owner class for abilities functions
func _check_owner_class() -> void:
	if owner.get_class() == "KinematicBody2D":
		pass
	elif owner.get_class() == "Area2D":
		pass
	else:
		pass
