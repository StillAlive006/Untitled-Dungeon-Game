extends Node2D


const SPEED: int = 600
var t = true


func _process(_delta: float) -> void:
	position += transform.x * SPEED * _delta
	if t:
		print("hio")
		t = false
