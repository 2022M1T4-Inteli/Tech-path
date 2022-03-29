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
		
		# Segundos igual ao resto de time/60
		var secs = fmod(time,60)
		# Minutos igual ao (resto de time/60*60)/60
		var mins = fmod(time, 60*60) / 60
		
		# Define a forma de representação do timer na tela e o mostra
		var time_passed = "%02d : %02d" % [mins,secs]
		text = time_passed


func _on_Timer_timeout():
	# O tempo diminui um segundo a cada vez que o timer chega a zero
	time -= 1
	# Quando o tempo for zero muda para a tela do bunker
	if time == 0:
		Globals.pointsCompEng = 100
		var _change_scene = get_tree().change_scene("res://scenes/bunker.tscn")
		
# Quando na última área para o timer e calcula a pontuação 
func _on_softwareZone_softwareCorrect():
	timer_on = false
	timer.stop()
	Globals.pointsCompEng = time * 5
