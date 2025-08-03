extends CharacterBody2D

var speed := 4

func _ready() -> void:
	modulate = Color.RED

func _physics_process(delta: float) -> void:
	var input_direction : Vector2
	if is_on_wall():     # prevents being able to get faster when colliding against a wall and moving diagonally against it
		input_direction = Vector2(
			Input.get_action_strength("right") - Input.get_action_strength("left"),
			Input.get_action_strength("down") - Input.get_action_strength("up")
		).normalized()
	else:
		input_direction = Vector2(
			Input.get_action_strength("right") - Input.get_action_strength("left"),
			Input.get_action_strength("down") - Input.get_action_strength("up")
		)

	velocity = input_direction * speed*30
	move_and_slide()
