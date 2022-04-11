extends Node2D

# Quando pressionado o botão checa se a equação escrita está correta ou não
func _on_Button_pressed():

	var equacao = String($TextEdit.text)
	# Correto: calcula a pontuação e muda de cena
	if equacao == "100 / 500" or equacao == "100/500": 
		var _change_scene = get_tree().change_scene("res://scenes/winSI.tscn")
		Globals.pointsSistInf = Globals.time * 5
		Globals.time = 180
	# Incorreto: pontuação fixa e muda de cena
	else: 
		var _change_scene = get_tree().change_scene("res://scenes/loseSI.tscn")
		Globals.pointsSistInf = 500
		Globals.time = 180

# Muda de cena quando pressionado o botão
func _on_VoltarButton_pressed():
	var _change_scene = get_tree().change_scene("res://Node2D.tscn")


# Ao apertar o botão volta para o bunker
func _on_Button9_pressed():
	var _changeScene = get_tree().change_scene("res://scenes/bunker.tscn")
