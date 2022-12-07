extends Area2D

var piece = 0

func _on_Piece_body_entered(body):
	piece += 1
	queue_free()
	
