extends CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready():
	$LevelCompleteLabel.set("visible_characters", 0)
	$HideButton.visible = false
	$Button.visible = false
	pass # Replace with function body.

func show_hud():
	$LevelCompleteLabel.set("visible_characters", -1)
	$HideButton.visible = true
	$Button.visible = true

func _on_hide_button_pressed():
	$button.play()
	await $button.finished
	get_tree().change_scene_to_file("res://scenes/hud/level10_ends/end_in_nora_dino.tscn")


func _on_button_pressed():
	$button.play()
	await $button.finished
	$LevelCompleteLabel.set("visible_characters", 0)
	$HideButton.visible = false
	$Button.visible = false
	pass # Replace with function body.
