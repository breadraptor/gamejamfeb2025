/// @description Insert description here
// You can write your code in this editor
//draw_set_font(pxl_font);
//draw_text_color(x+32, y, "Is anyone here? \nHm... its creepy.", c_white, c_white, c_white, c_white, 1);
//draw_text_color(x+32, y+32, "Hellooooooo??", c_white, c_white, c_white, c_white, 1);

if (obj_gamecontroller._STATE = states.interaction) {
	draw_set_font(pxl_font);
	//draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	draw_text_ext_color(x, y, text, obj_DialogueMaster.text_sep, obj_DialogueMaster.text_limit, c_white, c_white, c_white, c_white, 1);
}
else {
	instance_destroy();
}