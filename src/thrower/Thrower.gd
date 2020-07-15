extends Node2D


const SPEED = 50

# Declare member variables here.
var target_x = get_random_position()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var dir = sign(target_x - position.x)
	position.x += SPEED * dir * delta

	var has_arrived = (
		dir == 0 or
		(dir >= 1 and position.x >= target_x) or
		(dir <= -1 and position.x <= target_x)
	)

	if has_arrived:
		target_x = get_random_position()


func get_random_position():
	return rand_range(0, 160)
