extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	$Button/ColorPickerButton.visible = true
	print("OK")
	pass # Replace with function body.


func _on_Button8_pressed():
	$Button8/ColorPickerButton.visible = true
	print("NÃO")
	
	pass # Replace with function body.


func _on_Button3_pressed():
	$Button3/ColorPickerButton.visible = true
	print ("OK")

	pass # Replace with function body.
	
func _on_Button4_pressed():
	$Button4/ColorPickerButton.visible = true
	print ("NÃO")
	
	pass # Replace with function body.
	
func _on_Button5_pressed():
	$Button5/ColorPickerButton.visible = true
	print ("NÃO")
	
	pass # Replace with function body.



func _on_Button7_pressed():
	$Button7/ColorPickerButton.visible = true
	print ("OK")

	pass # Replace with function body.

func _on_Button2_pressed():
	$Button2/ColorPickerButton.visible = true
	print ("OK")
	pass # Replace with function body.


func _on_Button6_pressed():
	$Button6/ColorPickerButton.visible = true
	print ("OK")
	
	
	
	
	pass # Replace with function body.
