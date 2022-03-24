extends Node2D

func show_result():
	if Globals.correctOrder == true:
		$Label.text = "Parabéns!"
	else:
		$Label.text = "Errou!"


func _on_Button9_pressed():
	var _changeScene = get_tree().change_scene("res://scenes/bunker.tscn")
