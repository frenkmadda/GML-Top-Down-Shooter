//Movement input
//keyboard controls
if (keyboard_check(ord("D"))) {
	x=x+3;
	controller=0;
}
if (keyboard_check(ord("A"))){
	x=x-3;
	controller=0;
}
if (keyboard_check(ord("W"))){
	y=y-3;
	controller=0;
}
if (keyboard_check(ord("S"))){
	y=y+3;
	controller=0;
}

//gamepad controls
if(gamepad_axis_value(0,gp_axislh)>0){
	x=x+3;
	controller=1;
}
if(gamepad_axis_value(0,gp_axislh)<0){
	x=x-3;
	controller=1;
}
if(gamepad_axis_value(0,gp_axislv)<0){
	y=y-3
	controller=1;
}
if(gamepad_axis_value(0,gp_axislv)>0){
	y=y+3
	controller=1;
}

if(controller==0)
image_angle = point_direction(x,y,mouse_x,mouse_y);
else{
var controllerH= gamepad_axis_value(0,gp_axisrh);
var controllerV= gamepad_axis_value(0,gp_axisrv);
if(abs(controllerH)>0.2) || (abs(controllerV)>0.2)
	controllerangle= point_direction(0,0,controllerH,controllerV);
image_angle=controllerangle;	
}


//Shoot system
if((mouse_check_button(mb_left) || gamepad_button_check(0,gp_shoulderrb)) && cooldown<1) {
	instance_create_layer(x,y,"BulletsLayer",obj_bullet);
	if(player_hp>=50)
		cooldown = 7;
	else
		cooldown= 4;
}

//heal up
if(gamepad_button_check(0,gp_face1) || keyboard_check(ord("E"))){
	if(potions>0){
		if(player_hp!=obj_healthbar.max_hp && potionStop<1){
			player_hp+=30;
			potions-=1;
			potionStop=60;
			audio_play_sound(snd_shine,1,false);
			if(player_hp>obj_healthbar.max_hp)
				player_hp=obj_healthbar.max_hp;
		}
	}
		
}
potionStop=potionStop-1;
cooldown=cooldown-1;
//Temporary invicibility
if(immune) immuneCoolDown=immuneCoolDown-1;
if(immuneCoolDown<=0) immune=false;


//states changes
if(player_hp<=50)
	sprite_index=sprites_array[states.warning];	
else
	sprite_index=sprites_array[states.normal];


//death
if(player_hp <= 0){
	audio_play_sound(snd_explosion,1,false);
	instance_destroy(obj_player);
	room_goto(rm_explosion);		
}

//Flash when hit by enemies
if(flag_hit>0){
	flashAlpha=1;
	flag_hit--;
}

if (flashAlpha>0)
	flashAlpha-=0.05;
	
//boundary warp
move_wrap(true,true,sprite_width/2);