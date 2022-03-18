extends StaticBody2D

var active = false

func _input(_ev):
	# Muda de cena quando pressionada a tecla "V" apenas na área específica
	if Input.is_key_pressed(KEY_V) and active:
		var _changeScene = get_tree().change_scene("res://scenes/instructionSF.tscn")

# o objeto fica vísivel em uma área específica
func _on_Area_ativa_area_entered(_area):
	self.visible = true
	active = true

# o objeto fica invísivel quando sai de uma área específica
func _on_Area_ativa_area_exited(_area):
	self.visible = false
	active = false
