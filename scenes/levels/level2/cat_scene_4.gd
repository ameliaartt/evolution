extends Control


func _on_button_pressed():
	$button.play()
	await $button.finished
	get_tree().change_scene_to_file("res://scenes/levels/level2/level_2.tscn")
	pass # Replace with function body.
