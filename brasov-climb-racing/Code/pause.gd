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
