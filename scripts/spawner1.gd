extends Path2D

var minuterie = 0
export var intervale = 0.5
var ennemie = preload("res://scenes/Ennemie.tscn")
export var nb_ennemie = 150
var ennemie_instancier = 0

func _process(delta):
	minuterie = minuterie + delta
	#if (nb_ennemie < ennemie_instancier):
	if (minuterie > intervale and nb_ennemie > ennemie_instancier):
		var instance_ennemie = ennemie.instance()
		add_child(instance_ennemie)
		minuterie = 0
		ennemie_instancier = ennemie_instancier + 1
