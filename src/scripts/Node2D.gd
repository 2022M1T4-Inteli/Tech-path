extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.

	
func _on_Button_pressed():
	var equacao = String($TextEdit.text)
	if equacao == "100 / 500": 
		var _change_scene = get_tree().change_scene("res://scenes/scena_win_minigame.tscn")
		Globals.pointsSistInf = Globals.time * Globals.pointsSistInf
	else: 
		var _change_scene2 = get_tree().change_scene("res://scenes/Control2.tscn")
		Globals.pointsSistInf = 5

func _on_VoltarButton_pressed():
	var _change_scene2 = get_tree().change_scene("res://Node2D.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
