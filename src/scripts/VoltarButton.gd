extends Button

# Apertando o botão ocorre mudança de cena
func _on_VoltarButton_pressed():
	var _changeScene = get_tree().change_scene("res://scenes/minigame_sistema_informacao.tscn")
