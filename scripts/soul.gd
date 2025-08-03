extends CharacterBody2D

var speed := 4
var buttons : Node2D

func _ready() -> void:
	modulate = Color.RED
	buttons = get_node("../Buttons")

func _process(delta: float) -> void:
	if Constants.turn == "player":
		if Constants.state == "buttons":
			# position soul
			var iter = buttons.get_children()
			for i in range(iter.size()):
				if i == Constants.selection:
					position.x = iter[i].position.x - 38
					position.y = iter[i].position.y
			
			# controls
			Constants.selection += int(Input.is_action_just_pressed('right')) - int(Input.is_action_just_pressed('left'))
			Constants.selection = (Constants.selection + 4) % 4

func _physics_process(delta: float) -> void:
	if Constants.turn == "enemies":
		if Constants.state == "attack":
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
