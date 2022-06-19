extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process_input(true)

func _input(event: InputEvent) -> void:
	if (event is InputEventMouseMotion):
		#print(event.as_text())
		#print(event.pen_inverted)
		print(event.get_pen_inverted())
