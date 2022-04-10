extends Node2D

# Se estiver correto escreve "Parabéns!". Senão escreve "Errou!"
func show_result():
	if Globals.correctOrder == true:
		var _changeScene = get_tree().change_scene("res://scenes/winES.tscn")
	else:
		var _changeScene = get_tree().change_scene("res://scenes/loseES.tscn")

# Ao apertar o botão volta para o bunker
func _on_botao_sair_pressed():
	var _changeScene = get_tree().change_scene("res://scenes/bunker.tscn")

# Reseta as variáveis e volta para o minigame
func _on_botao_reset_pressed():
	var _changeScene = get_tree().change_scene("res://scenes/minigameSoftwareEngineering.tscn")
	Globals.nodeNumber = 0
	
