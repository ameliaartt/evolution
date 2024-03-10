extends Node2D

var count: int = 0
var count2: int = 0
var count3: int = 0
var count4: int = 0
func update_food(food_count):
	$HUD.update_hud(food_count)

func delete_food(food):
	food.queue_free()
	$Pikaia.food_count += 1
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
	
func show_task():
	$Task1.show_task()
	
func show_task2():
	$Task1.show_task2()
	
func show_task3():
	$Task1.show_task3()
	
func show_task4():
	$Task1.show_task4()

func _process(delta):
	pass


func _on_exit_area_body_entered(body):
	show_completion_hud()


func _on_test_area_body_entered(body):
	if count == 0:
		show_task()
	count += 1
	pass # Replace with function body.


func _on_test_area_2_body_entered(body):
	if count2 == 0:
		show_task2()
	count2 += 1
	pass # Replace with function body.



func _on_test_area_3_body_entered(body):
	if count3 == 0:
		show_task3()
	count3 += 1
	pass # Replace with function body.


func _on_test_area_4_body_entered(body):
	if count4 == 0:
		show_task4()
	count4 += 1
	pass # Replace with function body.
