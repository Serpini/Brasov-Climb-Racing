extends RigidBody2D

func apply_custom_torque(torque):
	apply_torque_impulse(torque)
