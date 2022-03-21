extends Button

# Apertando o botão ocorre mudança de cena
func _on_back_pressed():
	var _changeScene = get_tree().change_scene("res://scenes/bunker.tscn")
