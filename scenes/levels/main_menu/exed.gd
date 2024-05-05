extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_hide_button_pressed():
	$button.play()
	await $button.finished
	Global.levels.stop()
	Global.menu.play()
	get_tree().change_scene_to_file("res://scenes/levels/main_menu/menu.tscn")
	pass # Replace with function body.