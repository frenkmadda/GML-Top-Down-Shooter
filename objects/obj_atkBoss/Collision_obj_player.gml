with(other){
	if(obj_player.immune==false){
	obj_player.player_hp-=random_range(4.4,5.9);
	obj_player.immune=true;
	obj_player.immuneCoolDown=30;
	obj_player.flag_hit=1;
}
	
		
}

audio_sound_pitch(snd_enHit,random_range(1.0,1.2));
audio_play_sound(snd_enHit,1,false);
instance_change(obj_blast,1);
