extends Node2D

var food_scene: PackedScene = preload("res://scenes/levels/level1/food.tscn")
var rng = RandomNumberGenerator.new()

func rock_entered():
	$HUD/HideButton.visible = true
func rock_exited():
	$HUD/HideButton.visible = false
func hide_food():
	$Dickinsonia.food_count = 0
	$HUD.update_hud($Dickinsonia.food_count)

func update_food(food_count):
	$HUD.update_hud(food_count)
	if food_count == 3:
		$HUD.show_level_complete_hud()
		$Rock.rock_player_entered.connect(rock_entered)
		$Rock.rock_player_exited.connect(rock_exited)
		$HUD.button_pressed.connect(hide_food)
		

func delete_food(food):
	food.queue_free()
	$Dickinsonia.food_count += 1
	update_food($Dickinsonia.food_count)

func spawn_food():
	for i in 3:
		var food = food_scene.instantiate()
		var min_x_min_y = $TileMap/MaxFoodSpawnPos.position 
		var max_x_max_y = $TileMap/MinFoodSpawnPos.position 
		food.position.x = rng.randf_range(min_x_min_y.x, max_x_max_y.x)
		food.position.y = rng.randf_range(min_x_min_y.y, max_x_max_y.y)
		$Items.add_child(food)
		food.player_ate.connect(delete_food.bind(food))
	
func _ready():
	spawn_food()

