/// @description Insert description here
// You can write your code in this editor
instance_destroy();
score+=50;
enemies-=1
audio_play_sound(explosion,2,false);
instance_create_layer(x,y,"Instances",explosion);
	repeat(50){
		instance_create_layer(x,y,"Instances",spraggle);	
	}