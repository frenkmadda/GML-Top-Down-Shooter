if(hp<=0){
	audio_sound_pitch(snd_death,random_range(0.8,1.2));
	audio_play_sound(snd_death,1,false);
	instance_destroy();
	with(obj_score) thescore = thescore - 10;
}
alarm[0]=20;