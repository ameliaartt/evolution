extends Button



func _ready():
	var button = Button.new()
	button.pressed.connect(self._button_pressed)
	add_child(button)
	pass



