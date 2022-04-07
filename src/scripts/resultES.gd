extends Node2D

# Se estiver correto escreve "Parabéns!". Senão escreve "Errou!"
func show_result():
	if Globals.correctOrder == true:
		get_tree().change_scene("res://scenes/winES.tscn")
	else:
		get_tree().change_scene("res://scenes/loseES.tscn")

# Ao apertar o botão volta para o bunker


func _on_botao_sair_pressed():
	get_tree().change_scene("res://scenes/bunker.tscn")


func _on_botao_reset_pressed():
	get_tree().change_scene("res://scenes/minigame_ES.tscn")
	
