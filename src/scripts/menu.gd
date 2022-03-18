extends Control

# ao apertar o botão de jogar mudará para a cena inicial
func play():
 var _changeScene = get_tree().change_scene("res://scenes/nivel.tscn")

# ao apertar o botão de sair o jogo fecha
func quit():
	get_tree().quit()

# ao apertar o botão de controles a cena muda
func _on_Options_pressed():
	get_tree().change_scene("res://scenes/Control.tscn")
	
