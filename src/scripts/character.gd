extends KinematicBody2D

# variável que armazena o nó de animação, tornando possível sua execução posteriormente
onready var animation = get_node("AnimationPlayer")

func _physics_process(_delta):
	# quando pressionada a seta direita
	if Input.is_action_pressed("ui_right"):
		# o personagem anda para a direita 3 posições
		position.x += 3
		# o personagem se mantém virado/vira para a direita 
		$Sprite.flip_h = false
		animation.play("run")
		# Nesta posição ocorre a mudança de cena
		if position.x >= 1090:
			var _change_scene = get_tree().change_scene("res://scenes/bunker.tscn")
	# quando pressionada a seta esquerda
	elif Input.is_action_pressed("ui_left"):
		# o personagem anda para a esquerda 3 posições
		position.x -= 3
		# o personagem vira para a esquerda 
		$Sprite.flip_h = true
		animation.play("run")
	else:
		#roda a animação do personagem parado quando nenhuma seta é pressionada
		animation.play("idle")
	
	if Input.is_action_pressed("ui_cancel"):
		get_tree().quit()
