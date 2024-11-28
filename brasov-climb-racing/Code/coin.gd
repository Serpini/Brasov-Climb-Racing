extends Area2D

func _ready():
	# Conectează semnalul `body_entered` la funcția `_on_coin_body_entered`
	connect("body_entered", Callable(self, "_on_coin_body_entered"))

func _on_coin_body_entered(body: Node):
	# Elimină moneda
	queue_free()

	# Actualizează scorul global al monedelor
	if Global.has("level_coins"):
		Global.level_coins += 1
	else:
		Global.level_coins = 1

	# Actualizează eticheta din UI
	if get_tree().root.has_node("Ui"):
		var ui = get_tree().root.get_node("Ui")
		ui.change_coin_label()

	# Redă sunetul monedei
	$CoinSound.play()
