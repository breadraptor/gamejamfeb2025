// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_button(x, y, width, height, text, script){
	//trace(x, y);
	var _x = x;
	var _y = y;
	var _width = width;
	var _height = height;
	var _text = text;
	var _script = script;
	//var _button = instance_create_layer(_x, _y, "Instances", oButton);
	with (_button) {
		width = _width;
		height = _height;
		text = _text;
		script = _script;
	}
	
	return _button;
}