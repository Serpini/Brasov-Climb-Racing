extends Node2D

var cl = Pause.get_node("CanvasLayer")

func _Ready() -> void:
	Ui.Show()
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ESC"):
		if cl.visible == false:
			cl.show()
		else:
			cl.hide()
