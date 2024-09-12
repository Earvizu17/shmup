extends Node2D

var spawn_positions = null
@export var enemy_resource : PackedScene = preload("res://assets/enemy.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	randomize()
	spawn_positions = $SpawnPositions.get_children()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_timer_timeout() -> void:
	spawn_enemy()
	pass # Replace with function body.
	
func spawn_enemy():
	var index = randi() % spawn_positions.size()
	var enemy = enemy_resource.instantiate()
	enemy.global_position = spawn_positions[index].global_position
	add_child(enemy)
	
