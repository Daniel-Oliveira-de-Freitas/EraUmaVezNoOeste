extends KinematicBody2D

var motion = Vector2.ZERO
var speed = 200
var gravity = 1200
var jump_force = -600

func _process(delta):
	
	var move_direction = int(Input.is_action_pressed("ui_right")) - int (Input.is_action_pressed("ui_left"))
	move_and_slide(motion,Vector2.UP)
	
	if is_on_floor():
		print("chao")
		if  Input.is_action_pressed("ui_right") or  Input.is_action_pressed("ui_left"):
			$AnimatedSprite.play("Run")
			
		if Input.is_action_pressed("ui_right"):
			motion.x = speed;
			$AnimatedSprite.flip_h = false
			
		elif Input.is_action_pressed("ui_left"):
			motion.x = -speed
			$AnimatedSprite.flip_h = true
				
		elif  Input.is_action_pressed("ui_up"):
			$AnimatedSprite.play("Jump")
			motion.y = jump_force
				
		elif  Input.is_action_pressed("ui_down"):
			$AnimatedSprite.play("Slide")
			
		else:
			motion.x = 0;
			$AnimatedSprite.play("Idle")
			move_and_slide(motion,Vector2.UP)
			
	else:
		motion.y += gravity * delta	
		print("ar")
		
	

