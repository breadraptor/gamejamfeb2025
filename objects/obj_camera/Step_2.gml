/// @description Insert description here
// You can write your code in this editor
#macro view view_camera[0]

camera_set_view_size(view, view_width, view_height);
//this is where you'd set up zooms or whatever

if(instance_exists(obj_player)) {
	var _x = clamp(obj_player.x - view_width / 2, 0, room_width-view_width);
	var _y = clamp(obj_player.y - view_height / 2, 0, room_height-view_height);
	
	var _cur_x = camera_get_view_x(view);
	var _cur_y = camera_get_view_y(view);
	
	var _spd = .1;
	camera_set_view_pos(view, 
		lerp(_cur_x, _x, _spd),
		lerp(_cur_y, _y, _spd));
}