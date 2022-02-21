extends KinematicBody2D

# variável que armazena o nó de animação, tornado possível sua execução posteriormente
onready var animation = get_node("AnimationPlayer")

func _physics_process(_delta):
	# quando pressionada a seta direita
	if Input.is_action_pressed("ui_right"):
		# o personagem anda para a direita 1 posição
		position.x += 1
		# o personagem se mantém virado/vira para a direita 
		$Sprite.flip_h = false
		# roda a animação de correr
		animation.play("run")
	# quando pressionada a seta esquerda
	elif Input.is_action_pressed("ui_left"):
		# o personagem anda para a esquerda 1 posição
		position.x -= 1
		# o personagem vira para a esquerda 
		$Sprite.flip_h = true
		animation.play("run")
	else:
		#roda a animação do personagem parado quando nenhuma seta é pressionada
		animation.play("idle")
