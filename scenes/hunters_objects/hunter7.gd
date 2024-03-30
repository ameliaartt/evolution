extends CharacterBody2D


const SPEED = 400.0
const JUMP_VELOCITY = -400.0
var direction := -1
var spaw_position : Vector2

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	velocity = Vector2.ZERO
	spaw_position = position

func _physics_process(delta):
	if is_on_wall():
		direction = -direction
		$anim.flip_h = velocity.x < 0
		
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	update_animation()

func update_animation():
	if velocity.x > 0:
		$anim.flip_h = true
	elif velocity.x > 0:
		$anim.flip_h = true
	$anim.play("run")


func _on_area_2d_body_entered(body):
	get_tree().change_scene_to_file("res://scenes/levels/main_menu/end.tscn")
	pass # Replace with function body.
