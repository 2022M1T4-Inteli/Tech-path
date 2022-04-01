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
		
		draw_string(font1, Vector2(20, (winSize.y - 100) - int(a * gridHeight)), String(int((a * 1000)/5)), Color('575757'))
		
		# Criação dos valores de cada barra
		for i in range(4):
			draw_string(font1, Vector2((50 + graphSpace) + (i * (graphWidth + graphSpace)) + txtGraphPos.Center, (winSize.y - 100) - int((graphData[i] * (gridHeight * 5)) / 1000) - spaceText), String(str(int(graphData[i]))), Color(0,0,0))
		
		# Desenho dos retângulos que representam as barras do gráfico
		draw_rect(Rect2(Vector2((50 + graphSpace) + (0 * (graphWidth + graphSpace)), winSize.y - 100), Vector2(graphWidth, - ((graphData[0] * (gridHeight * 5)) / 1000))), Color('f51818'), true)
		draw_rect(Rect2(Vector2((50 + graphSpace) + (1 * (graphWidth + graphSpace)), winSize.y - 100), Vector2(graphWidth, - ((graphData[1] * (gridHeight * 5)) / 1000))), Color('1c18f5'), true)
		draw_rect(Rect2(Vector2((50 + graphSpace) + (2 * (graphWidth + graphSpace)), winSize.y - 100), Vector2(graphWidth, - ((graphData[2] * (gridHeight * 5)) / 1000))), Color('1da82a'), true)
		draw_rect(Rect2(Vector2((50 + graphSpace) + (3 * (graphWidth + graphSpace)), winSize.y - 100), Vector2(graphWidth, - ((graphData[3] * (gridHeight * 5)) / 1000))), Color('f5df18'), true)
		
		# Escrita do nome de identificação de cada barra
		draw_string(font1, Vector2(txtGraphPos.Center, (winSize.y - 100) + spaceText), String("Sistema de informação"), Color('f51818'))
		draw_string(font1, Vector2(210 + txtGraphPos.Center, (winSize.y - 100) + spaceText), String("Ciência da Computação"), Color('1c18f5'))
		draw_string(font1, Vector2(420 + txtGraphPos.Center, (winSize.y - 100) + spaceText), String("Engenharia de Software"), Color('1da82a'))
		draw_string(font1, Vector2(620 + txtGraphPos.Center, (winSize.y - 100) + spaceText), String("Engenharia da Computação"), Color('f5df18'))
		
# Função responsável por criar o gráfico na tela
func _draw():
		
	draw_rect(Rect2(0, 0, 180 + winSize.x * 3, winSize.y * 2), Color('a8a8a8'), true)

	drawGraph(18,230)


func _on_Button_pressed():
	get_tree().change_scene("res://scenes/Menu_principal.tscn")
