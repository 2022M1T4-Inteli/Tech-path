extends Node2D

# Quando pressionado o botão checa se a equação escrita está correta ou não
func _on_Button_pressed():
	var equacao = String($TextEdit.text)
	# Correto: calcula a pontuação e muda de cena
	if equacao == "100 / 500": 
		var _change_scene = get_tree().change_scene("res://scenes/scena_win_minigame.tscn")
		Globals.pointsSistInf = Globals.time * 5
	# Incorreto: pontuação fixa e muda de cena
	else: 
		var _change_scene2 = get_tree().change_scene("res://scenes/Control2.tscn")
		Globals.pointsSistInf = 100

# Muda de cena quando pressionado o botão
func _on_VoltarButton_pressed():
	var _change_scene2 = get_tree().change_scene("res://Node2D.tscn")

