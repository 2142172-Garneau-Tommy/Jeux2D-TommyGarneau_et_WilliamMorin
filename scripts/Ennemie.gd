extends PathFollow2D

var vie = 5

var Dart = preload("res://scenes/Dart.tscn")
var dart = Dart.instance()

func _process(delta):
	set_offset(get_offset()+ globals.vitesse_ennemie * delta)
	if (loop == false and get_unit_offset() == 1):
		queue_free()


func _on_Ennemie_area_entered(area):
	if(area.is_in_group("dart")):
		vie -= 1
		if vie == 5:
			$Ennemie/Balon.play("rose")
			globals.point = globals.point + 1
		elif vie == 4:
			$Ennemie/Balon.play("jaune")
			globals.point = globals.point + 1
		elif vie == 3:
			$Ennemie/Balon.play("vert")
			globals.point = globals.point + 1
		elif vie == 2:
			$Ennemie/Balon.play("bleu")
			globals.point = globals.point + 1
		elif vie == 1:
			$Ennemie/Balon.play("rouge")
			globals.point = globals.point + 1
		elif vie == 0:
			globals.point = globals.point + 1
			area.queue_free()
			queue_free()
			globals.piece = globals.piece + 1
