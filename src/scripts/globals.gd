extends Node

# Essas variáveis são utilizadas em outros scripts e partes do jogo

var pointsCompEng: int = 5
var pointsCompSci: int = 5
var pointsSoftEng: int = 5
var pointsSistInf: int = 5

var cButton: int = 0
var iButton: int = 0
var button: int = 0

var time: int = 180

var objCatched = false
var nodes = ["Pos1",
	"Pos2",
	"Pos3",
	"Pos4",
	"Pos5"
]

var nodeNumber = 0
var nodeNumberMax = len(nodes) - 1
var correctOrder = true
var onBar = false
var inFinalPos = false
var inBar = false

var objCatchedEC = false
var nodesEC = ["/root/Node2D/Pos1",
	"/root/Node2D/Pos2",
	"/root/Node2D/Pos3",
	"/root/Node2D/Pos4",
]

var nodeNumberEC = 0
var nodeNumberMaxEC = len(nodesEC) - 1
var correctOrderEC = true


var npc1BarrierDisabled = false

var end = false


