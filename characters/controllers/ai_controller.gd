class_name AiController
extends BaseController

#func _physics_process(_delta) -> void:
	#var horizontal_input = randf() * 2 - 1
	#var vertical_input = randf() * 2 - 1
	#
	#var movement_vector : Vector2 = Vector2(horizontal_input, vertical_input)
	#movement_command.execute(actor, MovementCommand.Params.new(movement_vector))

func _physics_process(_delta) -> void:
	var horizontal_input = 0
	var vertical_input = 1
	
	var movement_vector : Vector2 = Vector2(horizontal_input, vertical_input)
	movement_command.execute(actor, MovementCommand.Params.new(movement_vector))
