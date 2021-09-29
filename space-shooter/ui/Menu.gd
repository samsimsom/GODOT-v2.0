extends CanvasLayer


func _ready() -> void:
	# set menu backgorund color
	$Background.color_rect.color = Color(0.13, 0.13, 0.13, 1)


func _on_QuitButton_pressed() -> void:
	print("Quit Button Pressed!")
