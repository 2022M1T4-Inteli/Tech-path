extends Node2D

# Se estiver correto muda para a cena de ganhar. Senão muda para a cena de perder
func show_result():
	if Globals.correctOrderEC == true:
		var _changeScene = get_tree().change_scene("res://scenes/winEC.tscn")
	else:
		var _changeScene = get_tree().change_scene("res://scenes/loseEC.tscn")
	Globals.objCatchedEC = false
	Globals.nodesEC = ["/root/Node2D/Pos1",
		"/root/Node2D/Pos2",
		"/root/Node2D/Pos3",
		"/root/Node2D/Pos4",
	]

	Globals.nodeNumberEC = 0
	Globals.nodeNumberMaxEC = len(Globals.nodesEC) - 1
	Globals.correctOrderEC = true


func _on_reset_pressed():
	var _changeScene = get_tree().change_scene("res://scenes/minigameComputerEngineering.tscn")
	Globals.nodeNumberEC = 0
