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
	$Label.text = "Уровень 5"
	
func show_level_complete_hud(food_count):
	$LevelCompleteLabel.set("visible_characters", -1)
	$HideButton.visible = true
	$LevelCompleteLabel.text = "Вы выполнили задание.
Счёт: " + str(food_count)

func hide_level_complete_hud():
	$LevelCompleteLabel.set("visible_characters", 0)
	$HideButton.visible = false
	
func _on_hide_button_pressed():
	$button.play()
	await $button.finished
	if Tasks.level < 6:
		Tasks.level = 6
	Tasks.level5 = 1
	get_tree().change_scene_to_file("res://scenes/levels/level6/cat_scene_12.tscn")
