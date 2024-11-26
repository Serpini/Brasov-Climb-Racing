# 
extends Node2D

func _ready() -> void:
	pass 


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ESC"):
		if Pause.get_node("CanvasLayer").visible == false:
			Pause.get_node("CanvasLayer").show()
		else:
			Pause.get_node("CanvasLayer").hide()
