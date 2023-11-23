//spawn
image_alpha = min(image_alpha+0.01,1);

//Attack Pattern
if(moveChoice==1 && cooldown<1 && atk_cooldown>200 && hp_boss>=0) {
	instance_create_layer(obj_boss.x,obj_boss.y,"BulletsLayer",obj_atkBoss);
	cooldown=5;
}

if(moveChoice==2 && cooldown<1 && atk_cooldown>200 && hp_boss>=0) {
	instance_create_layer(obj_boss.x,obj_boss.y,"BulletsLayer",obj_explosion);
	instance_create_layer(obj_boss.x,obj_boss.y,"BulletsLayer",obj_rocket);
	cooldown=200;
}

cooldown=cooldown-1;
atk_cooldown-=1;


//DangerMode and phaseswap

if(!instance_exists(obj_wing1)){ //See if the wings are still there and if not so,the boss enter in dangerMode
	if(!instance_exists(obj_wing2)){
		if(flag==0){
		audio_sound_pitch(snd_ohno,1.2);
		audio_play_sound(snd_ohno,1,false);
		flag=1;
		}
		image_xscale=min(image_xscale+0.001,initial_xscale+0.3);
		sprite_index=spr_bossDanger;
		if(respawnWing>=130){ //after several hits the boss respawns it's wings
			image_xscale=initial_xscale;
			sprite_index=spr_boss;
			audio_play_sound(snd_laugh,1,false);
			audio_sound_pitch(snd_shine,0.6);
			audio_play_sound(snd_shine,1,false);
			instance_create_layer(x,y,"Instances",obj_light);
			var obj =instance_create_layer(wing1_x,wing1_y,"Enemy_Layer",obj_wing1);
			obj.image_angle=wingAngle;
			obj=instance_create_layer(wing2_x,wing2_y,"Enemy_Layer",obj_wing2);
			obj.image_angle=wingAngle;
			respawnWing=0;
			flag=0;
		}
	}
}

if(!instance_exists(obj_wing2)){
	if(!instance_exists(obj_wing1)){
		if(flag==0){
		audio_sound_pitch(snd_ohno,1.2);
		audio_play_sound(snd_ohno,1,false);
		flag=1;
		}
		image_yscale=min(image_yscale+0.001,initial_yscale+0.3);
		sprite_index=spr_bossDanger;
		if(respawnWing>=130){ //after several hits the boss respawns it's wings
			image_xscale=initial_xscale; //the boss return to it's initial dimensions and sprite
			sprite_index=spr_boss;
			audio_play_sound(snd_laugh,1,false);
			audio_sound_pitch(snd_shine,0.6); 
			audio_play_sound(snd_shine,1,false);
			instance_create_layer(x,y,"Instances",obj_light); // a light appear on the spawnpoint
			var obj =instance_create_layer(wing1_x,wing1_y,"Enemy_Layer",obj_wing1);
			obj.image_angle=wingAngle;
			obj=instance_create_layer(wing2_x,wing2_y,"Enemy_Layer",obj_wing2);
			obj.image_angle=wingAngle;
			respawnWing=0;
			flag=0;
		}
	}
}

//flash when hit
if(flag_hit>0){
	flashAlpha=1;
	flag_hit--;
}
if (flashAlpha>0)
	flashAlpha-=0.05;




