if instance_exists(obj_player)
{
	if distance_to_object(obj_player) > 15 {
		instance_destroy();
	}
	
}