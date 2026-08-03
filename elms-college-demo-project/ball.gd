extends Area2D

@export var speed:float = 100.0
var direction:Vector2 = Vector2(0,0)
var available_directions = [-1, 1]
var screen_size
signal goal_player
signal goal_cpu

func _ready() -> void:
	direction = Vector2(available_directions.pick_random(), available_directions.pick_random())
	screen_size = get_window().size

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += direction * (speed * delta)

	#if position.x >= screen_size.x: 
		#direction.x *= -1
	#elif position.x <=0:
		#direction *= -1
		
	if position.x >= screen_size.x or position.x <= 0:
		direction.x *= -1
	elif position.y >= screen_size.y or position.y <= 0:
		direction.y *=-1
	else: direction = direction


func _on_area_entered(area: Area2D) -> void:
	if area.name == "Player":
		direction.x *= -1
		speed += 50
	if area.name == "cpu":
		direction.x *= -1
		speed += 50
	if area.name == "Goal Player":
		goal_player.emit()
		position.x = screen_size.x /2
		position.y = screen_size.y /2
	if area.name == "Goal CPU":
		goal_cpu.emit()
		position.x = screen_size.x /2
		position.y = screen_size.y /2
