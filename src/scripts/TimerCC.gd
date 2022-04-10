extends Label

# definição de variáveis
var time = 180
var timer_on = false


onready var timer = get_node("Timer")

# Aciona o timer
func _ready():
	timer.start()
	timer_on = true
	
func _process(_delta):
	if(timer_on):
		
		Globals.button = Globals.cButton + Globals.iButton
		
		# segundos igual ao resto de time/60
		var secs = fmod(time,60)
		# minutos igual ao (resto de time/60*60)/60
		var mins = fmod(time, 60*60) / 60
		
		# Define a forma de representação do timer na tela e o mostra
		var time_passed = "%02d : %02d" % [mins,secs]
		text = time_passed
		
		# Calcula pontuação se forem selecionados 3 botões corretos
		if Globals.cButton == 3:
			Globals.pointsCompSci = time * 5
			var _changeScene = get_tree().change_scene("res://scenes/winCC.tscn")
		# Calcula pontuação se forem selecionados 3 botões incorretos
		elif Globals.iButton == 3 and Globals.cButton == 0:
			Globals.pointsCompSci = 500
			timer.stop()
			timer_on = false
			var _changeScene = get_tree().change_scene("res://scenes/loseCC.tscn")
		# Calcula pontuação se forem selecionados 2 botões incorretos e 1 correto
		elif Globals.button == 3 and Globals.cButton < Globals.iButton:
			Globals.pointsCompSci = (-1 * Globals.iButton) + (5 * Globals.cButton)
			Globals.pointsCompSci = time * Globals.pointsCompSci
			var _changeScene = get_tree().change_scene("res://scenes/halfwinCC.tscn")
		# Calcula pontuação se forem selecionados 1 botão incorreto e 2 corretos
		elif Globals.button == 3 and Globals.cButton > Globals.iButton:
			Globals.pointsCompSci = (-1 * Globals.iButton) + (2.5 * Globals.cButton)
			Globals.pointsCompSci = time * Globals.pointsCompSci
			var _changeScene = get_tree().change_scene("res://scenes/halfwinCC.tscn")
		
		# Para o timer quando o número de botões selecionados é 3
		if Globals.button == 3 or Globals.cButton == 3:
			timer.stop()
			timer_on = false





func _on_Timer_timeout():
	# O tempo diminui um segundo a cada vez que o timer chega a zero
	time -= 1
	# Quando o tempo for zero muda para a tela do bunker
	if time == 0:
		Globals.pointsCompSci = 100
		timer.stop()
		time = 180
		var _change_scene = get_tree().change_scene("res://scenes/bunker.tscn")
	
