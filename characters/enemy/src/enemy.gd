class_name Enemy
extends Actor

#var _time_has_passed: bool = false

func _ready() -> void:
	_controller = AiController.new(self)

#func _process(_delta):
	#if not _time_has_passed:
		#_controller = AiController.new(self)
		#await get_tree().create_timer(1.0).timeout
		#_time_has_passed = true
	#else:
		#_controller = PlayerController.new(self)
		#await get_tree().create_timer(1.0).timeout
		#_time_has_passed = false
