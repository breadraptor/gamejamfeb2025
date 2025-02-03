/// @description timer tick

t_mil -= 1

// handle text events
if (t_min < 2 && t_sec < 55 && !global.intro_text_spawn) {
	obj_DialogueMaster.dialogue_id = 1;
	global.intro_text_spawn = true;
}

if t_mil = -1{ //reduced seconds by one
	t_mil = 9
	t_sec -= 1
}

if t_sec = -1{ //reduced minutes by one
	t_sec = 59
	t_min -= 1
}

//make sure timer doesn't tik at 0

if !(t_sec = 0 && t_min = 0 && t_mil =0){
	alarm[0] = 6	
}
else{
	/*
	instance_create_layer(
        0, 
        0, 
        "Key_Pad_Instance",     // or whichever layer name you want
        obj_endScreen
    );
	*/
	instance_create_layer(0, 0, "EndScreen", obj_endScreen);
	//game_end()	
}