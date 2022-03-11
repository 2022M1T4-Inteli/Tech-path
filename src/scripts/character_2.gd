extends KinematicBody2D

# definição de variáveis
var use_slide = true
var velocityPlayer = Vector2()
var speedPlayer = 250

# variável que armazena o nó de animação, tornado possível sua execução posteriormente
onready var animation = get_node("AnimationPlayer")

func _physics_process(delta):
	velocityPlayer = Vector2()
	# quando pressionada a seta direita
	if Input.is_action_pressed("ui_down"):
		# o personagem anda para baixo 2 posições
		position.y += 2
		animation.play("run_1")
	# quando pressionada a seta esquerda
	elif Input.is_action_pressed("ui_up"):
		# o personagem anda para cima 2 posições
		position.y -= 2
		animation.play("run_2")
	# quando pressionada a seta direita
	elif Input.is_action_pressed("ui_right"):
		# o personagem anda para a direita 2 posições
		position.x += 2
		# o personagem se mantém virado/vira para a direita 
		$Sprite.flip_h = false
		animation.play("run_3")
	# quando pressionada a seta esquerda
	elif Input.is_action_pressed("ui_left"):
		# o personagem anda para a esquerda 2 posições
		position.x -= 2
		# o personagem vira para a esquerda 
		$Sprite.flip_h = true
		animation.play("run_3")
	else:
		#roda a animação do personagem parado quando nenhuma seta é pressionada
		animation.play("idle_1")
		
	if Input.is_action_pressed("ui_cancel"):
		get_tree().quit()
		
	velocityPlayer = velocityPlayer.normalized() * speedPlayer
	# possibilita a colisão com objetos
	velocityPlayer = move_and_collide(velocityPlayer * delta)
	pass
	

func _input(_ev):
	# Muda de cena quando pressionada a tecla "E"
	if Input.is_key_pressed(KEY_E):
		var _change_scene = get_tree().change_scene("res://scenes/minigame_1.tscn")
	if Input.is_key_pressed(KEY_X):
		pass
