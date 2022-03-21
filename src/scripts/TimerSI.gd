extends Label

# definição de variáveis
var timer_on = false


onready var timer = get_node("Timer")

# Aciona o timer
func _ready():
	timer.start()
	timer_on = true
	
func _process(_delta):
	if(timer_on):
		
		# segundos igual ao resto de time/60
		var secs = fmod(Globals.time,60)
		# minutos igual ao (resto de time/60*60)/60
		var mins = fmod(Globals.time, 60*60) / 60
		
		# Define a forma de representação do timer na tela e o mostra
		var time_passed = "%02d : %02d" % [mins,secs]
		text = time_passed


func _on_Timer_timeout():
	# O tempo diminui um segundo a cada vez que o timer chega a zero
	Globals.time -= 1
	# Quando o tempo for zero muda para a tela do bunker
	if Globals.time == 0:
		Globals.pointsSistInf = 5
		var _change_scene = get_tree().change_scene("res://scenes/bunker.tscn")
