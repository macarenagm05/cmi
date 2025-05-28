class_name Head extends SnakePart

signal food_eaten
signal collided_with_tail

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("Food"):
		# collided with food
		food_eaten.emit()
		area.call_deferred("queue_free")
	else:
		# if collided with something that isn't food
		collided_with_tail.emit()
