if (distance_to_object(obj_player) > 15) {
	move_towards_point(obj_player.x, obj_player.y, 6)
} else {
	speed = 0
}