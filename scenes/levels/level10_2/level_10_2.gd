extends Node2D

func update_food(food_count):
	$HUD.update_hud(food_count)
	if $animal9.food_count == 3:
		$HUD.show_level_complete_hud()
		Global.level10.stop()
		Global.metior.play()
		$Timer.start()

func delete_food(food):
	food.queue_free()
	$animal9.food_count += 1
	Tasks.all_food += 1
	update_food($animal9.food_count)

func _process(delta):
	$HUD.update(roundf($Timer.time_left))
	pass
	
# Called when the node enters the scene tree for the first time.
func _ready():
	for food in $Foods.get_children(false):
		food.get_node("CollisionShape2D").scale = Vector2(3.0, 3.0)
		food.get_node("Sprite2D").texture = load("res://assets/food/food2.png")
		food.player_ate.connect(delete_food.bind(food))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func show_hud():
	$HUD3.show_hud()

func show_hud2():
	$HUD4.show_hud_cave()
	
func show_hud3():
	$HUD5.show_hud()
	
func show_hud4():
	$HUD6.show_hud()


func _on_test_area_body_entered(body):
	if $animal9.food_count == 3:
		show_hud()
	pass # Replace with function body.


func _on_test_area_2_body_entered(body):
	if $animal9.food_count == 3:
		show_hud2()
	pass # Replace with function body.


func _on_test_area_3_body_entered(body):
	if $animal9.food_count == 3:
		show_hud3()
	pass # Replace with function body.


func _on_test_area_4_body_entered(body):
	if $animal9.food_count == 3:
		show_hud4()
	pass # Replace with function body.


func _on_timer_timeout():
	get_tree().change_scene_to_file("res://scenes/hud/level10_ends/end_in_cust_mlec.tscn")
	pass # Replace with function body.
