/// @description Insert description here
// You can write your code in this editor

if(room==game){
	audio_stop_all();
	audio_play_sound(Startsound,2,false);
	audio_play_sound(game1,2,true);
	repeat(6){
		xx=choose(irandom_range(0,room_width*0.3),irandom_range(room_width*0.7,room_width));
		yy=choose(irandom_range(0,room_height*0.3),irandom_range(room_height*0.7,room_height));
		instance_create_layer(xx,yy,"Instances",rockobj);
	}
	alarm[0]=60;
}
if(room==level2){
	audio_stop_all();
	audio_play_sound(Startsound,2,false);
	audio_play_sound(level2sound,2,true);
	repeat(3){
		xx=choose(irandom_range(0,room_width*0.3),irandom_range(room_width*0.7,room_width));
		yy=choose(irandom_range(0,room_height*0.3),irandom_range(room_height*0.7,room_height));
		instance_create_layer(xx,yy,"Instances",enemyobj1);
	}
	alarm[0]=30;
}

else if(room==start){
	audio_stop_all();
	audio_play_sound(Menu,2,true);
}
else if(room==gameover){
	audio_stop_all();
	audio_play_sound(explosion4,2,false);
	audio_play_sound(game_over,2,false);
}
	