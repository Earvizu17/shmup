extends Node2D

@export var txtScore: Label
var score = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if txtScore == null:
		txtScore = get_node("Label")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func increment_score():
	score += 1
	txtScore.text = str(score)
