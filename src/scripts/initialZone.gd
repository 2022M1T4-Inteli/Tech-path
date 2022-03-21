extends Position2D

# desenha um retângulo
func _draw():
	draw_rect(Rect2(Vector2(-50,-50),Vector2(100,100)), Color.webgray)
	
# Itera sobre cada zona na cena desmarcando-as
func select():
	for child in get_tree().get_nodes_in_group("zone"):
		child.deselect()
	modulate = Color.webgray

# "Muda" a cor do retângulo quando nada é selecionado
func deselect():
	modulate = Color.webgray
