/// @description Insert description here
// You can write your code in this editor

if (obj_gamecontroller._STATE = states.interaction) {
	// all these green words are just applying the default value. I'm just scaling up by 2
	draw_sprite_ext(spr_dialogue_speaker, image_index, x, y, 2, 2, image_angle, image_blend, image_alpha);
	
}
else {
	instance_destroy();
}