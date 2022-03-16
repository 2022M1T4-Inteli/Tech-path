extends Label

func _on_displayZone_displayCorrect():
	set_align(Label.ALIGN_CENTER)
	set_text("Agora, vamos mover a memória.")


func _on_memoriaZone_memoriaCorrect():
	set_align(Label.ALIGN_CENTER)
	set_text("Precisamos do processador.")


func _on_processadorZone_processadorCorrect():
	set_align(Label.ALIGN_CENTER)
	set_text("Um robô sem software é inútil, não é mesmo?")


func _on_softawreZone_softwareCorrect():
	set_align(Label.ALIGN_CENTER)
	set_text(str(Globals.pointsCompEng))
