extends Node2D

var score = 0

# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func game_over():
	get_tree().reload_current_scene()


func _on_Ground_area_entered(area):
	area.queue_free()
	game_over()


func _on_Character_item_picked(pickable):
	pickable.queue_free()
	score += 1
	$IconCounter.value = score
