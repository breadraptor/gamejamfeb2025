if (obj_gamecontroller._STATE = states.free) {
	var bbox_side;

	//Interact code
	interact = keyboard_check(ord("E"));
	
	if (interact) {
		
		if distance_to_object(obj_balloon_box) < 10 {
			//ensure only 1 sprite exists
			if !instance_exists(obj_keypad){
				instance_create_layer(x, y, "Key_Pad_Instance", obj_keypad)
			}
		}
		if distance_to_object(obj_bookstand) < 10 {
			//ensure only 1 sprite exists
			if !instance_exists(obj_yearbook){
					instance_create_layer(x, y, "Key_Pad_Instance", obj_yearbook)
				}
		}
		if distance_to_object(obj_fingerjar) < 10 {
			//ensure only 1 sprite exists
			if !instance_exists(obj_fingerjarclose){
					instance_create_layer(x, y, "Key_Pad_Instance", obj_fingerjarclose)
				}
		}
}

	//Interact code end
	/*
	if (keyboard_check_released(vk_space)) {
		var mid = bbox_bottom - (bbox_bottom - bbox_top) / 2;
		var split = bbox_right - (bbox_right - bbox_left) / 2;
		if (facing = "left") {
			var tile_id = tilemap_get_at_pixel(tilemap_int, bbox_left-1, mid);
			trace(tile_id);
			interaction_tile_id = tile_id;
			if (tile_id > 0) {
				obj_gamecontroller._STATE = states.interaction;
			}
		}
		else if (facing = "right") {
			var tile_id = tilemap_get_at_pixel(tilemap_int, bbox_right+1, mid);
			interaction_tile_id = tile_id;
			if (tile_id > 0) {
				obj_gamecontroller._STATE = states.interaction;
			}
		}
		else if (facing = "up") {
			var tile_id = tilemap_get_at_pixel(tilemap_int, split, bbox_top-1);
			interaction_tile_id = tile_id;
			if (tile_id > 0) {
				obj_gamecontroller._STATE = states.interaction;
			}
		}
		else if (facing = "down") {
			var tile_id = tilemap_get_at_pixel(tilemap_int, split, bbox_bottom+1);
			interaction_tile_id = tile_id;
			if (tile_id > 0) {
				obj_gamecontroller._STATE = states.interaction;
			}
		}
		trace(interaction_tile_id);
	} */

	key_right = keyboard_check(ord("D"));
	key_left = keyboard_check(ord("A"));
	key_up = keyboard_check(ord("W"));
	key_down = keyboard_check(ord("S"));

	hsp = (key_right - key_left) * 4;
	vsp = (key_down - key_up) * 4;
	
	// Collision detection
	if (!place_meeting(x + hsp, y, tilemap)) {
		x += hsp;
	}
	if (!place_meeting(x, y + vsp, tilemap)) {
		y += vsp;
	}

	// sprite assignment
	if (hsp > 0) {
		// move right
		sprite_index = spr_player_walk_right;
		facing = "right";
	}
	else if (hsp < 0) {
		// move left
		sprite_index = spr_player_walk_left;
		facing = "left";
	}
	else if (vsp > 0) {
		sprite_index = spr_player_walk_down;
		facing = "down";
	}
	else if (vsp < 0) {
		sprite_index = spr_player_walk_up;
		facing = "up";
	}
	else {
		//idle.
		if (facing = "right") {
			sprite_index = spr_player_stand;
			image_index = 0;
		}
		else if (facing = "up") {
			sprite_index = spr_player_stand;
			image_index = 1;
		}
		else if (facing = "left") {
			sprite_index = spr_player_stand;
			image_index = 2;
		}
		else if (facing = "down") {
			sprite_index = spr_player_stand;
			image_index = 3;
		}
	}
}

else if (obj_gamecontroller._STATE = states.interaction) {
	//trace("haha you're trapped");
	
	obj_DialogueMaster.tile_id = interaction_tile_id;
	//trace("TILE ID: ", interaction_tile_id);
	if (keyboard_check_released(vk_space)) {
		//TODO increment dialogue
		obj_DialogueMaster.curr_text_index++;
		obj_DialogueMaster.printed = false;
	}
}
