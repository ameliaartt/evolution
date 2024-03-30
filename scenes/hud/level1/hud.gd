extends CanvasLayer

signal button_pressed

@export var font_update_color = Color.html("ffef00")
@export var font_normal_color = Color.html("ffffff")
@export var food_hud_name = "Еда: "

func update_hud(food_count):
	$FoodLabel.text = ("Еда: " + str(food_count))
	$FoodLabel.set("theme_override_colors/font_color", font_update_color)
	$FoodLabel/FoodLabelUpdateTimer.start()
	
func _on_food_label_update_timer_timeout():
	$FoodLabel.set("theme_override_colors/font_color", font_normal_color)

func _ready():
	$LevelCompleteLabel.set("visible_characters", 0)
	$HideButton.visible = false
	
func show_level_complete_hud():
	$LevelCompleteLabel.set("visible_characters", -1)

func _on_hide_button_pressed():
	if Tasks.level < 2:
		Tasks.level = 2
	Tasks.level1 = 1
	get_tree().change_scene_to_file("res://scenes/levels/level2/cat_scene_3.tscn")
	pass
