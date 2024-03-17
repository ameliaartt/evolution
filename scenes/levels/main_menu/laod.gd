extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	if Tasks.level >= 2:
		$ColorRect2.visible = false
	else:
		$ColorRect2.visible = true	
	if Tasks.level >= 3:
		$ColorRect3.visible = false
	else:
		$ColorRect3.visible = true
	if Tasks.level >= 4:
		$ColorRect4.visible = false
	else:
		$ColorRect4.visible = true	
	if Tasks.level >= 5:
		$ColorRect5.visible = false
	else:
		$ColorRect5.visible = true
	if Tasks.level >= 6:
		$ColorRect6.visible = false
	else:
		$ColorRect6.visible = true
	if Tasks.level >= 7:
		$ColorRect7.visible = false
	else:
		$ColorRect7.visible = true
	if Tasks.level >= 8:
		$ColorRect8.visible = false
	else:
		$ColorRect8.visible = true
	if Tasks.level == 9:
		$ColorRect9.visible = false
	else:
		$ColorRect9.visible = true	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_2_pressed():
	if Tasks.level >= 2:
		get_tree().change_scene_to_file("res://scenes/levels/level2/cat_scene_3.tscn")
	pass # Replace with function body.


func _on_button_3_pressed():
	if Tasks.level >= 3:
		get_tree().change_scene_to_file("res://scenes/levels/level3/cat_scene_6.tscn")
	pass # Replace with function body.


func _on_button_4_pressed():
	if Tasks.level >= 4:
		get_tree().change_scene_to_file("res://scenes/levels/level4/cat_scene_8.tscn")
	pass # Replace with function body.


func _on_button_5_pressed():
	if Tasks.level >= 5:
		get_tree().change_scene_to_file("res://scenes/levels/level5/cat_scene_10.tscn")
	pass # Replace with function body.


func _on_button_6_pressed():
	if Tasks.level >= 6:
		get_tree().change_scene_to_file("res://scenes/levels/level6/cat_scene_12.tscn")
	pass # Replace with function body.


func _on_button_7_pressed():
	if Tasks.level >= 7:
		get_tree().change_scene_to_file("res://scenes/levels/level7/cat_scene_14.tscn")
	pass # Replace with function body.


func _on_button_8_pressed():
	if Tasks.level >= 8:
		get_tree().change_scene_to_file("res://scenes/levels/level8/cat_scene_16.tscn")
	pass # Replace with function body.


func _on_button_9_pressed():
	if Tasks.level == 9:
		get_tree().change_scene_to_file("res://scenes/levels/level9/cat_scene_18.tscn")
	pass # Replace with function body.


func _on_button_pressed():
	get_tree().change_scene_to_file("res://scenes/levels/main_menu/menu.tscn")
	pass # Replace with function body.
