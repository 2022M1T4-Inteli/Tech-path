extends Node2D

# Essa função valida se a resposta dada pelo usuário está correta
func _on_Button_pressed():
	var equacao = String($TextEdit.text)
	if equacao == "100 / 500": 
		var _changeScene = get_tree().change_scene("res://scenes/scena_win_minigame.tscn")
		Globals.pointsSistInf = Globals.time * Globals.pointsSistInf
	else: 
		var _changeScene2 = get_tree().change_scene("res://scenes/Control2.tscn")
		Globals.pointsSistInf = 5

func _on_VoltarButton_pressed():
	var _changeScene2 = get_tree().change_scene("res://scripts/minigameSi.gd")
