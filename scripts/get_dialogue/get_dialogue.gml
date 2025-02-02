// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_dialogue(convoId, index){
	switch (convoId) {
		case -1:
			return "Got bad tile id";
		case 7:
			switch(index) {
				case 0:
					return "Its a candle. \nThe animation is really nice.";
				case 1:
					return "The x coordinate of the drawn string. The Y coordinate of the drawn string. The string to draw. The distance in pixels between lines of text.";
				case 2:
					return "I really don't know what else to say!";
				default:
					return "";
			}
		case 10:
			switch(index) {
				case 0:
					return "How are these still alive?";
				case 1:
					return "Here, fishie...";
				case 2:
					return ".....!"
				case 3:
					return "It lunged at me.";
				default: return "";
			}
	}
	trace("*Aladdin voice* It broke.");
	return "";
}