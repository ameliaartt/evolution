extends Control

func _on_button_pressed():
	get_tree().change_scene_to_file("res://scenes/levels/level1/cat_scene_1.tscn")
	pass # Replace with function body.


func _on_exit_game_button_pressed():
	get_tree().quit()
