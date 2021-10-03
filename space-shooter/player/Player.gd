extends KinematicBody2D

var obj = preload("res://Test.gd").new()

func _ready() -> void:
	print(obj.get_my_name())
