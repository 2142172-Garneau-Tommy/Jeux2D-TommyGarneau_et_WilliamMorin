extends Control

func _on_Commencer_pressed():
	get_tree().change_scene("res://scenes/Difficulte.tscn")

func _on_Quitter_pressed():
	get_tree().quit()
