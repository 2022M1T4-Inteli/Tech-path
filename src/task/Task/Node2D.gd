extends Node2D

func show_result():
	if Global.correctOrder == true:
		$Label.text = "Parabéns!"
	else:
		$Label.text = "Errou!"
