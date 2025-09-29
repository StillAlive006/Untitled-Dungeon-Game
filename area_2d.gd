extends Area2D


const SPEED: int = 1000
var t = true


func _process(_delta: float) -> void:
	position += transform.x * SPEED * _delta
	if t:
		print("hio")
		t = false


func _on_body_entered(body: Node2D) -> void:
	
	if body.has_method("take_damage"):
		body.take_damage()
		queue_free()
