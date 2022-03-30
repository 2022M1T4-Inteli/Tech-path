extends Area2D

var mouse = false
var onBar = false
var inFinalPos = false
var inBar = false
export var blockType = ""
onready var defaultPosition = self.position

func _physics_process(delta):
	var mouse_pos = get_viewport().get_mouse_position()
	
	if onBar && !Input.is_mouse_button_pressed(1) && !inFinalPos:
		
		self.position = get_parent().get_node(Global.nodes[Global.nodeNumber]).position
		
		if Global.nodeNumber != int(self.blockType):
			Global.correctOrder = false
		
		Global.nodeNumber += 1
		inFinalPos = true
		
	if !inFinalPos:
		if mouse && Input.is_mouse_button_pressed(1):
			self.position = mouse_pos
		else:
			self.position = defaultPosition
			
	if Global.nodeNumber > Global.nodeNumberMax:
		get_tree().get_root().get_node("Node2D").show_result()


func _on_Area2D_mouse_entered():
	if !Global.objCatched:
		mouse = true
		Global.objCatched = true


func _on_Area2D_mouse_exited():
	if !Input.is_mouse_button_pressed(1):
		mouse = false
		Global.objCatched = false


func _on_BlocoDeCodigo_body_entered(body):
	if body.is_in_group("Barra"):
		onBar = true


func _on_BlocoDeCodigo_body_exited(body):
	if body.is_in_group("Barra"):
		onBar = false
