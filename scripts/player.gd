extends CharacterBody2D
class_name Player

@export var state_manager: StateManager
@export var animation_tree: AnimationTree
@export var player_conditions: PlayerConditions

const WALK_SPEED: float = 150.0

var facing_direction: Vector2

func _physics_process(_delta: float) -> void:
	state_manager.process_physics()
