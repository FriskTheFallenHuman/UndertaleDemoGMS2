function caster_play(argument0, argument1, argument2) {
	this_song_i = audio_play_sound(argument0, 100, 0)
	audio_sound_pitch(argument0, argument2)
	audio_sound_gain(argument0, argument1, 0)
	return this_song_i



}
