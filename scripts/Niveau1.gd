extends Node2D

var temps = Timer.new()

func _ready():
	temps.connect("timeout",self,"prochain_niveau")
	temps.wait_time = 60
	temps.one_shot = true
	add_child(temps)
	temps.start()

func prochain_niveau():
	globals.niveau1 == true
	get_tree().change_scene("res://scenes/Competence.tscn")
