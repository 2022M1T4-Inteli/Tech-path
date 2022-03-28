extends KinematicBody2D

# variável que armazena o nó de animação, tornando possível sua execução posteriormente
onready var animation = get_node("AnimationPlayer")

var velocityPlayer = Vector2()
var speedPlayer = 250

func _physics_process(delta):
	velocityPlayer = Vector2()
	# quando pressionada a seta direita
	if Input.is_action_pressed("ui_right"):
		# o personagem anda para a direita 3 posições
		position.x += 3
		# o personagem se mantém virado/vira para a direita 
		$Sprite.flip_h = false
		animation.play("run")
	elif Input.is_action_pressed("ui_left"):
		# o personagem anda para a esquerda 3 posições
		position.x -= 3
		# o personagem vira para a esquerda 
		$Sprite.flip_h = true
		animation.play("run")
	else:
		# roda a animação do personagem parado quando nenhuma seta é pressionada
		animation.play("idle")
	# O jogo fecha quando a tecla "esc" é pressionada
	if Input.is_action_pressed("ui_cancel"):
		get_tree().quit()
		
	velocityPlayer = velocityPlayer.normalized() * speedPlayer
	
	# possibilita a colisão com objetos
	velocityPlayer = move_and_collide(velocityPlayer * delta)

# Quando o personagem entra nessa área a cena muda.
func _on_Area2D_body_entered(_body):
	var _change_scene = get_tree().change_scene("res://scenes/bunker.tscn")
