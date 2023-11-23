with(obj_boss){
	if(instance_exists(obj_wing1) or instance_exists(obj_wing2))
	hp_boss=hp_boss-(random_range(0.2,0.4));
	else {
		hp_boss=hp_boss-(random_range(1.7,2.4));
		damage=damage + random_range(1.9,2.4);
		respawnWing+=1;
		if(damage>=10){ //little cooldown to the flash for not being too...flashy i guess
		flag_hit=1;
		damage=0;
		}
	}
}
audio_sound_pitch(snd_enHit,random_range(1.5,1.8));
audio_play_sound(snd_enHit,1,false);
instance_change(obj_blast,1);
