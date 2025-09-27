extends Node2D


const SPEED: int = 300




func _process(_delta: float) -> void:
	position += transform.x * SPEED * _delta
