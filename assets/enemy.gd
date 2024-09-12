extends RigidBody2D

var speed = 200
signal enemy_died
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	linear_velocity = Vector2(0, speed)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_shape_entered(body_rid: RID, body: Node, body_shape_index: int, local_shape_index: int) -> void:
	var game_controller = get_tree().root.get_node("/root/Node2D")
	if game_controller:
		game_controller.increment_score()
	queue_free()
	body.queue_free()
	pass # Replace with function body.
