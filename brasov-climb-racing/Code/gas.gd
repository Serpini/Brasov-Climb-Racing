extends Area2D

var cantitate_benzina : float
var bara_benzina = Ui.get_node("MarginContainer/BenzinaBar")

func _ready() -> void:
	cantitate_benzina = bara_benzina.value

func _on_body_entered(body: Node2D) -> void:
	queue_free()
	bara_benzina.BenzinaAdded()
