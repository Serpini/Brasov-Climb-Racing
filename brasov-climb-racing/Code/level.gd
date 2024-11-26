extends Node2D

var cl = Pause.get_node("CanvasLayer")

func _ready() -> void:
	Ui.show()
	Ui.get_node("MarginContainer/BenzinaBar").show()

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("ESC"):
		if cl.visible == false:
			cl.show()
		else:
			cl.hide()
