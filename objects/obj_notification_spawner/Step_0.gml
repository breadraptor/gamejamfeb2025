/// @description spawn notifications on a timer

// this is getting remade in each room so you have to loiter for a while to trigger

timerr++;

if (timerr > steps_between_alerts) {
	trace("Should be spawning now")
	layer_sequence_create("Sequences", other.x, other.y, seq_notification);
	timerr = 0;
}