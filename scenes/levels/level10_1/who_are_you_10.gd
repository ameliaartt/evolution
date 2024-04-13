extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	$LevelCompleteLabel.set("visible_characters", -1)
	$HideButton.visible = true
	pass # Replace with function body.

func _on_hide_button_pressed():
	$button.play()
	await $button.finished
	$LevelCompleteLabel.set("visible_characters", 0)
	$HideButton.visible = false
