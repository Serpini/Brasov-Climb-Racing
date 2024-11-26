extends RigidBody2D

var roti = []
var viteza = 0.0
var putere = 600000.0
var max_speed = 10000.0
var merge = 0
var rotatie = 15000
var acceleratie = 5.0 
var torque = 0.0 

func _ready() -> void:
	roti = get_tree().get_nodes_in_group("Roti")

func _physics_process(delta):

	merge = 0

	if Input.is_action_pressed("ui_right"):
		apply_torque_impulse(-rotatie * delta * 60)
		torque = lerp(torque, putere, delta * acceleratie)
		for Roata in roti:
			get_tree().call_group("Roti", "apply_torque", torque * delta * 60)
			if Roata.angular_velocity > max_speed:
				Roata.apply_torque_impulse( torque * delta * 60)
		merge =+ 1
	
	elif Input.is_action_pressed("ui_left"):
		apply_torque_impulse(rotatie * delta * 60)
		torque = lerp(torque, -putere, delta * acceleratie)
		for Roata in roti:
			get_tree().call_group("Roti", "apply_torque", torque * delta * 60)
			if Roata.angular_velocity < -max_speed:
				Roata.apply_torque_impulse(torque * delta * 60)
		merge =+ 1
	else:       
		torque = lerp(torque, 0.0, delta * acceleratie)

	if merge == 1:
		$motor_fx.pitch_scale = lerp($motor_fx.pitch_scale, 1.5, 2.0 * delta)
	else:
		$motor_fx.pitch_scale = lerp($motor_fx.pitch_scale, 1.0, 2.0 * delta)
