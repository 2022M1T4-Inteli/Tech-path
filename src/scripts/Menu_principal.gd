extends Node2D

# Ao apertar o botão "Jogar" muda de cena
func _on_Jogar_pressed():
	get_tree().change_scene("res://scenes/cutscene.tscn")

# Ao apertar o botão "Sair" o jogo fecha
func _on_Sair_pressed():
	get_tree().quit()
