extends KinematicBody2D

# variável que armazena o nó de animação, tornado possível sua execução posteriormente
onready var animation = get_node("AnimationPlayer")

var use_slide = true
var velocity = Vector2()
var speed = 250

func _physics_process(delta):
	velocity = Vector2()
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
		
	velocity = velocity.normalized() * speed
	# possibilita a colisão com objetos
	velocity = move_and_collide(velocity * delta)
	pass
	
func _input(_ev):
	if Input.is_key_pressed(KEY_E):
		var _change_scene = get_tree().change_scene("res://scenes/menu.tscn")
		#code
	
