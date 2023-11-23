with(other) {
	hp = hp-0.60;
	flag_hit=1;
}
audio_sound_pitch(snd_enHit,random_range(1.5,1.8));
audio_play_sound(snd_enHit,1,false);
instance_change(obj_blast,1);
