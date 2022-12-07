extends Button

func _on_Recommencer_avec_progression_pressed():
	get_tree().change_scene("res://scenes/Menu_principal.tscn")

func _on_Recommencer_sans_progression_pressed():
	globals.vitesse_dart = 5 
	globals.vitesse_joueur = 2
	globals.piece = 0
	globals.point = 0
	globals.niveau1 = false
	globals.niveau2 = false
	get_tree().change_scene("res://scenes/Menu_principal.tscn")
