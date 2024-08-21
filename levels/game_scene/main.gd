class_name Main
extends Node

func _process(_delta):
	if Input.is_action_just_pressed("change_resolution"):
		change_resolution()

func change_resolution() -> void:
	# Game Resolution
		$HBoxContainer/SubViewportContainer/SubViewport.size = Vector2i(600, 800)
		# Scene Resolution
		$HBoxContainer/SubViewportContainer/SubViewport.size_2d_override = Vector2i(480, 640)
