extends Control

# ao apertar o botão de jogar mudará para a cena inicial
func play():
 var _change_scene = get_tree().change_scene("res://scenes/nivel.tscn")

# ao apertar o botão de sair o jogo fecha
func quit():
	get_tree().quit()




func _on_Options_pressed():
	get_tree().change_scene("res://Control.tscn")
	
