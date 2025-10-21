extends Node
class_name StateManager

@export var default_state: State

var current_state: State

func _ready() -> void:
	current_state = default_state
	current_state.enter()

func process_physics() -> void:
	var new_state: State = current_state.process_physics()
	if new_state and new_state.can_enter():
		change_state(new_state)

func process() -> void:
	var new_state: State = current_state.process()
	if new_state and new_state.can_enter():
		change_state(new_state)

func change_state(new_state: State) -> void:
	current_state.exit()
	current_state = new_state
	current_state.enter()
