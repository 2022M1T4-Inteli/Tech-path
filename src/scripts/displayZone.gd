extends Position2D

signal displayCorrect()

export var displayCorrect = false
export var memoriaCorrect = false
export var processadorCorrect = false
export var softwareCorrect = false

func _draw():
	draw_rect(Rect2(Vector2(-50,-50),Vector2(100,100)), Color.webgray)
	
func select():
	for child in get_tree().get_nodes_in_group("zone"):
		child.deselect()
	modulate = Color.webgray
	if displayCorrect:
		emit_signal("displayCorrect")

func deselect():
	modulate = Color.webgray


func _on_displayZone_displayCorrect():
	displayCorrect = false
