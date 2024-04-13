extends Node


func _on_button_pressed():
	$button.play()
	await $button.finished
	get_tree().change_scene_to_file("res://scenes/levels/level4/level_4_1.tscn")
	pass # Replace with function body.
