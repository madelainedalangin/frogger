extends Area2D

var direction = Vector2.LEFT
var speed = 1

# we are checking for overlap so no physics included
func _process(delta: float) -> void:
	# updating the position of this area 2D node
	position += direction * speed


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
