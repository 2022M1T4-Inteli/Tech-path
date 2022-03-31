extends PopupMenu

var is_paused = false setget set_is_paused

func _unhandled_input(event):
	if event.is_action_pressed("pause_game"):
		self.is_paused = !is_paused
		popup()
		
		

func set_is_paused(value):
	is_paused = value
	get_tree().paused = is_paused
	visible = is_paused
	
	
func _on_ResumeBtn_pressed():
	self.is_paused = false
	
func _on_QuitBtn_pressed():
	get_tree().quit()
	
func _on_VoltarMenuBtn_pressed():
	get_tree().change_scene("res://scenes/menu.tscn")

