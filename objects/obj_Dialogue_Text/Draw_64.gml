/// @description Insert description here
// You can write your code in this editor
//draw_set_font(pxl_font);
//draw_text_color(x+32, y, "Is anyone here? \nHm... its creepy.", c_white, c_white, c_white, c_white, 1);
//draw_text_color(x+32, y+32, "Hellooooooo??", c_white, c_white, c_white, c_white, 1);

	draw_set_font(pxl_font);
	//draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	
	//testing new draw coords, should be center camera view
	//Draw timer at top ceneter of camera view:
	// Get the camera's position and size
	var cam_x = camera_get_view_x(view_camera[0]); //top left corner X
	var cam_y = camera_get_view_y(view_camera[0]); //returns top edge in room cooridnates
	var cam_w = camera_get_view_width(view_camera[0]); //width of camera view
	// Center X of camera view
	var center_x = cam_x + (cam_w / 2);

	// adding off set 10 pixel from top
	var center_y = cam_y + 10; 
	
	
	draw_text_ext_color(x, y, text, obj_DialogueMaster.text_sep, obj_DialogueMaster.text_limit, c_white, c_white, c_white, c_white, 1);

//else {
//	instance_destroy();
//}