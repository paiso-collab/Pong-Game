extends Node2D

var score_player:int = 0
var score_cpu:int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_ball_goal_player() -> void:
	score_player += 1
	$"Player Score".text = "Player Score: " + str(score_player)


func _on_ball_goal_cpu() -> void:
	score_cpu += 1
	$"CPU Score".text = "CPU Score: " + str(score_cpu)
