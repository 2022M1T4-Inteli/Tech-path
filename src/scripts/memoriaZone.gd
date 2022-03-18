extends Position2D

signal memoriaCorrect()

export var displayCorrect = false
export var memoriaCorrect = false
export var processadorCorrect = false
export var softwareCorrect = false

# desenha um retângulo
func _draw():
	draw_rect(Rect2(Vector2(-50,-50),Vector2(100,100)), Color.webgray)

# Itera sobre cada zona na cena desmarcando-as
func select():
	for child in get_tree().get_nodes_in_group("zone"):
		child.deselect()
	modulate = Color.webgray
	if memoriaCorrect:
		emit_signal("memoriaCorrect")

# "Muda" a cor do retângulo quando nada é selecionado
func deselect():
	modulate = Color.webgray


func _on_displayZone_displayCorrect():
	memoriaCorrect = true


func _on_memoriaZone_memoriaCorrect():
	memoriaCorrect = false
