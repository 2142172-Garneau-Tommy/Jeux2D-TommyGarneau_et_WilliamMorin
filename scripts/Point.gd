extends Control

func  _process(delta):
	$Points.text = str(globals.point)
	$Piece.text = str(globals.piece)
