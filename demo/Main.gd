extends Node

var pen_inverted := false
var pressed := false

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process_input(true)

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		#print(event.as_text())
		pen_inverted = event.get_pen_inverted()
		print(pen_inverted)
	elif event is InputEventMouseButton:
		pressed = event.pressed

func _process(delta: float) -> void:
	if pen_inverted:
		if pressed:
			RenderingServer.set_default_clear_color(Color(0,1.0,0,1.0))
		else:
			RenderingServer.set_default_clear_color(Color(0,0.6,0,1.0))
	else:
		if pressed:
			RenderingServer.set_default_clear_color(Color(1.0,0,0,1.0))
		else:
			RenderingServer.set_default_clear_color(Color(0.6,0,0,1.0))
