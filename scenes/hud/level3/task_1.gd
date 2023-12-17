extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.visible = false
	$Label2.visible = false
	$Button.visible = false
	$Button2.visible = false
	$Button3.visible = false
	
func show_task():
	$Label.visible = true
	$Label2.visible = true
	$Button.visible = true
	$Button2.visible = true
	$Button3.visible = true


func _on_button_pressed():
	get_tree().change_scene_to_file("res://scenes/levels/main_menu/end.tscn")
	pass # Replace with function body.



func _on_button_2_pressed():
	
	pass # Replace with function body.


func _on_button_3_pressed():
	get_tree().change_scene_to_file("res://scenes/levels/main_menu/end.tscn")
	pass # Replace with function body.
