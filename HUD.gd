extends CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready():
	$LevelCompleteLabel.set("visible_characters", 0)
	$Button.visible = false
	pass # Replace with function body.

func show_hud():
	$LevelCompleteLabel.set("visible_characters", -1)
	$Button.visible = true

func _on_button_pressed():
	$button.play()
	await $button.finished
	$LevelCompleteLabel.set("visible_characters", 0)
	$Button.visible = false
	pass # Replace with function body.
