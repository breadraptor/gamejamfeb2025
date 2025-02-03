var gui_w = display_get_gui_width(); //get user display width
var gui_h = display_get_gui_height(); //get user display height

var kp_x = gui_w * 0.5;
var kp_y = gui_h * 0.5;

draw_sprite_ext(
		fingerjar_close, //sprite
		0, //Sub image?
		kp_x, //Center X
		kp_y,  //Center Y
		3,  //Horizontal Scale
		3, //Vertical Scale
		0, // Rotation
		c_white, //Color Tint
		1 //Alpha
	);