extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func set_value(new_value):
	$HBoxContainer/Label.text = "x%d" % new_value
