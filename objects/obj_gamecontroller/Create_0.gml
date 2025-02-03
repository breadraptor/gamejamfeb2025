/// @description game init
enum states {
	free,
	interaction
}
_STATE = states.free;

//Balloon puzzle state
global.balloon_puzzle_solved = false;
global.intro_text_spawn = false;

audio_play_sound(sound_bg_music, 100, true, .5);