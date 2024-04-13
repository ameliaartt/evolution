extends Control


func _ready():
	if Tasks.level1 == 1:
		$ColorRect16.visible = false
	else:
		$ColorRect16.visible = true	

	if Tasks.level2 == 1:
		$ColorRect21.visible = false
	else:
		$ColorRect21.visible = true	

	if Tasks.level3_1 == 1:
		$ColorRect18.visible = false
	else:
		$ColorRect18.visible = true	

	if Tasks.level3_2 == 1:
		$ColorRect22.visible = false
	else:
		$ColorRect22.visible = true	

	if Tasks.level4 == 1:
		$ColorRect19.visible = false
	else:
		$ColorRect19.visible = true	
	
	if Tasks.level5 == 1:
		$ColorRect20.visible = false
	else:
		$ColorRect20.visible = true	
	
	if Tasks.level6_1 == 1:
		$ColorRect17.visible = false
	else:
		$ColorRect17.visible = true	




func _process(delta):
	pass


func _on_button_pressed():
	$button.play()
	await $button.finished
	get_tree().change_scene_to_file("res://scenes/levels/main_menu/achive2.tscn")
	pass


func _on_button_2_pressed():
	$button.play()
	await $button.finished
	get_tree().change_scene_to_file("res://scenes/levels/main_menu/menu.tscn")
	pass
