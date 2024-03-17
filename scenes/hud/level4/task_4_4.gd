extends Node

signal button_pressed
var random = RandomNumberGenerator.new()
var num_num = 0

func _ready():
	$Label.set("visible_characters", 0)
	$Label2.set("visible_characters", 0)
	$ColorRect.visible = false
	$Button.visible = false
	$Button2.visible = false
	$Button3.visible = false
	random.randomize()
	num_num += random.randi_range(1, 3)


func show_task4():
	$Label.set("visible_characters", -1)
	$Label2.set("visible_characters", -1)
	$ColorRect.visible = true
	$Button.visible = true
	$Button2.visible = true
	$Button3.visible = true
	$Label.text = "Чтобы пройти дальше ответьте на вопрос"
	if num_num == 1:
		$Label2.text = Tasks.task2_3_lvl4
	if num_num == 2:
		$Label2.text = Tasks.task2_1_lvl4
	if num_num == 3:
		$Label2.text = Tasks.task2_2_lvl4
	

func _on_button_pressed():
	if num_num == 1:
		$Label.set("visible_characters", 0)
		$Label2.set("visible_characters", 0)
		$ColorRect.visible = false
		$Button.visible = false
		$Button2.visible = false
		$Button3.visible = false
	else:
		get_tree().change_scene_to_file("res://scenes/levels/main_menu/end.tscn")
	pass # Replace with function body.

func _on_button_2_pressed():
	if num_num == 3:
		$Label.set("visible_characters", 0)
		$Label2.set("visible_characters", 0)
		$ColorRect.visible = false
		$Button.visible = false
		$Button2.visible = false
		$Button3.visible = false
	else:
		get_tree().change_scene_to_file("res://scenes/levels/main_menu/end.tscn")
	pass # Replace with function body.


func _on_button_3_pressed():
	if num_num == 2:
		$Label.set("visible_characters", 0)
		$Label2.set("visible_characters", 0)
		$ColorRect.visible = false
		$Button.visible = false
		$Button2.visible = false
		$Button3.visible = false
	else:
		get_tree().change_scene_to_file("res://scenes/levels/main_menu/end.tscn")
	pass # Replace with function body.

