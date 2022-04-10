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
		self.position = get_parent().get_node(Globals.nodesEC[Globals.nodeNumberEC]).position
		
		# Checar se a ordem está correta
		if Globals.nodeNumberEC != int(self.blockType):
			Globals.correctOrderEC = false
		
		# fazer com que o espaço destinado à colocação do objeto na barra sempre seja diferente do anterior
		Globals.nodeNumberEC += 1
		inFinalPos = true
		
	if !inFinalPos:
		# caso a peça não esteja sobre a barra e o botão do mouse estiver pressionado, o objeto vai seguir o mouse
		if mouse && Input.is_mouse_button_pressed(1):
			self.position = mouse_pos
		# se o botão no mouse não estiver pressionado e a peça estiver fora da barra ela retornará á posição original
		else:
			self.position = defaultPosition
			
# faz o mouse pegar o objeto
func _on_Area2D_mouse_entered():
	if !Globals.objCatchedEC:
		mouse = true
		Globals.objCatchedEC = true

# faz o mouse soltar o objeto
func _on_Area2D_mouse_exited():
	if !Input.is_mouse_button_pressed(1):
		mouse = false
		Globals.objCatchedEC = false

# verifica se o objeto entrou na barra preta
func _on_BlocoDeCodigo_body_entered(body):
	if body.is_in_group("Barra"):
		onBar = true

# verifica se o objeto saiu da barra preta
func _on_BlocoDeCodigo_body_exited(body):
	if body.is_in_group("Barra"):
		onBar = false

# Mostra o resultado se o número de nós é maior do que o valor máximo
func _on_check_pressed():
	if Globals.nodeNumberEC > Globals.nodeNumberMaxEC:
		var _changeScene = get_tree().get_root().get_node("Node2D").show_result()
