extends Node2D



func _ready():
	var new_dialog = Dialogic.start('cut1')
	add_child(new_dialog)
