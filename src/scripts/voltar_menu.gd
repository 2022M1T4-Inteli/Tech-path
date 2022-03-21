extends Button

# Apertando o botão ocorre mudança de cena
func _on_Button_pressed():
	get_tree().change_scene("res://scenes/menu.tscn")
