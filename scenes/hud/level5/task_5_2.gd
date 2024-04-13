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
	$Label.text = "Устали от биологии? Самое время сделать перерыв
и порешать головоломки на логику 
Попоробуйте разгадать эту загадку:
ААААААААААААААААА_АААААААААА_АААААААААААА_А_ААААААААААА_А"
	$Label2.text = "Подсказка: попробуйте посчитать количество А"
		

func _on_button_pressed():
	$button.play()
	await $button.finished
	get_tree().change_scene_to_file("res://scenes/levels/main_menu/end.tscn")
	pass # Replace with function body.

func _on_button_2_pressed():
	$button.play()
	await $button.finished
	get_tree().change_scene_to_file("res://scenes/levels/main_menu/end.tscn")
	pass # Replace with function body.


func _on_button_3_pressed():
	$button.play()
	await $button.finished
	$Label.set("visible_characters", 0)
	$Label2.set("visible_characters", 0)
	$ColorRect.visible = false
	$Button.visible = false
	$Button2.visible = false
	$Button3.visible = false
	pass # Replace with function body.

