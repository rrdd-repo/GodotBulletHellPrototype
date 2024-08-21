class_name ColorCommand
extends Command

class Params:
	var color: Color
	
	func _init(color_value: Color) -> void:
		self.color = color_value

var color_history : Array = []

var undo_data : Params = Params.new(Color('ffffff'))

func execute(actor: Actor, data: Object = null) -> void:
	if data is Params:
		undo_data = Params.new(actor._sprite_color)
		color_history.append(undo_data.color)
		actor._sprite_color = data.color

func undo(actor: Actor) -> void:
	if color_history.size() > 0:
		var previous_color = color_history.pop_back()
		actor._sprite_color = previous_color
