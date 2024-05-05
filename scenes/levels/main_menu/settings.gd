extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_h_scroll_bar_value_changed(value):
	Global.menu.set_volume_db(float(value))
	Global.levels.set_volume_db(float(value))
	Global.metior.set_volume_db(float(value))
	Global.level10.set_volume_db(float(value))
	pass # Replace with function body.



func _on_button_pressed():
	$button.play()
	await $button.finished
	get_tree().change_scene_to_file("res://scenes/levels/main_menu/menu.tscn")
	pass # Replace with function body.
