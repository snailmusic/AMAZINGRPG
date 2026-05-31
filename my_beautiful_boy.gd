extends CharacterBody2D


const SPEED = 100.0
const SPRINT_SPEED = 4
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction_x := Input.get_axis("ui_left", "ui_right")
	var direction_y := Input.get_axis("ui_down", "ui_up")
	var modifier = 1.0
	if (Input.get_action_strength("SPRINT") > 0.4):
		modifier = SPRINT_SPEED
	velocity.x = direction_x * SPEED * modifier
	velocity.y = direction_y * SPEED * modifier

	move_and_slide()
