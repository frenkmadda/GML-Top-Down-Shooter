var cameraX = camera_get_view_x(view_camera[0]);
var cameraY = camera_get_view_y(view_camera[0]);
var cameraW= camera_get_view_width(view_camera[0]);

if(instance_exists(obj_boss)){
draw_set_font(fnt_score); 
if(obj_boss.hp_boss<=0){
	draw_text(cameraX+cameraW/2,cameraY+25,"0");
	draw_text(cameraX+cameraW/2-80,cameraY+55,"--Martin McShip--");
}
	
else{
	draw_text(cameraX+cameraW/2,cameraY+25,string(obj_boss.hp_boss));
	draw_text(cameraX+cameraW/2-80,cameraY+55,"--Martin McShip--");
	}
var pc=(obj_boss.hp_boss/obj_boss.max_hpBoss)*100;
var pc_follow=(follow_hp/obj_boss.max_hpBoss)*100;
draw_healthbar(cameraX+cameraW/2-500,100,(cameraX+cameraW/2)+500,85, pc_follow, c_black, c_orange, c_orange, 0, true, true);
draw_healthbar(cameraX+cameraW/2-500,100,(cameraX+cameraW/2)+500,85, pc, c_black, c_red, c_red, 0, 0, 0);
}

//Phase swap
if(obj_boss.hp_boss<=0){
	obj_boss.sprite_index=spr_bossDanger;
	if(flag_sound==0){
		audio_sound_pitch(snd_bossDeath,1.3);
		audio_play_sound(snd_bossDeath,1,false);
		flag_sound++;
	}
	if(numExpl>0 && cooldown<1){
	instance_create_layer(obj_boss.x+random_range(70,50),obj_boss.y + random_range(150,220),"Instances",obj_explosion);
	numExpl--;
	cooldown=30;
	obj_boss.image_alpha-=0.5;
	if(instance_exists(obj_wing1))
		obj_wing1.image_alpha-=0.5;
	if(instance_exists(obj_wing2))	
		obj_wing2.image_alpha-=0.5;
	}
	cooldown--;
}

