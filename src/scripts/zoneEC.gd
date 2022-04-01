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
		
		self.position = get_parent().get_node(Globals.nodesEC[Globals.nodeNumberEC]).position
		
		# Checar se a ordem está correta
		if Globals.nodeNumberEC != int(self.blockType):
			Globals.correctOrderEC = false
		
		Globals.nodeNumberEC += 1
		inFinalPos = true
		
	if !inFinalPos:
		# Posição é igual a posição do mouse
		if mouse && Input.is_mouse_button_pressed(1):
			self.position = mouse_pos
		# Posição é igual a posição padrão
		else:
			self.position = defaultPosition
			
	# Mostra o resultado se o número de nós é maior do que o valor máximo

func _on_Area2D_mouse_entered():
	if !Globals.objCatchedEC:
		mouse = true
		Globals.objCatchedEC = true


func _on_Area2D_mouse_exited():
	if !Input.is_mouse_button_pressed(1):
		mouse = false
		Globals.objCatchedEC = false


func _on_BlocoDeCodigo_body_entered(body):
	if body.is_in_group("Barra"):
		onBar = true


func _on_BlocoDeCodigo_body_exited(body):
	if body.is_in_group("Barra"):
		onBar = false


func _on_check_pressed():
	if Globals.nodeNumberEC > Globals.nodeNumberMaxEC:
		get_tree().get_root().get_node("Node2D").show_result()
