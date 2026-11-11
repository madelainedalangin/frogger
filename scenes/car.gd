extends Area2D

var direction = Vector2.LEFT
var speed = 100
var colors = [
	preload("res://graphics/cars/green.png"),
	preload("res://graphics/cars/red.png"),
	preload("res://graphics/cars/yellow.png")
]

func _ready() -> void:
	if position.x < 0:
		direction.x = 1
		$Sprite2D.flip_h = true
	$Sprite2D.texture = colors.pick_random()

# we are checking for overlap so no physics included
func _process(delta: float) -> void:
	# updating the position of this area 2D node
	position += direction * speed * delta	


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
