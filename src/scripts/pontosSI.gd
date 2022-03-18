extends Label

func _physics_process(_delta):
	set_text("Pontos \nSistema da Informação: " + str(Globals.pointsSistInf) + "\n" + "Ciência da Computação: " + str(Globals.pointsCompSci) + "\n" + "Engenharia de Software: " + str(Globals.pointsSoftEng) + "\n" + "Engenharia de Computação: " + str(Globals.pointsCompEng))
