extends Sprite

var mouseIn = false

func _process(_delta):
	if mouseIn and Input.is_action_pressed("click"):
		set_position(get_viewport().get_mouse_position())

func _on_Area2D_mouse_entered():
	mouseIn = true

func _on_Area2D_mouse_exited():
	mouseIn = false
