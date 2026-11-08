extends CharacterBody2D

var direction: Vector2 = Vector2(1,1)
var speed: int = 100

# runs this function every 60 ms
# for player, we have collisions so we want to include physics
# hence _physics_process
func _physics_process(_delta: float) -> void:
	direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed
	animation()
	move_and_slide()
	if Input.is_action_just_pressed("spacebar"):
		print("I am pressing spacey barsie!")

func animation():
	if direction:
		$AnimatedSprite2D.flip_h = direction.x > 0
		if direction.x != 0:
			$AnimatedSprite2D.animation = 'left'
		else:
			$AnimatedSprite2D.animation = 'up' if direction.y < 0 else 'down'
	else:
		$AnimatedSprite2D.frame = 0


func _on_signal_practice_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
