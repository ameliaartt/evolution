extends Node2D


func _ready():
	pass 


func _process(delta):
	pass

func _input(event):
	if event.is_action_pressed("e_click"):
		var pl = get_parent().get_parent().get_player()
		if abs(pl.position.x - position.x) < 64 and abs(pl.position.y - position.y) < 64:
			get_parent().remove_child(self)
			pl.pick(self)
