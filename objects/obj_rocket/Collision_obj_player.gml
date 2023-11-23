instance_change(obj_explosion,1);
if(obj_player.immune==false){
	obj_player.player_hp=obj_player.player_hp-random_range(18,22);
	obj_player.immune=true;
	obj_player.immuneCoolDown=50;
	obj_player.flag_hit=1;	
}
