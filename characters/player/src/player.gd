class_name Player
extends Actor

var _is_focusing: bool = false
var _multiplier: float = 0.5
var _canShoot: bool = true

func _ready() -> void:
	_controller = PlayerController.new(self)

## Placeholder
func _process(_delta):
	#if get_tree().get_nodes_in_group("enemy"):
		#$PlayerShot.trackedNode = get_closest_node_or_null("enemy")
	#else:
		#$PlayerShot.trackedNode = $HomingDummy
	
	if get_node_or_null("PlayerShot") != null:
		if $PlayerShot.startMode == 2:
			if Input.is_action_pressed("shoot") and _canShoot:
				$PlayerShot.set_manual_start(true)
				_canShoot = false
				await get_tree().create_timer($PlayerShot.fireRate).timeout
				_canShoot = true
				

func _physics_process(_delta: float):
	var speed_multiplier: float = _multiplier if _is_focusing else 1.0
	velocity = _movement_input * (_speed * speed_multiplier)
	move_and_slide()

## placeholder
#func get_closest_node_or_null(group: String):
	#var nodes = get_tree().get_nodes_in_group(group)
	#var closest_node = null
 #
	#if (nodes.size() > 0):
		#closest_node = nodes[0]
		#for node in nodes:
			#var distance_to_current = global_position.distance_squared_to(node.global_position)
			#var distance_to_closest_node = global_position.distance_squared_to(node.global_position)
			#if (distance_to_current < distance_to_closest_node):
				#closest_node = node
#
	#return closest_node


func _on_player_shot_bullet_hit(result: Array, bulletIndex: int, spawner: Object) -> void:
	result[0]["collider"].queue_free()
