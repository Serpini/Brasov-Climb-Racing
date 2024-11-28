extends Area2D

var cantitate_benzina : float
var bara_benzina = Ui.get_node("Benzina/BenzinaBar")

func _ready() -> void:
	cantitate_benzina = bara_benzina.value

func _on_body_entered(body: Node2D) -> void:
	queue_free()
	bara_benzina.Benzina_Added()

func _process(delta: float) -> void:
	if bara_benzina.value <= 0.0:
		get_tree().change_scene_to_file("res://scenes/Main menu.tscn")
