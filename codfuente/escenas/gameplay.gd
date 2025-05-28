class_name Gameplay extends Node2D

const gameover_scene:PackedScene = preload("res://menus/game_over.tscn")
var gameover_menu:GameOver

@onready var head: Head = %head as Head
@onready var bounds: Bounds = %Bounds as Bounds
@onready var spawner: Spawner = $Spawner as Spawner


var time_between_moves:float = 1000.0
var time_since_last_move:float = 0
var speed:float = 10000.0
var move_dir:Vector2 = Vector2.RIGHT #Vector2(1,0)
var snake_parts:Array[SnakePart] = []
var score:int = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$fondogameplay.stream.loop = true
	head.food_eaten.connect(_on_food_eaten)
	head.collided_with_tail.connect(_on_tail_collided)
	spawner.tail_added.connect(_on_tail_added)
	spawner.spawn_food()
	
	snake_parts.push_back(head)



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var new_dir:Vector2 = Vector2.ZERO
	
	if Input.is_action_pressed("ui_up"):
		move_dir = Vector2.UP 		# (0,-1)
	if Input.is_action_pressed("ui_right"):
		move_dir = Vector2.RIGHT	# (1,0)
	if Input.is_action_pressed("ui_down"):
		move_dir = Vector2.DOWN		# (0,1)
	if Input.is_action_pressed("ui_left"):
		move_dir = Vector2.LEFT		# (-1,0)
		
	# don't allow the player to reverse directions
	if new_dir + move_dir != Vector2.ZERO and new_dir != Vector2.ZERO:
		move_dir = new_dir
	


func _physics_process(delta: float) -> void:
	time_since_last_move += delta * speed
	if time_since_last_move >= time_between_moves:
		update_snake()
		time_since_last_move = 0
	pass

func update_snake():
	# move_dir by how much
	var new_pos:Vector2 = head.position + move_dir * Global.GRID_SIZE
	new_pos = bounds.wrap_vector(new_pos)
	head.move_to(new_pos)
	
	
	for i in range(1,snake_parts.size(),1):
		snake_parts[i].move_to(snake_parts[i-1].last_position)


func _on_food_eaten():
	print("food eaten")
	# 1. spawn more food
	spawner.call_deferred("spawn_food")
	# 2. add tail
	spawner.call_deferred("spawn_tail",snake_parts[snake_parts.size()-1].last_position)
	# 3. increase speed
	speed += 500.0
	# 4. update score
	score += 1

func _on_tail_added(tail:Tail):
	pass

func _on_tail_collided():
	print("game over")
	if not gameover_menu:
		gameover_menu = gameover_scene.instantiate() as GameOver
		add_child(gameover_menu)
		gameover_menu.set_score(score)
