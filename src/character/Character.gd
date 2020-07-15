extends Area2D

signal item_picked(pickable)


export(int, 0, 200) var speed = 100


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var dir = Input.get_action_strength("right") - Input.get_action_strength("left")

	position.x += speed * dir * delta


func _on_area_entered(area):
	emit_signal("item_picked", area)
