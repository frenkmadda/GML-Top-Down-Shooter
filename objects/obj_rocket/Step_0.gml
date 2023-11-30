position_destroy(-386,y);

//Flash when hit by enemies
if(flag_hit>0){
	flashAlpha=1;
	flag_hit--;
}

if (flashAlpha>0)
	flashAlpha-=0.05;
	
//destroy
if(rocket_hp<=0){
	for (i = 0; i < 8; i += 1){
	var obj=instance_create_layer(obj_rocket.x,obj_rocket.y,"BulletsLayer",obj_atkRocket);
	obj.direction = 45 * i; 
	obj.speed=12;
}
	instance_change(obj_explosion,1);
}

