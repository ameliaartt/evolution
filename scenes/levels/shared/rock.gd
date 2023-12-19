extends StaticBody2D

signal rock_player_entered
signal rock_player_exited

func _on_body_entered(body):
	for group in body.get_groups():
		if group == "player":
			rock_player_entered.emit()

func _on_rock_area_body_exited(body):
	for group in body.get_groups():
		if group == "player":
			rock_player_exited.emit()
