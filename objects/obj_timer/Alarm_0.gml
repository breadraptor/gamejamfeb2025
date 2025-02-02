/// @description timer tick

t_mil -= 1

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
	game_end()	
}