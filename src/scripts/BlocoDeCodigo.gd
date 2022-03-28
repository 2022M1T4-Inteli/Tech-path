extends Area2D

var mouse = false
var onBar = false
var inFinalPos = false
var inBar = false
export var blockType = ""
onready var defaultPosition = self.position

func _physics_process(_delta):
	var mouse_pos = get_viewport().get_mouse_position()
	
	if onBar && !Input.is_mouse_button_pressed(1) && !inFinalPos:
		
		self.position = get_parent().get_node(Globals.nodes[Globals.nodeNumber]).position
		
		# Checar se a ordem está correta
		if Globals.nodeNumber != int(self.blockType):
			Globals.correctOrder = false
		
		Globals.nodeNumber += 1
		inFinalPos = true
		
	if !inFinalPos:
		# Posição é igual a posição do mouse
		if mouse && Input.is_mouse_button_pressed(1):
			self.position = mouse_pos
		# Posição é igual a posição padrão
		else:
			self.position = defaultPosition
			
	# Mostra o resultado se o número de nós é maior do que o valor máximo
	if Globals.nodeNumber > Globals.nodeNumberMax:
		get_tree().get_root().get_node("Node2D").show_result()


func _on_Area2D_mouse_entered():
	if !Globals.objCatched:
		mouse = true
		Globals.objCatched = true


func _on_Area2D_mouse_exited():
	if !Input.is_mouse_button_pressed(1):
		mouse = false
		Globals.objCatched = false


func _on_BlocoDeCodigo_body_entered(body):
	if body.is_in_group("Barra"):
		onBar = true


func _on_BlocoDeCodigo_body_exited(body):
	if body.is_in_group("Barra"):
		onBar = false
