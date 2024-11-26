extends Control
var paths_index = 0
var lvl_num_index = 0
var ui
var lvl_num = [
load("res://Sprites/1.png"),
load("res://Sprites/2.png"),
load("res://Sprites/3.jpg")
]
var paths = [
"res://Nivele/level.tscn", 
"res://Nivele/level2.tscn",
"res://Nivele/level3.tscn"
]

func _ready() -> void:
	ui = get_node("/root/Ui")
	ui.show()

	$"imagine level".texture = lvl_num[lvl_num_index]

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file(paths[paths_index])
	ui.show()

func _on_stanga_pressed() -> void:
	paths_index -= 1
	lvl_num_index -=1


func _on_dreapta_pressed() -> void:
	paths_index += 1
	lvl_num_index +=1
	

func _on_inapoi_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Main menu.tscn")

func _process(_delta: float) -> void:
	if paths_index <=-1:
		paths_index = paths.size()-1
	if lvl_num_index <=-1:
		lvl_num_index = lvl_num.size()-1
	if paths_index >= paths.size():
		paths_index = 0
	if lvl_num_index >= lvl_num.size():
		lvl_num_index = 0
	$"imagine level".texture = lvl_num[lvl_num_index]
