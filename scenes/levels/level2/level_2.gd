extends Node2D

func update_food(food_count):
	$HUD.update_hud(food_count)

func delete_food(food):
	food.queue_free()
	$Pikaia.food_count += 1
	Tasks.food_2 += 1
	update_food($Pikaia.food_count)

# Called when the node enters the scene tree for the first time.
func _ready():
	for food in $Foods.get_children(false):
		food.get_node("CollisionShape2D").scale = Vector2(3.0, 3.0)
		food.get_node("Sprite2D").texture = load("res://assets/food/food2.png")
		food.player_ate.connect(delete_food.bind(food))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func show_completion_hud():
	$HUD.show_level_complete_hud($Pikaia.food_count)
	$HUD/FoodLabel.visible = false
	
func _process(delta):
	pass


func _on_exit_area_body_entered(body):
	show_completion_hud()
