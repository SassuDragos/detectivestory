if isPlaying == false {
	audio_play_sound(sound0,1,false);
	isPlaying = true
} else {
	audio_stop_sound(sound0);
	isPlaying = false
}