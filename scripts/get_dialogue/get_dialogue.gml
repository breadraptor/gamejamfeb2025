// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_dialogue(convoId, index){
	switch (convoId) {
		case -1:
			return "Got bad tile id";
		case 1:
			switch(index) {
				case 0:
					return "Wha -- Hey, you! You shouldn't be awake...";
				case 1:
					return "Don't touch anything and just wait for Bozo to come back and eat you!!";
				default:
					return "";
			}
		case 2:
			switch(index) {
				case 0:
					return "Hey, how'd you do that?";
				case 1:
					return "I told you not to touch anything!!!";
				case 2:
					return "You're gonna be in big trouble!!";
				default:
					return "";
			}
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
	}
	trace("*Aladdin voice* It broke.");
	return "";
}