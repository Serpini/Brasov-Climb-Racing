extends Control
var paths_index = 0
var ui
var paths = [
"res://Nivele/level.tscn", 
"res://scenes/player.tscn"
]

func _ready() -> void:
	ui = get_node("/root/Ui")
	ui.show()
func _on_start_pressed() -> void:
	get_tree().change_scene_to_file(paths[paths_index])


func _on_stanga_pressed() -> void:
	paths_index -= 1


func _on_dreapta_pressed() -> void:
	paths_index += 1
	
func _process(delta: float) -> void:
	if paths_index <=-1:
		paths_index = paths.size()-1
	if paths_index >= paths.size():
		paths_index = 0
		
