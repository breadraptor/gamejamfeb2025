/// @description Making box and text
if (tile_id != -1) {
	var gui_offset = 400; // I don't know why the GUI coords are this far off. :/

	draw_set_color(c_dkgrey);
	draw_roundrect(x+gui_offset, y, x+gui_offset+width, y+height, 0);
	if (!printed) {
		if (get_dialogue(tile_id, curr_text_index) != "") {
			var currText = create_text(x+gui_offset, y+text_offset, get_dialogue(tile_id, curr_text_index));
			var str_height = string_height_ext(currText.text, text_sep, text_limit)+space_between_texts;

			if (str_height < 74) {
				text_offset += 74; // minimum space between texts is 64 (height of pic) + 10 (space_between_texts) 
			}
			else {
				text_offset += str_height;
			}
			
			printed = true;
		}
		else {
			tile_id = -1;
			curr_text_index = 0;
			text_offset = 0;
			printed = false;
			obj_gamecontroller._STATE = states.free;
		}
	}

}
