extends TextureProgressBar


var rate = 0.08


func _ready():
	hide() 

func _process(delta):
	if visible:
		if Input.is_action_pressed("ui_left") || Input.is_action_pressed("ui_right"):
			value = max(value - rate, 0)

func Benzina_Added():
	value = min(value + 20, max_value)
