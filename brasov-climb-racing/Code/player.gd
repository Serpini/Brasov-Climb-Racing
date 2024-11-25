extends RigidBody2D
var roti = []
var putere = 50000
var speed_max = 50
var merge = 0
var grip = 50

func _ready():
	roti = get_tree().get_nodes_in_group("Roti")

func _physics_process(delta):
	
	merge = 0
	
	if Input.is_action_pressed("ui_right"):
		apply_torque_impulse(-1500 * delta * 60)
		merge =+ 1
		for Roata in roti:
			if Roata.angular_velocity < speed_max:
				Roata.apply_torque_impulse(putere * delta * 60)

	if Input.is_action_pressed("ui_left"):
		apply_torque_impulse(1500 * delta * 60)
		merge =+ 1
		for Roata in roti:
			if Roata.angular_velocity > -speed_max:
				Roata.apply_torque_impulse(-putere * delta * 60)

	if merge == 1:
		$motor_fx.pitch_scale = lerp($motor_fx.pitch_scale, 1.5, 2.0 * delta)
	else:
		$motor_fx.pitch_scale = lerp($motor_fx.pitch_scale, 1.0, 2.0 * delta)
