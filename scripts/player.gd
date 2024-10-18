extends CharacterBody2D


const SPEED = 2
	
func _physics_process(_delta):

	# Get the input direction and handle the movement/deceleration.
	var directionx := Input.get_axis("ui_left", "ui_right")
	var direciony := Input.get_axis("ui_up", "ui_down")
	if directionx:
		velocity.x = directionx * SPEED
		velocity.y = direciony * 0
	if direciony:
		velocity.y = direciony * SPEED
		velocity.x = directionx * 0

	move_and_slide()
