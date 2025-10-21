extends Node
class_name State

func can_enter() -> bool:
	return true
	
func enter() -> void:
	pass
	
func exit() -> void:
	pass

func process_physics() -> State:
	return null
	
func process() -> State:
	return null
