/// @description Insert description here
// You can write your code in this editor

lives-=1;
if(score>=20)
	score-=20
else
	score=0;
instance_destroy();
audio_play_sound(explosion4,2,false);
audio_play_sound(explosion4,2,false);
instance_create_layer(x,y,"Instances",explosion);
repeat(50){
		instance_create_layer(x,y,"Instances",spraggle);	
	}
if(object0 == instance_destroy()){
	if(lives>=0){
		instance_create_layer(room_width/2,room_height/2,"Instances",object0);
		instance_create_layer(room_width/2,room_height/2,"Instances",shield);
		
	}		
}