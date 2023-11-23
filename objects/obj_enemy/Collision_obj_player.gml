if(obj_player.immune==false){
	obj_player.player_hp=obj_player.player_hp-atk;
	obj_player.immune=true;
	obj_player.immuneCoolDown=50;
	obj_player.flag_hit=1;
}

var dir=direction;
direction=dir + 180
speed=3.5;
cooldownMov=60;


audio_sound_pitch(snd_hit,random_range(0.8,1.2));
if(cooldown<=0){
audio_play_sound(snd_hit,1,false);
cooldown=60;
}


