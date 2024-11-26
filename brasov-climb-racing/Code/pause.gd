extends Control

func _ready() -> void:
	$CanvasLayer.hide()

func _on_resume_pressed() -> void:
	Pause.get_node("CanvasLayer").hide()

func show_pause_menu() ->void:
	$CanvasLayer.show()



func _on_main_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Main menu.tscn")
	$CanvasLayer.hide()
	
func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("ESC"):
		if get_tree().current_scene.name == "Main menu.tscn":
			$CanvasLayer.hide()
		elif $CanvasLayer.visible == false:
			$CanvasLayer.hide()
		else:
			$CanvasLayer.show()
