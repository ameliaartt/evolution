extends StaticBody2D

signal rock_player_entered
signal rock_player_exited

func _on_body_entered(body):
	if body.name == "Dickinsonia":
		rock_player_entered.emit()

func _on_rock_area_body_exited(body):
	if body.name == "Dickinsonia":
		rock_player_exited.emit()
