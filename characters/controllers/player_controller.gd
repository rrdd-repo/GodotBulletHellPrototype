class_name PlayerController
extends BaseController

func _physics_process(_delta) -> void:
	var movement_vector : Vector2 = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
	var is_focusing: bool = Input.is_action_pressed("focus")
	
	if actor is Player:
		actor._is_focusing = is_focusing
	
	movement_command.execute(actor, MovementCommand.Params.new(movement_vector))
