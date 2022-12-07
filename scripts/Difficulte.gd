extends Control

func _on_Facile_pressed():
	globals.vitesse_ennemie = 50
	get_tree().change_scene("res://scenes/Niveau1.tscn")
	
func _on_Normal_pressed():
	globals.vitesse_ennemie = 75
	get_tree().change_scene("res://scenes/Niveau1.tscn")


func _on_Difficile_pressed():
	globals.vitesse_ennemie = 125
	get_tree().change_scene("res://scenes/Niveau1.tscn")
