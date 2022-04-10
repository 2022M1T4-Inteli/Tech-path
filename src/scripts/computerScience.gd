extends Node2D

# Quando pressionados os botões eles ficam vermelhos (adicionando 1 a variável de botões incorretos) ou verdes (adicionando 1 a variável de botões corretos) de acordo com uma pré definição

func _on_Button_pressed():
	$Button/ColorRect.visible = true
	Globals.cButton += 1
	
	
func _on_Button3_pressed():
	$Button3/ColorRect.visible = true
	Globals.cButton += 1

	
func _on_Button4_pressed():
	$Button4/ColorRect.visible = true
	Globals.iButton += 1
	
	
func _on_Button5_pressed():
	$Button5/ColorRect.visible = true
	Globals.iButton += 1

func _on_Button2_pressed():
	$Button2/ColorRect.visible = true
	Globals.cButton += 1


func _on_Button6_pressed():
	$Button6/ColorRect.visible = true
	Globals.iButton += 1

# Apertando o botão ocorre mudança de cena
func _on_Button9_pressed():
	var _changeScene = get_tree().change_scene("res://scenes/bunker.tscn")
