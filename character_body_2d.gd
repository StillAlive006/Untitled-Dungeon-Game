extends CharacterBody2D

var health = 3

@onready var Player = get_tree().get_root().get_node("Main/Player")

func _physics_process(_delta):
	if Player: # check if found
		var direction = global_position.direction_to(Player.global_position)
		velocity = direction * 150.0
		move_and_slide()

func take_damage():
	health -= 1
	
	if health == 0:
		queue_free()
