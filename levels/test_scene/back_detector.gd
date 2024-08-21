extends Area2D

func _on_body_entered(body):
	if body is Actor:
		body._controller.color_command.undo(body)
		body._speed = body._original_speed
