extends Control


func _on_button_pressed():
	if Tasks.food_2 >= 10:
		get_tree().change_scene_to_file("res://scenes/levels/level3/cat_scene_5.tscn")
	if Tasks.food_2 < 10:
		get_tree().change_scene_to_file("res://scenes/levels/level3/cat_scene_7.tscn")
	pass # Replace with function body.
