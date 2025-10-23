extends State

@export var player: Player

@export var walk_state: State

func enter() -> void:
	player.velocity = Vector2.ZERO
	player.animation_tree.set("parameters/Idle/blend_position", player.facing_direction)

func process_physics() -> State:
	var direction: Vector2 = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	if direction:
		return walk_state
	return null
