extends Control

var bara_pauza
func _ready() -> void:
	bara_pauza = Pause.get_node("CanvasLayer")
	bara_pauza.hide()

func _on_resume_pressed() -> void:
	bara_pauza.hide()

func show_pause_menu() ->void:
	bara_pauza.show()



func _on_main_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Main menu.tscn")
	bara_pauza.hide()
	
func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("ESC"):
		print(get_tree().current_scene.name)
		if get_tree().current_scene.name == "Control":
			bara_pauza.hide()
		elif bara_pauza.visible == true:
			bara_pauza.hide()
		else:
			bara_pauza.show()
