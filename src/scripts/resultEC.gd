extends Node2D

# Se estiver correto muda para a cena de ganhar. Senão muda para a cena de perder
func show_result():
	if Globals.correctOrderEC == true:
		get_tree().change_scene("res://scenes/winEC.tscn")
	else:
		get_tree().change_scene("res://scenes/loseEC.tscn")
