
//check if puzzle sovled:

if (!global.balloon_puzzle_solved){

	// 1. Capture digit keys 0-9
	for (var i = 0; i < 10; i++) {
		if keyboard_check_pressed(ord(string(i))){
			//if max digits not reached add the new one
			if string_length(code_entered) < max_digits {
				code_entered  += string(i);
			}
		}
	}

	// 2. Press Enter to submit (or auto if 3 digits are in)

	if keyboard_check_pressed(vk_enter) or string_length(code_entered) == 3 {

		if code_entered == correct_code {
			//show_message("Correct Code wahoooo!");
			//play audio here for success
			//audio_play_sound(SAM_balloon_riddle, 1, false);
			//display sovled sprite:
			var box_inst = instance_nearest(x,y, obj_balloon_box);
		
			if(box_inst != noone){
				box_inst.sprite_index = balloonbox_sprite_green;
			}
			
			obj_DialogueMaster.dialogue_id = 2;
			global.balloon_puzzle_solved = true;
			//destory key pad gui
			instance_destroy();
		}
		else {
			//show_message("Incorrect Code bozo!");
			//reset code
			//play incorrect audio bit
			//audio_play_sound(SAM_balloon_riddle, 1, false);
			code_entered = "";
		}
	}

	// 3. Backspace to remove last digit
	if keyboard_check_pressed(vk_backspace){
		if string_length(code_entered) > 0 {
			code_entered = string_copy(code_entered, 1, string_length(code_entered) -1);
		}
	}

}
//4. if player moves away, stop showing screen
if instance_exists(obj_player)
{
	if distance_to_object(obj_player) > 15 {
		instance_destroy();
	}
	
}
