extends State

@export var player: Player

@export var idle_state: State

func enter() -> void:
	player.player_conditions.is_walking = true
	
func exit() -> void:
	player.player_conditions.is_walking = false
	
func process_physics() -> State:
	var direction: Vector2 = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	if direction == Vector2.ZERO:
		return idle_state
	player.velocity = direction * player.WALK_SPEED
	player.facing_direction = direction.normalized()
	player.animation_tree.set("parameters/Walk/blend_position", player.facing_direction)
	player.move_and_slide()
	return null
	
