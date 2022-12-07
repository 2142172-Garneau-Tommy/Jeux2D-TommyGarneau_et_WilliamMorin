extends KinematicBody2D

var vivant = true
var dart = preload("res://scenes/Dart.tscn")
var direction := Vector2.ZERO

func _physics_process(delta):
	var move = Vector2()
	
	if Input.get_action_raw_strength("ui_left"):
		move.x -= globals.vitesse_joueur
		$Joueur.play("gauche")
	elif Input.get_action_raw_strength("ui_right"):
		move.x += globals.vitesse_joueur
		$Joueur.play("droite")
	elif Input.get_action_raw_strength("ui_down"):
		move.y += globals.vitesse_joueur
		$Joueur.play("default")
	elif Input.get_action_raw_strength("ui_up"):
		move.y -= globals.vitesse_joueur
		$Joueur.play("default")
	else:
		$Joueur.play("default")
		
		
	if(Input.is_action_just_released("tirer")):
		var b = dart.instance()
		get_parent().add_child(b)
		direction = move_and_slide(direction, Vector2.UP)
		b.direction = move
		b.position = position
		
	move = move.normalized() * globals.vitesse_joueur
	
	move = move_and_collide(move)
