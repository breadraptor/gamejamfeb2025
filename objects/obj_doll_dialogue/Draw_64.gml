/// @description Insert description here
// You can write your code in this editor

//testing new coords:
// Get the camera's position and size
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
var cam_w = camera_get_view_width(view_camera[0]);
var cam_h = camera_get_view_height(view_camera[0]);

// Bottom-center of the camera view
var bottom_center_x = cam_x + (cam_w / 2);

// Offset by 10 pixels from the bottom (change as needed)
var bottom_center_y = cam_y + cam_h - 10;

draw_sprite_ext(spr_doll_dialogue, image_index, x, y, 2, 2, image_angle, image_blend, image_alpha);

