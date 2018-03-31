extends KinematicBody2D

# This is a demo showing how KinematicBody2D
# move_and_slide works.

# Member variables
const STEP_WIDTH = 16

func _physics_process(delta):
	var motion = Vector2()
	
	#Input.action_press("move_bottom")
	
	if Input.is_action_just_pressed("move_up"):
		motion += Vector2(0, -STEP_WIDTH)
	if Input.is_action_just_pressed("move_bottom"):
		motion += Vector2(0, STEP_WIDTH)
	if Input.is_action_just_pressed("move_left"):
		motion += Vector2(-STEP_WIDTH, 0)
	if Input.is_action_just_pressed("move_right"):
		motion += Vector2(STEP_WIDTH, 0)


	#motion *= STEP_WIDTH
	
	var collision = move_and_collide(motion)
	while collision and collision.collider.name.begins_with("block"):
		collision = collision.collider.move_and_collide(motion)
		
		
	
		
