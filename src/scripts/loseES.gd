extends Control

# Reseta todas as variáveis e volta para o minigame
func _on_reset_pressed():
	get_tree().change_scene("res://scenes/minigameSoftwareEngineering.tscn")
	Globals.objCatched = false
	Globals.nodes = ["Pos1",
	"Pos2",
	"Pos3",
	"Pos4",
	"Pos5"
]

	Globals.nodeNumber = 0
	Globals.nodeNumberMax = len(Globals.nodes) - 1
	Globals.correctOrder = true
	Globals.onBar = false
	Globals.inFinalPos = false
	Globals.inBar = false
