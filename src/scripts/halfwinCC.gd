extends Control

# Reseta todas as variáveis e volta para o minigame
func _on_reset_pressed():
	var _changeScene = get_tree().change_scene("res://scenes/minigameComputerScience.tscn")
	Globals.cButton = 0
	Globals.iButton = 0
	Globals.button = 0
