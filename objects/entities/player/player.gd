extends Entity

var walk_spd = 100

func _physics_process(delta):
	var dir_x = -int(Input.is_action_pressed("left")) + int(Input.is_action_pressed("right")) 
	
	# Apply horizontal movement
	velocity.x = walk_spd * dir_x
	
	# Apply gravity
	velocity.y += 90.8 * delta
	
	move_and_slide()
