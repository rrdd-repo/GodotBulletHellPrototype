class_name Actor
extends CharacterBody2D

#region Start Variables
@onready var _controller_container = $ControllerContainer
@onready var _sprite = $Sprite2D
#endregion

#region Controller Variables
var _controller: BaseController:
	set(controller):
		for child in _controller_container.get_children():
			child.queue_free()

		_controller = controller
		_controller_container.add_child(_controller)
	get:
		return _controller
#endregion

#region Movement Variables
@export var _speed: float = 100:
	set(speed):
		_speed = speed
	get:
		return _speed

@warning_ignore("unused_private_class_variable")
@onready var _original_speed: float = _speed

var _movement_input: Vector2:
	set(movement):
		_movement_input = movement
	get:
		return _movement_input
#endregion

#region Color Variables
@warning_ignore("unused_private_class_variable")
var _sprite_color: Color:
	set(hex):
		var new_color = Color(hex)
		_sprite.self_modulate = new_color
		return new_color
	get:
		return _sprite.self_modulate
#endregion

#region Movement
func _physics_process(_delta: float) -> void:
	velocity = _movement_input * _speed
	move_and_slide()
#endregion
