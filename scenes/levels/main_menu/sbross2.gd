extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.set("visible_characters", 0)
	$ColorRect.visible = false
	$Button.visible = false
	$Button2.visible = false
	pass # Replace with function body.


func show_hud():
	$Label.set("visible_characters", -1)
	$ColorRect.visible = true
	$Button.visible = true
	$Button2.visible = true
	$Label.text = "Внимание! 
Сброситься абсолютно всё.
Вы уверены?"



func _process(delta):
	pass


func _on_button_pressed():
	Tasks.all_food = 0
	Tasks.food_2 = 0
	Tasks.food_4 = 0
	Tasks.food_5 = 0
	Tasks.food_6 = 0
	Tasks.food_7 = 0
	Tasks.food_8 = 0
	Tasks.level = 1
	Tasks.level1 = 0
	Tasks.level2 = 0
	Tasks.level3_1 = 0
	Tasks.level3_2 = 0
	Tasks.level4 = 0
	Tasks.level5 = 0
	Tasks.level6_1 = 0
	Tasks.level6_2 = 0
	Tasks.level7 = 0
	Tasks.level8_1 = 0
	Tasks.level8_2 = 0
	Tasks.level9 = 0
	$Label.set("visible_characters", 0)
	$ColorRect.visible = false
	$Button.visible = false
	$Button2.visible = false
	pass


func _on_button_2_pressed():
	$Label.set("visible_characters", 0)
	$ColorRect.visible = false
	$Button.visible = false
	$Button2.visible = false
	pass
