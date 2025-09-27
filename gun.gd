extends Node2D
@onready var timer: Timer = $Timer

const BULLET = preload("res://bullet.tscn")

var gun = 1

func _process(_delta: float) -> void:
	look_at(get_global_mouse_position())
	
	rotation_degrees = wrap(rotation_degrees, 0, 360)

	if Input.is_action_just_pressed("shoot"):
		if gun == 1:
			gun = 0
			var bullet_instance = BULLET.instantiate()
			get_tree().root.add_child(bullet_instance)
			bullet_instance.global_position = global_position
			bullet_instance.rotation = rotation
			timer.start()
			


func _on_timer_timeout() -> void:
	gun = 1
	print("1")
