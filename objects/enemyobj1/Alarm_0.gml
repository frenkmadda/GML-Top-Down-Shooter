/// @description Insert description here
// You can write your code in this editor
var time;
var inst=instance_create_layer(x,y,"Instances",enbullobj);
inst.direction=image_angle-90;
audio_play_sound(shoot,2,false);
time=choose(1,2);
alarm[0]=time*60;