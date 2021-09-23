extends Node


func _ready() -> void:
	print("{node_name} - Ready!".format({"node_name": self.name}))


func _process(_delta: float) -> void:
	pass
