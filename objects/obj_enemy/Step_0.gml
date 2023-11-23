if (instance_exists(obj_player) && cooldownMov<=0)
	move_towards_point(obj_player.x,obj_player.y,spd);

image_angle=direction; 
cooldown=cooldown-1;
cooldownMov-=1;
if(hp<=0) 
	sprite_index=spr_enDeath;


//flash when hit by enemies
if(flag_hit>0){
	flashAlpha=1;
	flag_hit--;
}

if (flashAlpha>0)
	flashAlpha-=0.05;

