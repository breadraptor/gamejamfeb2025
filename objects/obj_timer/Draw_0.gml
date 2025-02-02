/// @description Draw the timer

draw_set_color(c_white)
if t_min < 1 then draw_set_color(c_red)
draw_set_font(pxl_font)

draw_set_halign(fa_center)
draw_set_valign(fa_top)

var t = ""
t += string(t_min)
t += ":"
if t_sec > 9 {t+= ""+string(t_sec)}
if t_sec < 10 {t+= "0"+string(t_sec)}
t += "."
t += string(t_mil)


//Draw timer at top ceneter of camera view:

// Get the camera's position and size
var cam_x = camera_get_view_x(view_camera[0]); //top left corner X
var cam_y = camera_get_view_y(view_camera[0]); //returns top edge in room cooridnates
var cam_w = camera_get_view_width(view_camera[0]); //width of camera view


// Center X of camera view
var center_x = cam_x + (cam_w / 2);

// adding off set 10 pixel from top
var center_y = cam_y + 10; 

// Draw the timer at the center
draw_text(center_x, center_y, "Timer: " +  string(t));