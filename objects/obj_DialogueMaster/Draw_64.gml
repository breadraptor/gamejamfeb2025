/// @description Making box and text
if (dialogue_id != -1) {
	var gui_offset = 400; // I don't know why the GUI coords are this far off. :/
	var centerWidth = camera_get_view_width(view) + gui_offset / 2;
	var centerHeight = camera_get_view_height(view) + gui_offset * 2; // + gui_offset / 2;

	//draw_set_color(c_dkgrey);
	//draw_roundrect(centerWidth, centerHeight, centerWidth+width, centerHeight+height, 0);
	//draw_sprite_ext(spr_doll_dialogue, image_index, centerWidth, centerHeight, 2, 2, image_angle, image_blend, image_alpha);
	//instance_destroy(obj_Dialogue_Text)
	
	instance_create_layer(centerWidth, centerHeight, "Instances_UI", obj_doll_dialogue)
	if (!printed) {
		if (get_dialogue(dialogue_id, curr_text_index) != "") {
			var currText = create_text(centerWidth, centerHeight, get_dialogue(dialogue_id, curr_text_index));
			printed = true;
			wait_timer = 0;
		}
		else {
			dialogue_id = -1;
			curr_text_index = 0;
			//text_offset = 0;
			printed = false;
			instance_destroy(obj_doll_dialogue)
			instance_destroy(obj_Dialogue_Text)
		}
	} else {
		// wait
		wait_timer++;
		if (wait_timer > wait_between_text) {
			curr_text_index++;
			instance_destroy(obj_Dialogue_Text)
			printed = false;
		}
	}

}
