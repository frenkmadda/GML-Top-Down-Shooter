follow_hp=lerp(follow_hp,obj_player.player_hp,0.02);

if(obj_player.player_hp<=50 && warning == 0){
	audio_play_sound(snd_warning,1,true);
	warning=1;	
}
if(warning==1 && obj_player.player_hp>50){
	audio_stop_sound(snd_warning);
	warning=0;	
}