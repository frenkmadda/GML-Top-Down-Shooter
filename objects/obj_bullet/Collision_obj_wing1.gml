with(other){
	wing1_hp= wing1_hp - random_range(1.9,2.4);	
	damage=damage + random_range(1.9,2.4);
		if(damage>=10){  //little cooldown to the flash for not being too...flashy i guess
		flag_hit=1;
		damage=0;
		}
}
	
with(obj_boss)
	hp_boss=hp_boss-random_range(0.05,0.10);
	
audio_sound_pitch(snd_enHit,random_range(1.0,1.2));
audio_play_sound(snd_enHit,1,false);
instance_change(obj_blast,1);