extends PopupMenu

var is_paused = false setget set_is_paused

# Pausa o jogo e mostra o popup (meu de pause)
func _unhandled_input(event):
	if event.is_action_pressed("pause_game"):
		self.is_paused = !is_paused
		popup()
		
		

func set_is_paused(value):
	is_paused = value
	get_tree().paused = is_paused
	visible = is_paused
	
# Ao apertar o botão retoma o jogo
func _on_ResumeBtn_pressed():
	self.is_paused = false
	
# Ao apertar o botão fecha o jogo
func _on_QuitBtn_pressed():
	get_tree().quit()
	
# Ao apertar o botão volta para o menu
func _on_VoltarMenuBtn_pressed():
	get_tree().change_scene("res://scenes/Menu_principal.tscn")

