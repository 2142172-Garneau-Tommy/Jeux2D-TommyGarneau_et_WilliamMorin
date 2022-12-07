extends Area2D

var direction = Vector2()

func _physics_process(delta):
	position.y -= globals.vitesse_dart
	
func _on_Timer_timeout():
	queue_free()

func _on_Dart_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
		queue_free()
	
