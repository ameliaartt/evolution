extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$Label2.text = ("Количество очков: " + str(Tasks.all_food))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_sbross_pressed():
	$button.play()
	await $button.finished
	$Control.show_hud()
	$Label2.text = ("Количество очков: " + str(Tasks.all_food))
	pass # Replace with function body.


func _on_achive_pressed():
	$button.play()
	await $button.finished
	get_tree().change_scene_to_file("res://scenes/levels/main_menu/achive.tscn")
	pass # Replace with function body.


func _on_back_to_menu_pressed():
	$button.play()
	await $button.finished
	get_tree().change_scene_to_file("res://scenes/levels/main_menu/menu.tscn")
	pass # Replace with function body.


func _on_sbross_2_pressed():
	Tasks.all_food = 0
	$Label2.text = ("Количество очков: " + str(Tasks.all_food))
	pass # Replace with function body.