extends Button

# Apertando o botão ocorre mudança de cena
func _on_Button_pressed():
	var change_scene = get_tree().change_scene("res://scenes/minigame_engenharia_computacao.tscn")
