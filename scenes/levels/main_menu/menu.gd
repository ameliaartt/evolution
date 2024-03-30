extends Control

func _on_button_pressed():
	get_tree().change_scene_to_file("res://scenes/levels/level1/cat_scene_1.tscn")




func _on_exit_game_button_pressed():
	Tasks.save_game()
	get_tree().quit()


func _on_reiting_button_pressed():
	get_tree().change_scene_to_file("res://scenes/levels/main_menu/laod.tscn")
	pass # Replace with function body.


func _on_progress_pressed():
	get_tree().change_scene_to_file("res://scenes/levels/main_menu/progress.tscn")
	pass # Replace with function body.
