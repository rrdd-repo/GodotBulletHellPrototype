class_name BaseController
extends Node

var actor: Actor

var movement_command := MovementCommand.new()
var color_command := ColorCommand.new()

func _init(actor_value: Actor) -> void:
	self.actor = actor_value
