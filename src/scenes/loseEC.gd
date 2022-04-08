extends Control



func _on_reset_pressed():
	get_tree().change_scene("res://scenes/minigame_engenharia_computacao.tscn")
	Globals.nodeNumberEC = 0
