extends Area2D

@export var speed:float = 300.0
var direction:int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("move_down"):
		direction = 1
	elif Input.is_action_pressed("move_up"):
		direction = -1
	else:
		direction = 0
	
	position.y += direction * (speed * delta)
