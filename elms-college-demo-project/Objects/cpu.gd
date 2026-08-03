extends Area2D
@export var ball:Area2D 
@export var speed:float = 50.0
var direction:int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y += direction * (speed * delta)

	if position.y > ball.position.y:
		direction = -1
	elif position.y < ball.position.y:
		direction = 1
	else: direction = 0
		
