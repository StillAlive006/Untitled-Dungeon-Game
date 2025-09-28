extends Node2D
@export var enemy_scene: PackedScene
@export var spawn_area: Rect2 # Define spawn area as a rectangle
func _ready():
   $Timer.timeout.connect(_on_timer_timeout)
func _on_timer_timeout():
   # Instantiate the enemy
   var enemy = enemy_scene.instantiate()
   # Set random spawn position within the defined area
   var random_x = randf_range(spawn_area.position.x, spawn_area.position.x + spawn_area.size.x)
   var random_y = randf_range(spawn_area.position.y, spawn_area.position.y + spawn_area.size.y)
   enemy.position = Vector2(random_x, random_y)
   # Add enemy to the scene
   add_child(enemy)
