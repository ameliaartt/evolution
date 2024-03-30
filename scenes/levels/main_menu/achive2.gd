extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	if Tasks.level6_2 == 1:
		$ColorRect16.visible = false
	else:
		$ColorRect16.visible = true

	if Tasks.level7 == 1:
		$ColorRect21.visible = false
	else:
		$ColorRect21.visible = true

	if Tasks.level8_1 == 1:
		$ColorRect18.visible = false
	else:
		$ColorRect18.visible = true

	if Tasks.level8_2 == 1:
		$ColorRect22.visible = false
	else:
		$ColorRect22.visible = true
	
	if Tasks.level9 == 1:
		$ColorRect19.visible = false
	else:
		$ColorRect19.visible = true	

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://scenes/levels/main_menu/achive.tscn")
	pass # Replace with function body.
