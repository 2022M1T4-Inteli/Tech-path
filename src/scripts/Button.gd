extends StaticBody2D

func _on_Area2D_area_entered(_area):
	self.visible = true


func _on_Area2D_area_exited(_area):
	self.visible = false

