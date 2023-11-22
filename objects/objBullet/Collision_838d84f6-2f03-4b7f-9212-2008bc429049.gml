/// @description Insert description here
// You can write your code in this editor

instance_destroy();
audio_play_sound(rock3,2,false);

with(other){
	instance_destroy();
	if(sprite_index==rock){
		score+=10;
		repeat(2){
		var newRock= instance_create_layer(x,y,"Instances",rockobj);
		newRock.sprite_index=medrock;
		}
	}
	else if(sprite_index==medrock){
		score+=5;
		repeat(2){
		var newRock= instance_create_layer(x,y,"Instances",rockobj);
		newRock.sprite_index=bigrock;
		}
	}
	else if(sprite_index==bigrock){
			score+=2;
		}
	instance_create_layer(x,y,"Instances",explosion);
	repeat(50){
		instance_create_layer(x,y,"Instances",spraggle);	
	}
}