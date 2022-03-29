extends StaticBody2D


var active = false

# o objeto fica vísivel em uma área específica
func _on_Area2D_area_entered(_area):
	self.visible = true
	active = true
	
# o objeto fica invísivel quando sai de uma área específica
func _on_Area2D_area_exited(_area):
	self.visible = false
	active = false
	
func _input(_ev):
	# Muda de cena quando pressionada a tecla "E" apenas na área específica
	if Input.is_key_pressed(KEY_C) and active:
		var _changeScene = get_tree().change_scene("res://scenes/instructionES.tscn")
