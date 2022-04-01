extends Node2D


# Roda o diálogo 'cut1'
func _ready():
	var new_dialog = Dialogic.start('cut1')
	add_child(new_dialog)
