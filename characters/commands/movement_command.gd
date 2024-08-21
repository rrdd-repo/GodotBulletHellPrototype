class_name MovementCommand
extends Command

class Params:
	var movement: Vector2
	
	func _init(movement_value: Vector2) -> void:
		self.movement = movement_value
	
func execute(actor: Actor, data: Object = null) -> void:
	if data is Params:
		actor._movement_input = data.movement
