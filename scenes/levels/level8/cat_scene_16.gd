extends Control


func _on_button_pressed():
	if Tasks.food_5 >= 10:
		get_tree().change_scene_to_file("res://scenes/levels/level8/cat_scene_17_1.tscn")
	if Tasks.food_5 < 10:
		get_tree().change_scene_to_file("res://scenes/levels/level6/cat_scene_13_2.tscn")
	pass # Replace with function body.
