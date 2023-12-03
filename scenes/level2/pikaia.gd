extends CharacterBody2D


@export var speed = 12000.0
@export var accel = 200
@export var friction = 600

var food_count: int = 0
	
func _ready():
	pass
	
func _physics_process(delta):
	var input = Input.get_vector("left", "right", "up", "down")
	position += accel*input*delta
	move_and_slide()
	

