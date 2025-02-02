
//obj_keyppad Draw event

// 1. draw keypad background in ceneter of screen
var gui_w = display_get_gui_width(); //get user display width
var gui_h = display_get_gui_height(); //get user display height

var kp_x = gui_w * 0.5;
var kp_y = gui_h * 0.5;

if ( global.balloon_puzzle_solved ) {
	draw_sprite_ext(
	balloon_box_green, //sprite
	0, //Sub image?
	kp_x, //Center X
	kp_y,  //Center Y
	3,  //Horizontal Scale
	3, //Vertical Scale
	0, // Rotation
	c_white, //Color Tint
	1 //Alpha
);
}
else {
	draw_sprite_ext(
		balloon_box_red, //sprite
		0, //Sub image?
		kp_x, //Center X
		kp_y,  //Center Y
		3,  //Horizontal Scale
		3, //Vertical Scale
		0, // Rotation
		c_white, //Color Tint
		1 //Alpha
	);
}

// 2. Draw the digits the user has entered
draw_set_halign(fa_left ); //text centered along X-coordinate
draw_set_valign(fa_middle); //Text centered along Y-coordinate

draw_set_font(pxl_font_lg)

//cringe adhoc adjusting digits
start_x = kp_x + -450; 
start_y = kp_y + 50;

draw_text(start_x,start_y, code_entered); //Draw string (code) at position xy
