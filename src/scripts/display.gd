extends Node2D

var selected = false
var restPoint
var restNodes = []

func _ready():
		restNodes = get_tree().get_nodes_in_group("zone")
		restPoint = global_position
		restNodes[0].select()

func _on_Area2D_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_just_pressed("click"):
		selected = true
		
func _physics_process(delta):
	if selected:
		global_position = lerp(global_position,get_global_mouse_position(), 25 * delta)
	else:
		global_position = lerp(global_position, restPoint, 10 * delta)
		
func _input(event):
	if  event is InputEventMouseButton:
		if  event.button_index == BUTTON_LEFT and not event.pressed:
			selected = false
			var shortestDist = 75
			for child in restNodes:
				var distance = global_position.distance_to(child.global_position)
				if distance < shortestDist:
					child.select()
					restPoint = child.global_position
					shortestDist = distance



