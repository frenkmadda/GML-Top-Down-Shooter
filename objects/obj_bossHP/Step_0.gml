follow_hp=lerp(follow_hp,obj_boss.hp_boss,0.02);

if(obj_boss.hp_boss<=0){
	deathcooldown-=1;
	if(deathcooldown<=0)
		room_goto(rm_win);
}
