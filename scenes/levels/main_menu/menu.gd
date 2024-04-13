extends Control


func _ready():
	if Tasks.music == 0:
		Global.menu.play()
		Tasks.music == 1

	if Tasks.music == 2:
		Global.levels.stop()
		Global.menu.play()
		Tasks.music == 1
		
	if Tasks.level9 == 0:
		$Label.text = str("???")
	if Tasks.level9 != 0:
		$Label.text = str("10 уровень")


func _on_button_pressed():
	$button.play()
	await $button.finished
	Global.menu.stop()
	Global.levels.play()
	get_tree().change_scene_to_file("res://scenes/levels/level1/cat_scene_1.tscn")




func _on_exit_game_button_pressed():
	$button.play()
	await $button.finished
	Tasks.save_game()
	get_tree().quit()


func _on_reiting_button_pressed():
	$button.play()
	await $button.finished
	get_tree().change_scene_to_file("res://scenes/levels/main_menu/laod.tscn")
	pass # Replace with function body.


func _on_progress_pressed():
	$button.play()
	await $button.finished
	get_tree().change_scene_to_file("res://scenes/levels/main_menu/progress.tscn")
	pass # Replace with function body.


func _on_secret_button_pressed():
	$button.play()
	await $button.finished
	if Tasks.level9 != 0:
		Tasks.music == 2
		if Tasks.all_food >= 200:
			get_tree().change_scene_to_file("res://scenes/levels/level10_2/level_10_2.tscn")
		else:
			get_tree().change_scene_to_file("res://scenes/levels/level10_1/level_10.tscn")
		Global.menu.stop()
		Global.level10.play()
	pass # Replace with function body.
