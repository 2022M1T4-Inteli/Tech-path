extends Node2D

const graphWidth = 200
const graphSpace = 10
const spaceText = 20
const gridHeight = 80
var font1
var winSize
var lineEdit_text
var maxValue
var countVal
var btnHit = 0
var graphData = [Globals.pointsSistInf, Globals.pointsCompSci, Globals.pointsSoftEng, Globals.pointsCompEng]
var txtGraphPos = {'Left': 0, 'Center': (graphWidth/2) - (18/2), 'Right': graphWidth - 18}

# Ao iniciar, pega o tamanho da tela e cria um fonte de texto
func _ready():
	winSize = get_viewport_rect().size
	
	var textGraph = Label.new()
	font1 = textGraph.get_font('')
	

func drawGraph(nBar, _maxVal):
	draw_rect(Rect2(10, 130, 100 + (nBar * (graphWidth + graphSpace)), winSize.y), Color('a8a8a8'), true)
	
	# Criação dos números do eixo y
	for a in range(6):
		
		draw_string(font1, Vector2(400, (winSize.y - 170) - int(a * gridHeight)), String(int((a * 1000)/5)), Color('575757'))
		
		# Criação dos valores de cada barra
		for i in range(4):
			draw_string(font1, Vector2((450 + graphSpace) + (i * (graphWidth + graphSpace)) + txtGraphPos.Center, (winSize.y - 180) - int((graphData[i] * (gridHeight * 5)) / 1000) - spaceText), String(str(int(graphData[i]))), Color(0,0,0))
		
		# Desenho dos retângulos que representam as barras do gráfico
		draw_rect(Rect2(Vector2((450 + graphSpace) + (0 * (graphWidth + graphSpace)), winSize.y - 180), Vector2(graphWidth, - ((graphData[0] * (gridHeight * 5)) / 1000))), Color('f51818'), true)
		draw_rect(Rect2(Vector2((450 + graphSpace) + (1 * (graphWidth + graphSpace)), winSize.y - 180), Vector2(graphWidth, - ((graphData[1] * (gridHeight * 5)) / 1000))), Color('f5df18'), true)
		draw_rect(Rect2(Vector2((450 + graphSpace) + (2 * (graphWidth + graphSpace)), winSize.y - 180), Vector2(graphWidth, - ((graphData[2] * (gridHeight * 5)) / 1000))), Color('1c18f5'), true)
		draw_rect(Rect2(Vector2((450 + graphSpace) + (3 * (graphWidth + graphSpace)), winSize.y - 180), Vector2(graphWidth, - ((graphData[3] * (gridHeight * 5)) / 1000))), Color('1da82a'), true)
		
		# Escrita do nome de identificação de cada barra
		draw_string(font1, Vector2(400 + txtGraphPos.Center, (winSize.y + 10) + spaceText), String("Sistema de informação"), Color('f51818'))
		draw_string(font1, Vector2(605 + txtGraphPos.Center, (winSize.y + 10) + spaceText), String("Ciência da Computação"), Color('f5df18'))
		draw_string(font1, Vector2(815 + txtGraphPos.Center, (winSize.y + 10) + spaceText), String("Engenharia de Software"), Color('1c18f5'))
		draw_string(font1, Vector2(1015 + txtGraphPos.Center, (winSize.y + 10) + spaceText), String("Engenharia da Computação"), Color('1da82a'))
		
# Função responsável por criar o gráfico na tela
func _draw():
		
	draw_rect(Rect2(0, 0, 180 + winSize.x * 3, winSize.y * 2), Color('a8a8a8'), true)

	drawGraph(18,230)

# Volta para o menu
func _on_Button_pressed():
	var _changeScene = get_tree().change_scene("res://scenes/mainMenu.tscn")

# Habilita a url para direcionar ao navegador
func _on_Link_meta_clicked(meta):
	OS.shell_open(str(meta))

# Aparece o popup
func _on_Surprise_pressed():
	$Inteli.popup()

# Habilita a url para direcionar ao navegador
func _on_InteliLink_meta_clicked(meta):
	OS.shell_open(str(meta))

# Aparece o popup
func _on_SI_button_pressed():
	$SI.popup()

# Aparece o popup
func _on_CC_button_pressed():
	$CC.popup()

# Aparece o popup
func _on_ES_button_pressed():
	$ES.popup()
	
# Aparece o popup
func _on_EC_button_pressed():
	$EC.popup()
