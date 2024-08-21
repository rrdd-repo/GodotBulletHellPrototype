extends Node3D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Camera3D.transform.origin.z -= 0.5 * delta
