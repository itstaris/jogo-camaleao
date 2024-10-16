extends CharacterBody2D


const SPEED = 300.0
#const JUMP_VELOCITY = -400.0

signal player_has_died()

func _process(delta):
	queue_free()
	emit_signal("player_has_died")
	
func _physics_process(_delta):
	# Handle jump.
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		#velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var directionx := Input.get_axis("ui_left", "ui_right")
	var direciony := Input.get_axis("ui_up", "ui_down")
	if directionx:
		velocity.x = directionx * SPEED
		velocity.y = direciony * 0
	if direciony:
		velocity.y = direciony * SPEED
		velocity.x = directionx * 0
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
