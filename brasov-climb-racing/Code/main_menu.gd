extends Control

var pause

func _ready():
	var ui = get_node("/root/Ui")
	ui.hide()

func _on_joaca_pressed():
	get_tree().change_scene_to_file("res://scenes/level_selector.tscn")
