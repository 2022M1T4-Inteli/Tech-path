extends Button

# Apertando o botão ocorre mudança de cena
func _on_VoltarButton_pressed():
	var _changeScene = get_tree().change_scene("res://scenes/bunker.tscn")


func _on_Button_pressed():
	get_tree().change_scene("res://scenes/minigame_ciencia_computacao.tscn")


func _on_reset_pressed():
	get_tree().change_scene("res://scenes/minigame_ES.tscn")
	Globals.nodeNumber = 0
	Globals.correctOrder = true
	Globals.onBar = false
	Globals.inFinalPos = false
	Globals.inBar = false
