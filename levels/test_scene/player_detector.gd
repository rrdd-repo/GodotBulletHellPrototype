extends Area2D

func _on_body_entered(body):
	if body is Actor:
		body._controller.color_command.execute(body, ColorCommand.Params.new(Color(randf() * 1, randf() * 1, randf() * 1)))
		body._speed = randf() * 200
