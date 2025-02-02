// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_text(x, y, text){
	instance_create_layer(x+2, y+2, "Instances_UI", obj_DialogueSpeaker);
	// picture width: 64. 2 pixels of space + 2 pixels of space from the picture above
	var _text = instance_create_layer(x+68, y, "Instances_UI", obj_Dialogue_Text);
	_text.text = text;
	return _text; // so I can use it for the next offset.
}