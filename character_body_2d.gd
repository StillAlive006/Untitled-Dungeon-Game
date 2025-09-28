extends CharacterBody2D

var health = 3

@onready var Player = get_tree().get_root().get_node("Main/Player")

#func _ready() -> void:
	#position = Vector2(randi_range(2, -2), randi_range(2, -2))

func _physics_process(_delta):
	if Player: # check if found
		var direction = global_position.direction_to(Player.global_position)
		velocity = direction * 150.0
		move_and_slide()

func take_damage():
	health -= 1
	
	if health == 0:
		queue_free()
		

func spawner():
	#position.x = randf_range(-100, 800)
	position = Vector2(randi_range(500, -500), randi_range(500, -500))
	#position.y = randf_range(-800, 50)
	
