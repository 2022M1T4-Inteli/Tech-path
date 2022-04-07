extends Node2D

# Se estiver correto muda para a cena de ganhar. Senão muda para a cena de perder
func show_result():
	if Globals.correctOrderEC == true:
		get_tree().change_scene("res://scenes/winEC.tscn")
	else:
		get_tree().change_scene("res://scenes/loseEC.tscn")
	Globals.objCatchedEC = false
	Globals.nodesEC = ["/root/Node2D/Pos1",
		"/root/Node2D/Pos2",
		"/root/Node2D/Pos3",
		"/root/Node2D/Pos4",
	]

	Globals.nodeNumberEC = 0
	Globals.nodeNumberMaxEC = len(Globals.nodesEC) - 1
	Globals.correctOrderEC = true
