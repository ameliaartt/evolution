extends Node

signal button_pressed


func _ready():
	$Label.set("visible_characters", 0)
	$Label2.set("visible_characters", 0)
	$ColorRect.visible = false
	$Button.visible = false
	$Button2.visible = false
	$Button3.visible = false

func show_task():
	$Label.set("visible_characters", -1)
	$Label2.set("visible_characters", -1)
	$ColorRect.visible = true
	$Button.visible = true
	$Button2.visible = true
	$Button3.visible = true
	$Label.text = "Чтобы пройти дальше ответьте на вопрос"
	$Label2.text = "Когда появились первые членистоногие животные?: 
	1)Эдиакарская биота. 2)Кембрийский период. 3)Ордовикский период."

func _on_button_pressed():
	get_tree().change_scene_to_file("res://scenes/levels/main_menu/end.tscn")
	pass # Replace with function body.

func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://scenes/levels/main_menu/end.tscn")
	pass # Replace with function body.


func _on_button_3_pressed():
	$Label.set("visible_characters", 0)
	$Label2.set("visible_characters", 0)
	$ColorRect.visible = false
	$Button.visible = false
	$Button2.visible = false
	$Button3.visible = false
	
	pass # Replace with function body.


