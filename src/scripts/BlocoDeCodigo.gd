extends Area2D

var mouse = false
var onBar = false
var inFinalPos = false
var inBar = false
export var blockType = ""
onready var defaultPosition = self.position

func _physics_process(_delta):
	# pegar a posição do mouse e armazenar em uma variável
	var mouse_pos = get_viewport().get_mouse_position()
	
	# conferir se o objeto foi solto sobre a barra preta e, caso seja verdadeiro, realocá-lo para a posição correta
	if onBar && !Input.is_mouse_button_pressed(1) && !inFinalPos:
		#fazer com que a posição do objeto seja igual a posição do mouse
		self.position = get_parent().get_node(Globals.nodes[Globals.nodeNumber]).position
		
		# Checar se a ordem está correta
		if Globals.nodeNumber != int(self.blockType):
			Globals.correctOrder = false
		# fazer com que o espaço destinado à colocação do objeto na barra sempre seja diferente do anterior
		Globals.nodeNumber += 1
		inFinalPos = true
		
	if !inFinalPos:
		# caso a peça não esteja sobre a barra e o botão do mouse estiver pressionado, o objeto vai seguir o mouse
		if mouse && Input.is_mouse_button_pressed(1):
			self.position = mouse_pos
		# se o botão no mouse não estiver pressionado e a peça estiver fora da barra ela retornará  posição original
		else:
			self.position = defaultPosition
			
	# Mostra o resultado se o número de nós é maior do que o valor máximo
	if Globals.nodeNumber > Globals.nodeNumberMax:
		get_tree().get_root().get_node("Node2D2").show_result()

# faz o mouse pegar o objeto
func _on_Area2D_mouse_entered():
	if !Globals.objCatched:
		mouse = true
		Globals.objCatched = true

# faz o mouse soltar o objeto
func _on_Area2D_mouse_exited():
	if !Input.is_mouse_button_pressed(1):
		mouse = false
		Globals.objCatched = false

# verifica se o objeto entrou na barra preta
func _on_BlocoDeCodigo_body_entered(body):
	if body.is_in_group("Barra"):
		onBar = true

# verifica se o objeto saiu da barra preta
func _on_BlocoDeCodigo_body_exited(body):
	if body.is_in_group("Barra"):
		onBar = false
