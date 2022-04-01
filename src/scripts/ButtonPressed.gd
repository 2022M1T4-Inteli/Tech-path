extends Label

# Imprimir no Label o valor de botões corretos
func _physics_process(_delta):
	self.text = (str(Globals.cButton))
