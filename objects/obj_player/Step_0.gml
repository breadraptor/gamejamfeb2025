if (obj_gamecontroller._STATE = states.free) {
	var bbox_side;

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
	}

	key_right = keyboard_check(ord("D"));
	key_left = keyboard_check(ord("A"));
	key_up = keyboard_check(ord("W"));
	key_down = keyboard_check(ord("S"));

	hsp = (key_right - key_left) * 4;
	vsp = (key_down - key_up) * 4;

	// Horizontal collision
	if (hsp > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
	if (tilemap_get_at_pixel(tilemap, bbox_side+hsp, bbox_top) != 0) || 
		(tilemap_get_at_pixel(tilemap, bbox_side+hsp, bbox_bottom) != 0) {
		//if (hsp > 0) x = x - (x mod 16) + 15 - (bbox_right - x); 
		//else x = x - (x mod 16) - (bbox_left - x);
		if (hsp > 0) x = x - (x mod 48) + 47 - (bbox_right - x); 
		else x = x - (x mod 48) - (bbox_left - x);
		hsp = 0;
	}
	x += hsp;

	// Vertical collision
	if (vsp > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
	if (tilemap_get_at_pixel(tilemap, bbox_left, bbox_side+vsp) != 0) || 
		(tilemap_get_at_pixel(tilemap, bbox_right, bbox_side+vsp) != 0) {
	//	if (vsp > 0) y = y - (y mod 16) + 15 - (bbox_bottom - y);
	//	else y = y - (y mod 16) - (bbox_top - y);
	if (vsp > 0) y = y - (y mod 48) + 47 - (bbox_bottom - y);
		else y = y - (y mod 48) - (bbox_top - y);
		vsp = 0;
	}

	y += vsp;


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