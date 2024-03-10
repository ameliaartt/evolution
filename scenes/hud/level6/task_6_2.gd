extends Node

signal button_pressed

func _ready():
	$Label.set("visible_characters", 0)
	$Label2.set("visible_characters", 0)
	$ColorRect.visible = false
	$Button3.visible = false

func show_task():
	$Label.set("visible_characters", -1)
	$Label2.set("visible_characters", -1)
	$ColorRect.visible = true
	$Button3.visible = true
	$Label.text = "Это важная подсказка. Если разгадаете этот шифр то сможете выжить
(попробуй использовать очень известный шифр, начинается на ц)
зуонщ чскзё монув, чхцёзё чткцшв"
	$Label2.text = ""
		

func _on_button_3_pressed():
	$Label.set("visible_characters", 0)
	$Label2.set("visible_characters", 0)
	$ColorRect.visible = false
	$Button3.visible = false
	pass # Replace with function body.

