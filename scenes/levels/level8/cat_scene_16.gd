extends Control


func _on_button_pressed():
	$button.play()
	await $button.finished
	if Tasks.food_7 >= 10:
		get_tree().change_scene_to_file("res://scenes/levels/level8/cat_scene_17_1.tscn")
	if Tasks.food_7 < 10:
		get_tree().change_scene_to_file("res://scenes/levels/level8/cat_scene_17_2.tscn")
	pass # Replace with function body.
