extends Node2D

# Se estiver correto escreve "Parabéns!". Senão escreve "Errou!"
func show_result():
	if Globals.correctOrder == true:
		$Label.text = "Parabéns!"
	else:
		$Label.text = "Errou!"

# Muda de cena ao apertar o botão
func _on_Button9_pressed():
	var _changeScene = get_tree().change_scene("res://scenes/bunker.tscn")
