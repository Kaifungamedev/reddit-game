extends RigidBody
var velocity = Vector3(0,0,0)
const MAX_LEFT_RIGHT_SPEED = 100
const ZSPEED = 5
const XSPEED = -5
func _ready():
	velocity.x = -100
	
func _process(delta):
	if Input.is_action_pressed("move_left") and not velocity.z <= MAX_LEFT_RIGHT_SPEED:
		velocity.z = MAX_LEFT_RIGHT_SPEED + 1
	elif Input.is_action_pressed("move_left") and velocity.z <= MAX_LEFT_RIGHT_SPEED:
		velocity.z += ZSPEED
	elif Input.is_action_pressed("move_right") and not velocity.z >= -MAX_LEFT_RIGHT_SPEED:
		velocity.z = -MAX_LEFT_RIGHT_SPEED - 1
	elif Input.is_action_pressed("move_right") and velocity.z >= -MAX_LEFT_RIGHT_SPEED:
		velocity.z += ZSPEED * -1
	else:
		velocity.z = 0
	move_and_fall()
	print(velocity.x) 
	print(velocity.z)
func move_and_fall():
	linear_velocity = velocity


func _on_Timer_timeout():
	velocity.x += XSPEED
