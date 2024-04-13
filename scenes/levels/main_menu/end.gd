extends Control


func _on_button_pressed():
	$button.play()
	await $button.finished
	Global.levels.stop()
	Global.menu.play()
	get_tree().change_scene_to_file("res://scenes/levels/main_menu/menu.tscn")
	pass # Replace with function body.
