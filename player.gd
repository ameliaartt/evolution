extends CharacterBody2D

@export var speed = 400

var food = 0

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed
	
func pick(food):
	food += 1

func _physics_process(delta):
	get_input()
	move_and_slide()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass