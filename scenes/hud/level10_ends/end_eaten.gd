extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	Global.level10.stop()
	Global.metior.stop()
	Global.menu.play()
	get_tree().change_scene_to_file("res://scenes/levels/main_menu/menu.tscn")
	pass # Replace with function body.
