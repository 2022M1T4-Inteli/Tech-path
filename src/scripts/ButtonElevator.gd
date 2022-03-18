extends StaticBody2D

# o objeto fica vísivel em uma área específica
func _on_Area_ativa_area_entered(_area):
	self.visible = true

# o objeto fica invísivel quando sai de uma área específica
func _on_Area_ativa_area_exited(_area):
	self.visible = false
