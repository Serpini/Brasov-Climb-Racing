extends CanvasLayer

var pause

func _ready():
	pause = get_node("Pause")
	pause.hide()
	if get_tree().current_scene.name != "Control":
		$Bani.show()
	elif get_tree().current_scene.name != "Control" || "level_selector":
		$Benzina.show()
		
		


func change_coin_label():
	var label = $Bani/CoinScore
	label.text = str(Global.level_coins)
	
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ESC") && pause.visible:
		pause.show()
	elif Input.is_action_just_pressed("ESC"):
		pause.hide()
