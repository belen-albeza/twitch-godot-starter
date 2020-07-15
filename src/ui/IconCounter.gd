extends Control


var value = 0 setget set_value


func set_value(new_value):
	value = new_value
	$HBoxContainer/Label.text = "x%d" % new_value
