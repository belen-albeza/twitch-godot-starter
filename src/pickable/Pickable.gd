extends Node2D


# Declare member variables here. Examples:
var speed = 40


# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y += speed * delta

	if position.y >= 200:
		queue_free()
