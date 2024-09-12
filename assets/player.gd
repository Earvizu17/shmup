extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
@export var bullet_resource: PackedScene = preload("res://assets/bullet.tscn")


func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("ui_left"):
		position.x -= 5
	if Input.is_action_pressed("ui_right"):
		position.x += 5
	if Input.is_action_pressed("ui_up"):
		position.y -= 5	
	if Input.is_action_pressed("ui_down"):
		position.y += 5
	if Input.is_action_just_pressed("ui_select"):
		shoot_bullet()
	clamp_position_to_screen()
	move_and_slide()

func shoot_bullet():
	var bullet = bullet_resource.instantiate()
	get_node("/root/Node2D").add_child(bullet)
	bullet.global_position = global_position

func clamp_position_to_screen():
	var screen_size = get_viewport_rect().size
	global_position.x = clamp(global_position.x, 0, screen_size.x)
	global_position.y = clamp(global_position.y, 0, screen_size.y)
