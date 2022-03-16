extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.

	
func _on_Button_pressed():
	var equacao = String($TextEdit.text)
	if equacao == "50 / 10": 
		print("correto")
		var _change_scene = get_tree().change_scene("res://Control.tscn")
	else: 
		print("errado")
		var _change_scene2 = get_tree().change_scene("res://Control2.tscn")

func _on_VoltarButton_pressed():
	var _change_scene2 = get_tree().change_scene("res://Node2D.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
