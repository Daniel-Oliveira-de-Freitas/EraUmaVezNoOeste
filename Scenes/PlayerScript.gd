extends KinematicBody2D

var motion = Vector2.ZERO;
var speed = 200;

func _process(delta):
	
	if is_on_floor():
		print("chao")
		if  Input.is_action_pressed("ui_right") or  Input.is_action_pressed("ui_left"):
			$AnimatedSprite.play("Run")
	else:
		motion.y += 10
		
		print("ar")
		
	if Input.is_action_pressed("ui_right"):
		motion.x = speed;
	elif Input.is_action_pressed("ui_left"):
		motion.x = -speed
	else:
		motion.x = 0;
		
		move_and_slide(motion,Vector2.UP)

