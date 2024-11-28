extends Node2D

func _ready() -> void:
	Ui.show()
	Ui.get_node("Benzina/BenzinaBar").show()

#func _process(_delta: float) -> void:
	#if Input.is_action_just_pressed("ESC"):
		#if cl.visible == false:
			#cl.show()
		#else:
			#cl.hide()
