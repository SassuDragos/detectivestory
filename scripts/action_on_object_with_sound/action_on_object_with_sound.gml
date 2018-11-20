/// @function action_on_object_with_sound(sound_object, do_repeat, current_play_state)

/* 
Input:
	(argument[0]) sound_object: Sound Object = The sound object played by the object.
	(argument[1]) do_repeat: Boolean = Should repeat sound 
	[OPTIONAL] (argument[2]) current_play_state: Boolean = The current playing state of the object. In case you want it to stop/play when you action again.
Output: 
	new_current_play_state: Boolean = Is it playing or not?
*/

switch (argument_count) {
	case 3:
		if argument[2] == false {
			audio_play_sound(argument[0],1,argument[1]);
			return true;
		} else {
			audio_stop_sound(argument[0]);
			return false;
		}
		break;
	default:
		audio_play_sound(argument[0],1,argument[1]);
		return true;
}