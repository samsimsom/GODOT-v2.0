extends Node


func _ready() -> void:
	print("{node_name} - Ready!".format({"node_name": self.name}))


func _unhandled_input(event: InputEvent) -> void:
	if event is InputEvent:
		if event.is_action_pressed("quit_game"):
			get_tree().quit()


func _process(_delta: float) -> void:
	pass
