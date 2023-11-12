extends Area2D

signal player_ate

	
func _on_body_entered(_body):
	player_ate.emit()
