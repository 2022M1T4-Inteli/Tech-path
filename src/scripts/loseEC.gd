extends Control

# Reseta todas as variáveis e volta para o minigame
func _on_reset_pressed():
	var _changeScene = get_tree().change_scene("res://scenes/minigameComputerEngineering.tscn")
	Globals.objCatchedEC = false
	Globals.nodesEC = ["/root/Node2D/Pos1",
		"/root/Node2D/Pos2",
		"/root/Node2D/Pos3",
		"/root/Node2D/Pos4",
	]

	Globals.nodeNumberEC = 0
	Globals.nodeNumberMaxEC = len(Globals.nodesEC) - 1
	Globals.correctOrderEC = true
