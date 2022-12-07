extends Control

func _on_Tire_pressed():
	globals.piece = globals.piece - 45
	if globals.piece < 0 and globals.niveau1 == globals.niveau1 == true:
		print("Vous n'avez pas asser de pièce pour améliorer la vitesse de tire du vaisseau")
		globals.piece = 0
		get_tree().change_scene("res://scenes/Niveau2.tscn")
	elif globals.niveau1 == globals.niveau1 == true:
		globals.vitesse_joueur = globals.vitesse_dart + 1
		get_tree().change_scene("res://scenes/Niveau2.tscn")
	elif globals.piece < 0 and globals.niveau2 == globals.niveau2 == true:
		globals.piece = 0
		print("Vous n'avez pas asser de pièce pour améliorer la vitesse de tire du vaisseau")
		get_tree().change_scene("res://scenes/Recommencer.tscn")
	elif globals.niveau2 == globals.niveau2 == true:
		globals.vitesse_joueur = globals.vitesse_dart + 1
		get_tree().change_scene("res://scenes/Recommencer.tscn")

func _on_Deplacement_pressed():
	globals.piece = globals.piece - 45
	if globals.piece < 0 and globals.niveau1 == globals.niveau1 == true:
		print("Vous n'avez pas asser de pièce pour améliorer le déplacement du vaisseau")
		globals.piece = 0
		get_tree().change_scene("res://scenes/Niveau2.tscn")
	elif globals.niveau1 == globals.niveau1 == true:
		globals.vitesse_joueur = globals.vitesse_joueur + 1
		get_tree().change_scene("res://scenes/Niveau2.tscn")
	elif globals.piece < 0 and globals.niveau2 == globals.niveau2 == true:
		globals.piece = 0
		print("Vous n'avez pas asser de pièce pour améliorer le déplacement du vaisseau")
		get_tree().change_scene("res://scenes/Recommencer.tscn")
	elif globals.niveau2 == globals.niveau2 == true:
		globals.vitesse_joueur = globals.vitesse_joueur + 1
		get_tree().change_scene("res://scenes/Recommencer.tscn")
